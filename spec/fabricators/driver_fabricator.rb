Fabricator(:driver) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  address { Faker::Address.street_name }
  address2 { Faker::Address.secondary_address}
  city { Faker::Address.city}
  state { Faker::Address.state_abbr}
  zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s[0...5] }
  cell { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  email { Faker::Internet.email}
  ssn {rand(999999999) }
  drivers_license {rand(999999999)}
  pay_rate {rand(1000)}
  hire_date {DateTime.now}
  active { true}
  bank_name {'Chase'}
  bank_account_number {rand(999999999)}
  bank_rauting_number {rand(999999999)}
  double_triple_trailers { true }
  passenger { false }
  tank_vehicle { true }
  hazardous_materials { true }
  combination_of_tank_vehicle_and_hazardous_materials { true }

  after_build do |d|
    d.account ||= Account.last || Fabricate(:account)
    d.truck ||= Truck.last || Fabricate(:truck)
  end
end

