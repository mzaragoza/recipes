Fabricator(:user) do
  email                   { Faker::Internet.email}
  password                {'password'}
  password_confirmation   {'password'}
  first_name              {Faker::Name.first_name}
  last_name               {Faker::Name.last_name}
  active                  {true}
  phone                   { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s[0...10] }
  #photo                   {
  #  ActionDispatch::Http::UploadedFile.new(
  #    :tempfile => File.new(Rails.root.join("app/assets/images/admin.png")),
  #    :filename => File.basename(File.new(Rails.root.join("app/assets/images/admin.png")))
  #  )
  #}
  after_build do |u|
    u.account ||= Account.last || Fabricate(:account)
  end
end

