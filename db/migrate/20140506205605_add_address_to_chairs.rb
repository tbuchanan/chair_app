class AddAddressToChairs < ActiveRecord::Migration
  # migration to add address for geocode gem & google API integration
  def change
    add_column :chairs, :address, :string
  end
end
