class AddAppointmentTable < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :patient, index: true
      t.references :nutritionist, index: true
      t.datetime :date
      t.text :content
      t.float :weight
      t.float :height
      t.float :body_fat
      t.float :muscle_mass
      t.float :visceral_fat
      t.float :BMI
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
