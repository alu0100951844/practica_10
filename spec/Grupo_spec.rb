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
	
	describe "# Comprobando almacenamiento de los diferentes grupos." do
		
		context "Existiendo el método para ello." do
			it "Los grupos se han almacenado correctamente" do
				 expect(@comida[0].grupo).to eq("Frutas")
				 expect(@comida[1].grupo).to eq("Verduras y hortalizas")
				 expect(@comida[2].grupo).to eq("Alimentos ricos en carbohidratos")
				 expect(@comida[3].grupo).to eq("Alimentos grasos")
				 expect(@comida[4].grupo).to eq("Pescados y mariscos")
				 expect(@comida[5].grupo).to eq("Carnes y derivados")
				 expect(@comida[6].grupo).to eq("Huevos, lácteos y helados")
			end
			it "Formateo to_s" do
				 expect(@comida[0].to_s).to eq("Grupo: Frutas alimento: Pera Proteínas: 0.5g Glúcidos: 12.7g Lípidos: 0.3g")
		    end
	    end
	end
	
	describe "# Comprobación de herencia." do
		
       context "Realizando una herencia correcta" do
       	
          it "La superclase de Grupo es Alimentos" do
             expect(Grupo.superclass).to be Alimentos
          end
          
          it "La clase de los objetos es Grupo, comprobando con instance_of?" do
		     expect(@comida[0].instance_of?(Grupo)).to be true
		     expect(@comida[1].instance_of?(Grupo)).to be true
		     expect(@comida[2].instance_of?(Grupo)).to be true
		     expect(@comida[3].instance_of?(Grupo)).to be true
		     expect(@comida[4].instance_of?(Grupo)).to be true
		     expect(@comida[5].instance_of?(Grupo)).to be true
		     expect(@comida[6].instance_of?(Grupo)).to be true
	      end
	      
	      it "Prueba para comprobar tipo de objeto con respond_to?" do
		        expect(@comida[0].respond_to?:grupo).to be true
		        expect(@comida[0].respond_to?(:to_s)).to be true
		        expect(@comida[0].respond_to?:nombre).to be true
		        expect(@comida[0].respond_to?:proteinas).to be true
		        expect(@comida[0].respond_to?:glucidos).to be true
		        expect(@comida[0].respond_to?:lipidos).to be true
		        expect(@comida[0].respond_to?(:valor_energetico)).to be true
		        
		        expect(@comida[1].respond_to?:grupo).to be true
		        expect(@comida[1].respond_to?(:to_s)).to be true
		        expect(@comida[1].respond_to?:nombre).to be true
		        expect(@comida[1].respond_to?:proteinas).to be true
		        expect(@comida[1].respond_to?:glucidos).to be true
		        expect(@comida[1].respond_to?:lipidos).to be true
		        expect(@comida[1].respond_to?(:valor_energetico)).to be true
		        
		        expect(@comida[2].respond_to?:grupo).to be true
		        expect(@comida[2].respond_to?(:to_s)).to be true
		        expect(@comida[2].respond_to?:nombre).to be true
		        expect(@comida[2].respond_to?:proteinas).to be true
		        expect(@comida[2].respond_to?:glucidos).to be true
		        expect(@comida[2].respond_to?:lipidos).to be true
		        expect(@comida[2].respond_to?(:valor_energetico)).to be true
		        
		        expect(@comida[3].respond_to?:grupo).to be true
		        expect(@comida[3].respond_to?(:to_s)).to be true
		        expect(@comida[3].respond_to?:nombre).to be true
		        expect(@comida[3].respond_to?:proteinas).to be true
		        expect(@comida[3].respond_to?:glucidos).to be true
		        expect(@comida[3].respond_to?:lipidos).to be true
		        expect(@comida[3].respond_to?(:valor_energetico)).to be true
		        
		        expect(@comida[4].respond_to?:grupo).to be true
		        expect(@comida[4].respond_to?(:to_s)).to be true
		        expect(@comida[4].respond_to?:nombre).to be true
		        expect(@comida[4].respond_to?:proteinas).to be true
		        expect(@comida[4].respond_to?:glucidos).to be true
		        expect(@comida[4].respond_to?:lipidos).to be true
		        expect(@comida[4].respond_to?(:valor_energetico)).to be true
		        
		        expect(@comida[5].respond_to?:grupo).to be true
		        expect(@comida[5].respond_to?(:to_s)).to be true
		        expect(@comida[5].respond_to?:nombre).to be true
		        expect(@comida[5].respond_to?:proteinas).to be true
		        expect(@comida[5].respond_to?:glucidos).to be true
		        expect(@comida[5].respond_to?:lipidos).to be true
		        expect(@comida[5].respond_to?(:valor_energetico)).to be true
		        
		        expect(@comida[6].respond_to?:grupo).to be true
		        expect(@comida[6].respond_to?(:to_s)).to be true
		        expect(@comida[6].respond_to?:nombre).to be true
		        expect(@comida[6].respond_to?:proteinas).to be true
		        expect(@comida[6].respond_to?:glucidos).to be true
		        expect(@comida[6].respond_to?:lipidos).to be true
		        expect(@comida[6].respond_to?(:valor_energetico)).to be true
	        end
	        
	        it "Se confirma que el objeto pertenece a una jerarquía" do
	            
	            expect(@comida[0].class).to be Grupo
	            expect(Grupo.superclass).to be Alimentos
	            expect(Grupo.class).to be Class
	            expect(Class.superclass).to be Module
	            expect(Module.superclass).to be Object
	       
	       end
       end
    end
end