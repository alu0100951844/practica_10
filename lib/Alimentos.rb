
class Alimentos
	
	attr_reader :nombre
	
	def initialize(datos_alimento)
	   @nombre = datos_alimento[0]
       @proteinas = datos_alimento[1]
       @glucidos = datos_alimento[2]
       @lipidos = datos_alimento[3]
    end
    
end