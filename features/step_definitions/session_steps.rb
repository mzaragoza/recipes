Given 'I am signed in as an admin' do
  @admin = Fabricate(:admin)
  step %(I go to the admin sign in page)
  step %(I fill in "admin_email" with "#{@admin.email}")
  step %(I fill in "admin_password" with "#{@admin.password}")
  step %(I press "Login")
end

Given 'I am signed in as an user' do
  @user = Fabricate(:user)
  step %(I go to the user sign in page)
  step %(I fill in "user_email" with "#{@user.email}")
  step %(I fill in "user_password" with "#{@user.password}")
  step %(I press "Login")
end

Given 'I am signed in as an owner' do
  @user = Fabricate(:user, :is_owner => true)
  step %(I go to the user sign in page)
  step %(I fill in "user_email" with "#{@user.email}")
  step %(I fill in "user_password" with "#{@user.password}")
  step %(I press "Login")
end
