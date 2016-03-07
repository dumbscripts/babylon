

class DocumentsRegister

	def initialize
		@tabTempFiles = HtmlElement.new("#CDUnregisteredList_tab" , "frameMain")
	end	

	def click_temp_files
	    @tabTempFiles.click
	end

end