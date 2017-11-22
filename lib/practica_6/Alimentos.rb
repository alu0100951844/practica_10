# @author Yeray Expósito García
# La clase Alimentos permite almacenar los datos a nivel nutricional de un alimento, hallar su valor energético y compararlos.
class Alimentos
	
	include Comparable
	
   attr_reader :nombre, :proteinas, :glucidos, :lipidos
   attr_accessor :datos_IG
	
	# Metodo que permite declarar e inicializar las variables de instancia.
	#
	# @param name nombre del alimento
   # @param protein Contiene la cantidad de proteinas del alimento.
   # @param glucids Contiene la cantidad de glúcidos del alimento.
   # @param lipids Contiene la cantidad de lípidos del alimento.
   def initialize(name,protein,glucids,lipids)
      @nombre = name
      @proteinas = protein
      @glucidos = glucids
      @lipidos = lipids
   end
   
   # Método para calcular el Área incremental bajo la curva (AIBC) de un alimento o de la glucosa.
   #
   # @return Devuelve un vector con los resultados del AIBC de cada individuo.
   def aibc
      
      almacen=Array.new
      datos_IG.each do |x|
         almacen<<[]
         x.each_cons(2){ |val|  almacen.last<<((val[1]-x[0]+val[0]-x[0])/2)*5 } 
      end
      
      almacen.map{ |x| (x.reduce :+).round(2) }
   end
   
   
   # El método <=> se encarga de poner en práctica los operadores convencionales de comparación ( <, <=, ==, >=, y >) y el método between?
	#
	# @param other Representa al objeto situado a la derecha del operador en una comparación
	# @return Un valor numérico (-1,0,+1) dependiendo de si el receptor es menor, igual o mayor que el otro objeto.
   def <=>(other)
      valor_energetico <=> other.valor_energetico
   end
   
   # El método == ofrece una forma específica de aplicar el operador ==
	#
	# @param other Representa al objeto situado a la derecha del operador en una comparación
   def ==(other)
      @nombre == other.nombre
   end
   
   # El método to_s se encarga de formatear la salida cuando intentamos visualizar un objeto
	#
	# @return [string] En el que se representan las variables de instancia del objeto.
   def to_s
      "Nombre del alimento: #{@nombre}  Proteínas: #{@proteinas}g  Glúcidos: #{@glucidos}g  Lípidos: #{@lipidos}g"
   end
   
   # El método valor_energetico se encarga de calcular el valor energético de un alimento en función de de @proteinas, @glucidos y @lipidos.
	#
	# @return Un valor numérico que representa el valor energético del alimento.
   def valor_energetico
      @glucidos*4 + @lipidos*9 + @proteinas*4
   end
   
end

# @author Yeray Expósito García
# La clase Grupo < Alimentos permite clasificar cada alimento en un grupo determinado.
class Grupo < Alimentos
   
	# Define los getter y setter de las variables de instancia
	# @return [Numeric] El valor de dichas variables de instancia.
   attr_reader :grupo
   
   # Metodo que permite declarar e inicializar las variables de instancia.
   def initialize(group,name,protein,glucids,lipids)
      super(name,protein,glucids,lipids)
      @grupo = group
   end
   
   # El método to_s se encarga de formatear la salida cuando intentamos visualizar un objeto
	#
	# @return [string] En el que se representan las variables de instancia del objeto.
   def to_s
      "Grupo: #{@grupo} alimento: #{nombre} Proteínas: #{proteinas}g Glúcidos: #{glucidos}g Lípidos: #{lipidos}g"
   end
   
end
