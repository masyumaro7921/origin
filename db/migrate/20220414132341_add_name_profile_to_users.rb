class AddNameProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :string
    add_column :users, :game_type, :text
    add_column :users, :game, :text
    add_column :users, :image, :string
  end
end
