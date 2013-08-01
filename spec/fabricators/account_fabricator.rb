Fabricator(:account) do
  name { Faker::Lorem.words.join(' ') }
  address { Faker::Address.street_name }
  address2 { Faker::Address.secondary_address}
  city { Faker::Address.city}
  state { Faker::Address.state_abbr}
  zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s[0...5] }
  phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  active { true }
  website {Faker::Internet.url}
  motor_carrier_number {rand(999999)}

  after_build do |a|
    a.subscription ||= Fabricate(:subscription)
  end
end

