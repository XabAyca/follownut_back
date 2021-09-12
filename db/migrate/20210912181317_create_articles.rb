class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :nutritionist_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
