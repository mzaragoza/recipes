Fabricator(:plan) do
  name {Faker::Lorem.words.join(' ') }
  slug {Faker::Lorem.words.join(' ')}
  featured {false}
  active {true}
  licenses {rand(100)}
  yearly_price {rand(100)*10}
  monthy_price {rand(100)}
end

