class Alimentos
   
   attr_reader :nombre, :proteinas, :glucidos, :lipidos
	
   def initialize(name,protein,glucids,lipids)
      @nombre = name
      @proteinas = protein
      @glucidos = glucids
      @lipidos = lipids
   end
   
   def to_s
      "Nombre del alimento: #{@nombre}  Proteínas: #{@proteinas}g  Glúcidos: #{@glucidos}g  Lípidos: #{@lipidos}g"
   end
   
   def valor_energetico
      @glucidos*4 + @lipidos*9 + @proteinas*4
   end
   
end

class Grupo < Alimentos
   
   attr_reader :grupo
   
   def initialize(group,name,protein,glucids,lipids)
      super(name,protein,glucids,lipids)
      @grupo = group
   end
   
   def to_s
      "Grupo: #{@grupo} alimento: #{nombre} Proteínas: #{proteinas}g Glúcidos: #{glucidos}g Lípidos: #{lipidos}g"
   end
   
end
