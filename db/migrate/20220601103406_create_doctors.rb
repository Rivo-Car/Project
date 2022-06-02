class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.column :name, :string, :limit =>40, :null => false
      t.column :title, :string, :null => false
      t.column :doctor_id, :integer
      t.column :created_at, :timestamp, default: Time.now
    end
  end

  def self.down
    drop_table :doctors
  end
end
