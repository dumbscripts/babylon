

  module WorldHelpers
    
    def login
      @login ||= LoginPage.new
    end

    def navbar
    	@navbar ||= NavBar.new
    end

    def document_register
    	@document_register ||= DocumentsRegister.new
    end
    
  end

  World(WorldHelpers)