class Addtochairs < ActiveRecord::Migration
  def change
  	add_column :chairs, :longitude, :float
  	add_column :chairs, :latitude, :float
  end
end
