
class Alimentos
	
   attr_reader :nombre, :proteinas, :glucidos, :lipidos
	
   def initialize(datos_alimento)
      @nombre = datos_alimento[0]
      @proteinas = datos_alimento[1]
      @glucidos = datos_alimento[2]
      @lipidos = datos_alimento[3]
   end
   
   def to_s
      "Nombre del alimento: #{@nombre}  Proteínas: #{@proteinas}g  Glúcidos: #{@glucidos}g  Lípidos: #{@lipidos}g"
   end
   
   def valor_energetico
      @glucidos*4 + @lipidos*9 + @proteinas*4
   end
   
end
