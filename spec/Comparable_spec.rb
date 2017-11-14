require 'practica_6'

describe Alimentos do
	
	before :each do
	  @alimento_0=Grupo.new("Huevos, lácteos y helados","Huevo frito",14.1,0.0,19.5)  #231,9
      @alimento_1=Grupo.new("Huevos, lácteos y helados","Leche vaca",3.3,4.8,3.2)	  #61,2
      @alimento_2=Grupo.new("Huevos, lácteos y helados","Yogurt",3.8,4.9,3.8)		  #69
      @alimento_3=Grupo.new("Carnes y derivados","Cerdo",21.5,0.0,6.3)				  #142,7
	end
	
	describe "# Comprobando si la clase Alimentos es comparable" do
		
		context "Existiendo el método <=>" do
			
			it "Comprobando funcionamiento operador <" do
				expect(@alimento_1 < @alimento_0).to eq(true)		
				expect(@alimento_2 < @alimento_3).to eq(true)
				expect(@alimento_1 < @alimento_2).to eq(true)
			end
		end
	end
end