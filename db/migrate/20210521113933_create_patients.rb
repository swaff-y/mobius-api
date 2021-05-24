class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.boolean :consent
      t.string :first_name
      t.string :last_name
      t.string :referring_clinician
      t.string :mobile_number
      t.date :procedure_start_date
      t.string :program_status
      t.string :response_status
      t.boolean :return_patient
      t.integer :team_member_id
      t.string :status

      t.timestamps
    end
  end
end
