class Post
  class << self
    def print_author
      puts "The author of all posts is Jimmy"
    end
  end
end

Post.print_author

class Post
  
    def self.print_author
      puts "The author of all posts is Jimmy"
    end
  
end

Post.print_author

class DummyClass

    def self.class_method
			self
    end
end

#dummy_class = DummyClass.new()
puts DummyClass.class_method  == DummyClass

# Al usar la palabra reservada self, nos estamos refiriendo al mismo objeto, es decir,
# 	sobre que objeto estamos posicionados. Si corremos un ejemplo globalmente, nuestro objeto seria main
# 	(al cual nos estariamos refiriendo con la palabra self,sin embargo si lo corremos desde una clase,
#   nuestro objeto al que ahora nos estariamos refiriendo, seria nuestra clase

