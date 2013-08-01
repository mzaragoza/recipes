Fabricator(:trailer) do
  name { Faker::Name.first_name }
  length { '19' }
  width { '102' }
  height {52} 
  gross_vehicle_weight_rating {'3,856'}
  suspension {'Air Ride'}
  axle_capacity {4}
  wheels {'Steel' }
  tires {'22.5 '}
  vehicle_identification_number { (0...18).map{(65+rand(26)).chr}.join }
  vehicle_tag {(0...8).map{(65+rand(26)).chr}.join}
  annual_inspection {Date.today}
  vented {false}

  after_build do |t|
    t.account ||= Account.last || Fabricate(:account)
  end
  # trailer_id
end

