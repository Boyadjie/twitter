class ChangeUserToUserIdInUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :tweets do |t|
      t.rename :user, :user_id 
    end
  end
end
