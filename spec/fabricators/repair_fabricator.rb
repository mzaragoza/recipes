Fabricator(:repair) do
  service_provider_name { Faker::Lorem.words.join(' ') }
  service_provider_address { Faker::Address.street_name }
  service_provider_address2 { Faker::Address.secondary_address}
  service_provider_city { Faker::Address.city}
  service_provider_state { Faker::Address.state_abbr}
  service_provider_zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s }
  service_provider_fax { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s }
  service_provider_phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s }
  delivery_date {DateTime.now}
  return_date { DateTime.now + rand(30).days }
  payment_info {rand(30000) }
  invoice_date { DateTime.now + rand(30).days }
  invoice_number {rand(999999999999) }
  details { Faker::Lorem.sentences.join(' ') }
  labor {rand(1000)}
  parts {rand(100000)}
  tax {rand(10000)}

  after_build do |t|
    t.account ||= Account.last || Fabricate(:account)
    t.truck ||= Truck.last || Fabricate(:truck)
  end  
end

