Fabricator(:broker) do
  name { Faker::Name.first_name }
  phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  address { Faker::Address.street_name }
  address2 { Faker::Address.secondary_address}
  city { Faker::Address.city}
  state { Faker::Address.state_abbr}
  zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s[0...5] }
  fax { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  email { Faker::Internet.email}
  website { Faker::Internet.url}
  motor_carrier_number {rand(999999999)}
  emergency_number { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  contact_name { Faker::Name.first_name + ' ' + Faker::Name.last_name }
  contact_extention { rand(99999) }

  after_build do |b|
    b.account ||= Account.last || Fabricate(:account)
  end
end

