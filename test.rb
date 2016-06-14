class DummyClass

    def self.class_method
			self
    end
end

#dummy_class = DummyClass.new()
puts DummyClass.class_method  == DummyClass