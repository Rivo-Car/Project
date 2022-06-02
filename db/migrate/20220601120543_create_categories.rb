class CreateCategories < ActiveRecord::Migration[7.0]
  def self.up
    create_table :categories do |t|
      t.column :title, :string, :limit =>40, :null => false
      t.column :created_at, :timestamp, :null => false
    end

    Category.create :title => "Pediatrics"
    Category.create :title => "Surgery"
    Category.create :title => "Cardiology"
    Category.create :title => "Ontology"
    Category.create :title => "Veterinary"
  end

  

  def self.down
    drop_table :categories
  end
end
