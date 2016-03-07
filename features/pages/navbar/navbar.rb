
class NavBar

	def initialize
		@tabTasks = HtmlElement.new("#nav-bar-TASK")
		@tabdocuments = HtmlElement.new("#nav-bar-DOC")
	end

	def tasks
		@tabTasks.click
		PageFactory.get_instance(Tasks)
	end

	def documents
		@tabdocuments.click
		PageFactory.get_instance(Documents)
	end

end

