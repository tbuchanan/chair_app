class Chair < ActiveRecord::Base
	belongs_to :user

  validates :name, presence: true, length: {minimum: 3}
  validates :image, :presence => { :message => "Image is required" }
  validates :geocode, presence: true

  #for geocoder gem to use longitude and latitude
  geocoded_by :address
  after_validation :geocode

	   # This method associates the attribute ":avatar" with a file attachment
  	 has_attached_file :image, styles: {
   	  thumb: '100x100>',
   	  square: '200x200#',
   	  medium: '300x300>'
  	 }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end


 
