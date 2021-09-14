class AddNutritionistToPatients < ActiveRecord::Migration[6.1]
  def change
    add_reference :patients, :nutritionist, null: true, foreign_key: true
  end
end
