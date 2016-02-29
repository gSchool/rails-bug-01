def create_user(overrides = {})
  User.create!({
    name: 'Some User',
    email: 'user@example.com',
    password: 'password',
    password_confirmation: 'password'
  }.merge(overrides))
end

def login
  create_user email: "user@example.com"

  visit root_path
  click_on "Login"
  fill_in "Email", with: "user@example.com"
  fill_in "Password", with: "password"
  click_on "Login"
end