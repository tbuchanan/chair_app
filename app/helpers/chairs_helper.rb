module ChairsHelper

	def check_image
    if image.nil?
      flash[:error] = "Please upload an image."
      redirect_to chair_path(params[:id])
    end
  end

end
