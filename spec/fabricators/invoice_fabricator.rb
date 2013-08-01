Fabricator(:invoice) do
  invoice_number {rand(9999999999)}
  broker_name { Faker::Name.first_name }
  broker_address { Faker::Address.street_name }
  broker_address2 { Faker::Address.secondary_address}
  broker_city { Faker::Address.city}
  broker_state { Faker::Address.state_abbr}
  broker_zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s[0...5] }
  broker_phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  broker_fax { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  broker_motor_carrier_number {rand(9999)}
  load_number {rand(999999999)}
  price {rand(99999)}
  pick_up_location_city { Faker::Address.city}
  pick_up_location_state { Faker::Address.state_abbr}
  delivery_location_city { Faker::Address.city}
  delivery_location_state { Faker::Address.state_abbr}
  pick_up_date { Date.today - rand(100).days}
  deliver_date { Date.today - rand(90).days}
  paid_status { 'unpaid' }
  paid_date{ Date.today + rand(10).days}
  load_conformation {rand(10000)}
  lumper_fee {rand(10000)}
  detention_fee {rand(10000)}
  unloading_fee {rand(10000)}
  reconsignment_fee {rand(10000)}
  after_build do |i|
    i.account ||= Account.last || Fabricate(:account)
    i.broker ||= Broker.last || Fabricate(:broker)
    i.shipment ||= Shipment.last || Fabricate(:shipment)
  end  
end

