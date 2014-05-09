class AddPicToChairs < ActiveRecord::Migration
  
  # migration for uploading via paperclip gem to AWS(S3) file server
	def self.up
   	add_attachment :chairs, :image
  	end

  	def self.down
   	remove_attachment :chairs, :image
  	end

end