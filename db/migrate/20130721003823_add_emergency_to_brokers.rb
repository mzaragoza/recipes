class AddEmergencyToBrokers < ActiveRecord::Migration
  def self.up
    add_column :brokers, :emergency_number, :string, :default => ''
    add_column :brokers, :contact_name, :string, :default => ''
    add_column :brokers, :contact_extention, :string, :default => ''

    add_column :trucks, :annual_inspection_pdf, :string, :default => ''
    add_column :trucks, :insurance_pdf, :string, :default => ''
    add_column :trucks, :registration_pdf, :string, :default => ''

    add_column :trailers, :annual_inspection_pdf, :string, :default => ''
    add_column :trailers, :insurance_pdf, :string, :default => ''
    add_column :trailers, :registration_pdf, :string, :default => ''

    add_column :drivers, :medical_long_form_pdf, :string, :default => ''

    add_column :receipts, :receipt_pdf, :string, :default => ''
  end
  def self.down
    remove_column :brokers, :emergency_number
    remove_column :brokers, :contact_name
    remove_column :brokers, :contact_extention

    remove_column :trucks, :annual_inspection_pdf
    remove_column :trucks, :insurance_pdf
    remove_column :trucks, :registration_pdf

    remove_column :trailers, :annual_inspection_pdf
    remove_column :trailers, :insurance_pdf
    remove_column :trailers, :registration_pdf

    remove_column :drivers, :medical_long_form_pdf

    remove_column :receipts, :receipt_pdf
  end
end
