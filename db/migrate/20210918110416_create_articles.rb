class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :nutritionist, index: true
      
      t.timestamps
    end
  end
end
