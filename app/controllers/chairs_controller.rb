class ChairsController < ApplicationController
  before_filter :authenticate_user!
	
  def index
    if user_signed_in?
		  @chairs = Chair.all
    else
      redirect_to "/home"
    end
	end

	def show
		@chair = Chair.find(params[:id])
		#should show all available items
	end

	def new
		@chair = Chair.new
	end

	def create 

		@chair = current_user.chairs.create chair_params
    # binding.pry
		redirect_to chairs_path
	end

	def edit
    begin
      @chair = current_user.chairs.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:notice] = "Not Authorized!"
      redirect_to chairs_path
    end
  end

  def update
    @chair = current_user.chairs.find(params[:id])
    if @chair.nil?
      render :file => "#{Rails.root}/public/422", :layout => false, :status => 422
    end
    #not sure what attributes is doing here
    @chair.update_attributes chair_params 
    redirect_to(@chair)
    # end
  end

  def destroy
    begin
      @chair = current_user.chairs.find(params[:id])
      @chair.destroy
      redirect_to(new_chair_path)
    rescue 
      render :file => "#{Rails.root}/public/422", :layout => false, :status => 422
    end
  end

private
   def chair_params
   	params.require(:chair).permit(:name, :description, :address, :image, :longitude, :latitude)
   end
end
