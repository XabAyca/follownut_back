class CreateAppointmentData < ActiveRecord::Migration[6.1]
  def change
    create_table :appointment_data do |t|
      t.datetime :date
      t.float :weight
      t.float :height
      t.float :body_fat
      t.float :muscle_mass
      t.float :visceral_fat
      t.float :BMI
      t.integer :patient_id
      t.integer :nutritionist_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
