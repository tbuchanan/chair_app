class AddUserReferencesToChairs < ActiveRecord::Migration
  def change
    add_reference :chairs, :user, index: true
  end
end
