


Then(/^I navigate to (document register|temp files)$/) do |arg|
	case arg
	when "document register"
		navbar.documents.click_document_register
	when "temp files"
		navbar.documents.click_temp_files
	end
end

Then(/^I navigate to (my tasks|dashboard)$/) do |arg|
	case arg
	when "my tasks"
		navbar.tasks.click_my_tasks
	when "dashboard"
		navbar.tasks.click_dashboard
	end
	
end