class CreateLogbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :logbooks do |t|

      t.string :title
      t.text :content
      t.boolean :is_shared
      t.integer :patient_id
      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
