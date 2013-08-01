Fabricator(:lead) do
  first_name {Faker::Name.first_name }
  last_name {Faker::Name.last_name }
  email {Faker::Internet.email}
  message { Faker::Lorem.paragraph }
  phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  address { Faker::Address.street_name }
  address2 { Faker::Address.secondary_address}
  city { Faker::Address.city}
  state { Faker::Address.state_abbr}
  zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s[0...5] }
  status {'new'}
  remoteip {Faker::Internet.ip_v6_address}
  newsletter {false}
  conversion_date {''}
end

