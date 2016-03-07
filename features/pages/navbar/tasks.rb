

class Tasks

	def initialize
		@myTasks = HtmlElement.new("#nav-bar-TASK-TASK-VIEWSUM")
		@dashboard = HtmlElement.new("#nav-bar-TASK-TASK-DASHBOARD")
	end
	
	def click_my_tasks
		@myTasks.click
	end

	def click_dashboard
		@dashboard.click
	end

end