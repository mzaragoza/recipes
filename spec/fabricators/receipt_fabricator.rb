Fabricator(:receipt) do
  receipt_date { Date.today}
  fill_up_gallons {rand(100)}
  state {Faker::Address.state_abbr}
  cost {rand(100) *123.32}
  odometer {rand(1000000)}
  credit_card_number {rand(9999999999999999)}
  after_build do |r|
    r.account ||= Account.last || Fabricate(:account)
    r.truck ||= Truck.last || Fabricate(:truck)
    r.driver ||= Driver.last || Fabricate(:driver)
  end  
end

