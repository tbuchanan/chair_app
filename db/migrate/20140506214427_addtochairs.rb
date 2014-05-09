class Addtochairs < ActiveRecord::Migration
  # had to add long & lat for geocode conversion from user address
  def change
  	add_column :chairs, :longitude, :float
  	add_column :chairs, :latitude, :float
  end
end
