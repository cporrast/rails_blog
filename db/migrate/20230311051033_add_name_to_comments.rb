class AddNameToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :name, :string, null: false
  end
end
