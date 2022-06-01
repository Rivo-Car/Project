class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.column :title, :string, :limit =>40, :null => false
      t.column :category_id, :integer
      t.column :created_at, :timestamp
    end
  end
end
