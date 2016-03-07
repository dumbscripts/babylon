

Given(/^I am on the login page$/) do
	visit("/Logon")
end

Then(/^I enter valid credentials and click login$/) do
	login.login_with_valid_creds(DataHelper.get_user("REG_USERNAME"), DataHelper.get_password)
end