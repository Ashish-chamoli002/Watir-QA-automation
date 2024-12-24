Given('I am on the login page') do
  @page = Pages::LoginPage.new(@browser)
  @page.navigate_to
end

Given('A user exists') do
  @user = FactoryBot.create(:user)
end

When('I log in with valid credentials') do
  @page.login("Admin", "admin123")
end

When('I log in with invalid credentials') do
  @page.login("Admin", "InvalidPassword")
end

Then('I should see login error') do
  expect(@page.invalid_credential?).to be true
end

Then('I should see the dashboard') do
  expect(@page.title).to eq('OrangeHRM')
end