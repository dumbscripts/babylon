

class LoginPage

	def initialize
		@txtUsername = HtmlElement.new("#userName")
		@txtPassword = HtmlElement.new("#password")
		@btnLogin = HtmlElement.new("#login .uiButton-label")
	end

	def login_with_valid_creds(username, password)
		@txtUsername.send_keys(username)
		@txtPassword.send_keys(password)
		@btnLogin.click
	end

	#find("#userName").click_button("locator")

end