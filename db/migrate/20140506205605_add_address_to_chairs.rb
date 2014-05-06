class AddAddressToChairs < ActiveRecord::Migration
  def change
    add_column :chairs, :address, :string
  end
end
