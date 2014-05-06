class Addtochairs < ActiveRecord::Migration
  def change
  	add_table :chairs, :longitude, :float
  	add_table :chairs, :latitude, :float
  end
end
