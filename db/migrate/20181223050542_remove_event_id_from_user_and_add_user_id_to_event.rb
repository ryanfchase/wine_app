class RemoveEventIdFromUserAndAddUserIdToEvent < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :event
    add_reference :events, :user, foreign_key: true
  end
end
