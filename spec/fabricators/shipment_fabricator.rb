Fabricator(:shipment) do
  load_number {rand(999999)}
  price {rand(9999)}
  miles {rand(7000)}
  pick_up_location_address { Faker::Address.street_name }
  pick_up_location_address2 { Faker::Address.secondary_address}
  pick_up_location_city { Faker::Address.city}
  pick_up_location_state { Faker::Address.state_abbr}
  pick_up_location_zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s[0...5] }
  pick_up_location_phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  delivery_location_address { Faker::Address.street_name }
  delivery_location_address2 { Faker::Address.secondary_address}
  delivery_location_city { Faker::Address.city}
  delivery_location_state{ Faker::Address.state_abbr}
  delivery_location_zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s[0...5] }
  delivery_location_phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  number_of_stops {rand(10)}
  notes { Faker::Lorem.sentence }
  pick_up_date {DateTime.now}
  deliver_date {DateTime.now + rand(10).days }
  status {'New'}
  weight {rand(20000)}
  drivers_notes { Faker::Lorem.sentence }
  packing {'palets'}
  seal_number {rand(20000)}
  double_triple_trailers {false}
  passenger  {false}
  tank_vehicle {false}
  hazardous_materials {true}
  suspension {'air'}
  paid_status {'unpaid'}
  paid_date {DateTime.now + (rand(10).days + 1.month) }
  load_conformation {rand(2000000) * 12343}
  equipment_type {'Van - Min L=53'}
  size_of_trailer {'53'}
  pallets_pisses {rand(100)}
  pick_up_number {rand(999999999)}
  delivery_number {rand(999999999)}
  pick_up_earlier_time { DateTime.now }
  pick_up_lateest_time { DateTime.now + rand(24).hours }
  pick_up_appointment { false }
  delivery_earlier_time { DateTime.now + 5.days }
  delivery_lateest_time { DateTime.now + 6.days }
  delivery_appointment { false }
  trailer_type {'Any'}
  
  after_build do |s|
    s.account ||= Account.last || Fabricate(:account)
    s.broker ||= Broker.last || Fabricate(:broker)
    s.truck ||= Truck.last || Fabricate(:truck)
    s.trailer ||= Trailer.last || Fabricate(:trailer)
    s.testing ||= Trailer.last.id || Fabricate(:trailer).id
  end  
end

