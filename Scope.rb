

$global_var = "This is a global variable"
CONSTANT = 3.1416 

def global_var 
	$global_var
end

def global_var=(new_global_var)
	$global_var = new_global_var
end

def CONSTANT
	CONSTANT
end

#def CONSTANT=(NEW_CONSTANT)
#	CONSTANT = NEW_CONSTANT
#end



class DummyClass

	@@class_variable = "This is a class variable"

	def initialize
		@local_var #= "Aldo"  # Esta variable pertenece a la instacia creada
  end

	def return_my_local_var
		 @local_var = "prueba" # Esta variable apesar de que tiene el mismo nombre, es diferente y pertenece al contexto del metodo
	end

	# Este es un getter
  def instance_var
    @instance_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end


  def class_variable
  	@@class_variable
  end

   def class_variable=(new_class_variable)
  	@@class_variable = new_class_variable
  end


	def global_var 
		$global_var
	end
	
	def global_var=(new_global_var)
		$global_var = new_global_var
	end
	
	def CONSTANT
		CONSTANT
	end
	
	# def CONSTANT=(NEW_CONSTANT)
	# 	CONSTANT = NEW_CONSTANT
	# end



end

dummy_class = DummyClass.new
dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

p dummy_class.return_my_local_var #Regresa el valor de la variable dentro dle metodo
#puts return_my_local_var


p dummy_class.instance_var=("Bar")
p dummy_class.instance_var   =    "Baz"
p dummy_class.instance_var

p dummy_1.class_variable
p dummy_2.class_variable
dummy_1.class_variable = "New value for the class variable"
p dummy_1.class_variable
p dummy_2.class_variable

p $global_var
p CONSTANT
$global_var = "New global variable"
p $global_var
p dummy_1.global_var
p dummy_1.CONSTANT
dummy_1.global_var = "modifica la variable global mediante clase"
p $global_var
p dummy_1.global_var
p global_var




# Puedes definir un setter para la constante?
# R: No no se puede definir un setter para una constante, ya que es una constante
# Llama los getters del alcance global de las dos variables
# Modifica el valor de la variable global dentro del alcance global
# Crea una instancia de DummyClass guardándola como dummy_1
# Llama los getters por medio de esta instancia de las dos variable
# Modifica por medio de esta instancia la variable global y luego llama su getter global
