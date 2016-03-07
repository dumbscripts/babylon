

class PageFactory
	
		def self.get_instance(klass)
    	objs = ObjectSpace.each_object(klass)
    	objectsCount = objs.count
    	if objectsCount != 0
    		puts "- - - - - - - - - - - - - - - - - - - - - - - - - - "
	    	puts "Returning an existing instance for class - #{klass}"
	    	puts "- - - - - - - - - - - - - - - - - - - - - - - - - - "
	    	puts objs.to_a
	    	return objs.to_a[0]
    	else
	    	puts "- - - - - - - - - - - - - - - - - - - - - - - - - - "
	    	puts "Creating a new instance for class - #{klass}"
	    	puts "- - - - - - - - - - - - - - - - - - - - - - - - - - "
	    	return klass.new
   		end
	end

end
