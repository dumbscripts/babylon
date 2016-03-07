require 'capybara/dsl'
require 'rspec/expectations'

class HtmlElement < Capybara::Node::Element

	include Capybara::DSL
  include RSpec::Expectations

  	def initialize(locator, *inFrame)  		
  		@frame = inFrame
      @locator = locator
      @inDefaultFrame = nil
  	end

    # Find element method takes care of switching between the frames
    def find_element
      if !@frame.empty?      
        @frame.each do |iframe|
          execute_in_frame(iframe)
        end
      elsif !@inDefaultFrame
        switch_to_default
      end
      page.find(@locator)  
    end

    def all
      page.all(@locator)
    end

    def click
      find_element.click
    end

    def send_keys(chars)
      find_element.send_keys(chars)
    end

    def set(chars)
      find_element.set(chars)
    end

    def text
      find_element.text
    end

    def value
      find_element.value
    end

    def visible?
      find_element.visible?
    end

    def checked?
      find_element.checked?
    end

    def disabled?
      find_element.disabled?
    end

    def double_click?
      find_element.double_click?
    end

    def hover
      find_element.hover
    end

    def native
      find_element.native
    end

    def selected
      find_element.selected
    end

    def unselect_option
      find_element.unselect_option
    end

    def attach_file(path)
      page.attach_file(@locator, path)
    end

    def execute_in_frame(iframe)
      page.driver.browser.switch_to.frame(iframe)
      @inDefaultFrame = false
    end

    def switch_to_default
      page.driver.browser.switch_to.default_content
      @inDefaultFrame = true
    end

   

end


puts HtmlElement.instance_methods

