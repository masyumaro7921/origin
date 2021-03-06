class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :image
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
