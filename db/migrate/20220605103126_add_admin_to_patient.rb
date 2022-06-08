class AddAdminToPatient < ActiveRecord::Migration[7.0]
  def self.up
    add_column :patients, :admin, :boolean, :null => false , :default => false
    Patient.create! do |t|

        end
    end