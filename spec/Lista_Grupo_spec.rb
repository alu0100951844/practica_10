require 'practica_6'

describe List do

  context "Usando objetos de la clase Grupo < Alimentos" do 
	
	before :all do
	   	    
      @comida=[]
      @comida[0]=Grupo.new("Huevos, lácteos y helados","Leche vaca",3.3,4.8,3.2) 
      @comida[1]=Grupo.new("Huevos, lácteos y helados","Yogurt",3.8,4.9,3.8) 
      @comida[2]=Grupo.new("Carnes y derivados","Ternera",21.1,0.0,3.1)
      @comida[3]=Grupo.new("Carnes y derivados","Pollo",20.6,0.0,5.6)
      @comida[4]=Grupo.new("Pescados y mariscos","Atun",21.5,0.0,15.5) 
      @comida[5]=Grupo.new("Pescados y mariscos","Salmon",19.9,0.0,13.6)
      @comida[6]=Grupo.new("Alimentos grasos","Mantequilla",0.7,0.0,83.2)
      @comida[7]=Grupo.new("Alimentos grasos","Chocolate",5.3,47.0,30.0)
      @comida[8]=Grupo.new("Alimentos ricos en carbohidratos","Arroz",6.8,77.7,0.6) 
      @comida[9]=Grupo.new("Alimentos ricos en carbohidratos","Lentejas",23.5,52.0,1.4)
      @comida[10]=Grupo.new("Alimentos ricos en carbohidratos","Papas",2.0,15.4,0.1)
      @comida[11]=Grupo.new("Verduras y hortalizas","Cebolla",1.3,5.8,0.3)
      @comida[12]=Grupo.new("Verduras y hortalizas","Calabaza",1.1,4.8,0.1)
      @comida[13]=Grupo.new("Frutas","Manzana",0.3,12.4,0.4)
      @comida[14]=Grupo.new("Frutas","Platanos",1.2,21.4,0.2)
      @comida[15]=Grupo.new("Frutas","Pera",0.5,12.7,0.3)
      @comida[16]=Grupo.new("Verduras y hortalizas","Tomate",1.0,3.5,0.2)
      @comida[17]=Grupo.new("Alimentos ricos en carbohidratos","Azucar",0.0,99.8,0.0) 
      @comida[18]=Grupo.new("Alimentos grasos","Aceite de oliva",0.0,0.2,99.6)
      @comida[19]=Grupo.new("Pescados y mariscos","Bacalao",17.7,0.0,0.4)
      @comida[20]=Grupo.new("Carnes y derivados","Cerdo",21.5,0.0,6.3)
      @comida[21]=Grupo.new("Huevos, lácteos y helados","Huevo frito",14.1,0.0,19.5)
      
      @lista=List.new
      @lista.insert_string(@comida)
   end
   
     context "Si existen los métodos." do 
       
      describe "# Operaciones en la Lista con objetos Grupo < Alimentos" do
          
          it "Inserción cadena de objetos Grupo en el head" do
              expect(@lista.sz).to eq(22)
          end
          
          it "Inserción de un objeto Grupo en el head" do
              @lista.insert_head!(@comida[21])
              expect(@lista.sz).to eq(23)
          end
          
          it "Inserción objeto Grupo en el tail" do
              @lista.insert_tail!(@comida[21])
              expect(@lista.sz).to eq(24)
          end
          
          it "Extracción objeto Grupo del head" do
              @lista.extract_head!
              expect(@lista.sz).to eq(23)
          end
          
          it "Extracción objeto Grupo del tail" do
              @lista.extract_tail!
              expect(@lista.sz).to eq(22)
          end
      end
   end
   
   
 end
   
end