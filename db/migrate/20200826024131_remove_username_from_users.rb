class RemoveUsernameFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :Username, :string
  end
end
