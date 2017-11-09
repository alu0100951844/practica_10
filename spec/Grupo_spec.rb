require 'practica_6'

describe Grupo do
	
    before :each do
	  @comida=[]
	  @comida[0]=Grupo.new("Frutas","Pera",0.5,12.7,0.3)
      @comida[1]=Grupo.new("Verduras y hortalizas","Tomate",1.0,3.5,0.2)
      @comida[2]=Grupo.new("Alimentos ricos en carbohidratos","Azucar",0.0,99.8,0.0) 
      @comida[3]=Grupo.new("Alimentos grasos","Aceite de oliva",0.0,0.2,99.6)
      @comida[4]=Grupo.new("Pescados y mariscos","Bacalao",17.7,0.0,0.4)
      @comida[5]=Grupo.new("Carnes y derivados","Cerdo",21.5,0.0,6.3)
      @comida[6]=Grupo.new("Huevos, lácteos y helados","Huevo frito",14.1,0.0,19.5)
	end
	
end