class AddUsernameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :usename, :string
  end
end
