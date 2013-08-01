Fabricator(:subscription) do
  price {rand(100)}
  name {Faker::Lorem.sentence}
  slug {Faker::Lorem.sentence}
  licenses {rand(100)}
  after_build do |s|
    s.account ||= Account.last # || Fabricate(:account)
    s.plan ||= Plan.last || Fabricate(:plan)
  end
end

