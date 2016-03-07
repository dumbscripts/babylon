

class Documents

	def initialize
		@documentRegister = HtmlElement.new("#nav-bar-DOC-DOC-SEARCH")
		@tempFiles = HtmlElement.new("#nav-bar-DOC-DOC-UNREG")
	end

	def click_document_register
		@documentRegister.click
	end

	def click_temp_files
		@tempFiles.click
	end

end