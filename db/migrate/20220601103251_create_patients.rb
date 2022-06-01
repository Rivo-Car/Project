class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.column :name, :string, :limit =>40, :null => false
      t.column :title, :category, :null => false
      t.column :patient_id, :integer
      t.column :created_at, :timestamp
    end
  end
end
