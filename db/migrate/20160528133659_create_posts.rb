class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :title_color
      t.string :title_font_style
      t.string :title_font_size
      t.string :body_color
      t.string :body_font_size
      t.string :body_font_style

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
