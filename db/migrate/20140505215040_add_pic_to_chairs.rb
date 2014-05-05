class AddPicToChairs < ActiveRecord::Migration
  
	def self.up
   	add_attachment :chairs, :image
  	end

  	def self.down
   	remove_attachment :chairs, :image
  	end

end