class CreateLogbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :logbooks do |t|
      t.string :title
      t.text :content
      t.boolean :is_shared, :default => false
      t.references :patient, index: true
      
      t.timestamps
    end
  end
end
