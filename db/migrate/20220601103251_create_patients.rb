class CreatePatients < ActiveRecord::Migration[7.0]
  def self.up
    create_table :patients do |t|
      t.column :name, :string, :limit =>40, :null => false
      t.column :patient_id, :integer
      t.column :created_at, :timestamp, default: Time.now
    end
  end

  def self.down
    drop_table :patients
  end
end
