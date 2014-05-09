class AddUserReferencesToChairs < ActiveRecord::Migration
  # add referece relationship to give chair/s a user_id
  def change
    add_reference :chairs, :user, index: true
  end
end
