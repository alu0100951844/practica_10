require "spec_helper"

describe Alimentos do
   
   before :each do
      @alimento_0=Alimentos.new("Huevo frito",14.1,0.0,19.5)
      @alimento_1=Alimentos.new("Leche vaca",3.3,4.8,3.2)
      @alimento_2=Alimentos.new("Yogurt",3.8,4.9,3.8)
      @alimento_3=Alimentos.new("Cerdo",21.5,0.0,6.3)
      @alimento_4=Alimentos.new("Ternera",21.1,0.0,3.1)
      @alimento_5=Alimentos.new("Pollo",20.6,0.0,5.6)
      
   end
   
    context "Si se indican los datos de los alimentos." do 
    	
       describe "# almacenamiento de datos del alimento" do
   	
            it "Se almacenan correctamente los nombres de los alimentos" do
                expect(@alimento_0.nombre).to eq("Huevo frito")
                expect(@alimento_1.nombre).to eq("Leche vaca")
                expect(@alimento_2.nombre).to eq("Yogurt")
                expect(@alimento_3.nombre).to eq("Cerdo")
                expect(@alimento_4.nombre).to eq("Ternera")
                expect(@alimento_5.nombre).to eq("Pollo")
            end
         
            it "Se almacenan correctamente las cantidades de proteinas de los alimentos" do
                expect(@alimento_0.proteinas).to eq(14.1)
                expect(@alimento_1.proteinas).to eq(3.3)
                expect(@alimento_2.proteinas).to eq(3.8)
                expect(@alimento_3.proteinas).to eq(21.5)
                expect(@alimento_4.proteinas).to eq(21.1)
                expect(@alimento_5.proteinas).to eq(20.6) 
            end
         
            it "Se almacenan correctamente las cantidades de glucidos de los alimentos" do
                expect(@alimento_0.glucidos).to eq(0.0)
                expect(@alimento_1.glucidos).to eq(4.8)
                expect(@alimento_2.glucidos).to eq(4.9)
                expect(@alimento_3.glucidos).to eq(0.0)
                expect(@alimento_4.glucidos).to eq(0.0)
                expect(@alimento_5.glucidos).to eq(0.0)
            end
         
            it "Se almacenan correctamente las cantidades de lípidos de los alimentos" do
                expect(@alimento_0.lipidos).to eq(19.5)
                expect(@alimento_1.lipidos).to eq(3.2)
                expect(@alimento_2.lipidos).to eq(3.8)
                expect(@alimento_3.lipidos).to eq(6.3)
                expect(@alimento_4.lipidos).to eq(3.1)
                expect(@alimento_5.lipidos).to eq(5.6) 
            end
       end
    end
    
    context "Si están definidos los métodos en la clase Alimentos" do
    
        describe "# Formateo de los datos del alimento" do
  	 
            it "Se muestran correctamente los datos de los alimentos." do
                expect(@alimento_0.to_s).to eq("Nombre del alimento: Huevo frito  Proteínas: 14.1g  Glúcidos: 0.0g  Lípidos: 19.5g")
                expect(@alimento_1.to_s).to eq("Nombre del alimento: Leche vaca  Proteínas: 3.3g  Glúcidos: 4.8g  Lípidos: 3.2g")
                expect(@alimento_2.to_s).to eq("Nombre del alimento: Yogurt  Proteínas: 3.8g  Glúcidos: 4.9g  Lípidos: 3.8g")
                expect(@alimento_3.to_s).to eq("Nombre del alimento: Cerdo  Proteínas: 21.5g  Glúcidos: 0.0g  Lípidos: 6.3g")
                expect(@alimento_4.to_s).to eq("Nombre del alimento: Ternera  Proteínas: 21.1g  Glúcidos: 0.0g  Lípidos: 3.1g")
                expect(@alimento_5.to_s).to eq("Nombre del alimento: Pollo  Proteínas: 20.6g  Glúcidos: 0.0g  Lípidos: 5.6g")
            end
      
        end
    
       describe "# valor energetico del alimento" do
         
            it "Se calcula correctamente el valor energético de los alimentos" do
                expect(@alimento_0.valor_energetico).to eq(14.1*4+0.0*4+19.5*9)
                expect(@alimento_1.valor_energetico).to eq(3.3*4+4.8*4+3.2*9)
                expect(@alimento_2.valor_energetico).to eq(3.8*4+4.9*4+3.8*9)
                expect(@alimento_3.valor_energetico).to eq(21.5*4+0.0*4+6.3*9)
                expect(@alimento_4.valor_energetico).to eq(21.1*4+0.0*4+3.1*9)
                expect(@alimento_5.valor_energetico).to eq(20.6*4+0.0*4+5.6*9)
            end
        end
    end
end

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


describe List do
	
	before :each do
       @lista = List.new()
       
       @lista_2 = List.new()
       @lista_2.insert_tail!(3)
       @lista_2.insert_head!(5)
       
       @lista_3 = List.new()
       @lista_3.insert_tail!(7)
       @lista_3.insert_head!(8)
       @lista_3.extract_head!
       
       @lista_4 = List.new()
       @lista_4.insert_tail!(9)
       @lista_4.insert_head!(10)
       @lista_4.extract_tail!
       
       @lista_5 = List.new()
       @lista_5.insert_string!([4,5,6,8,9,7,10,11])
      
    end
    
    
    
    context "Existiendo métodos de la clase" do
    	
    	describe "# Se introduce un string en la lista" do
            it "Incrementa el tamaño y se introduce el string" do
                expect(@lista_5.to_s).to eq("(size=8 ==> head=11 tail=4)")
            end
        end
        
        describe "# Se introduce nuevo nodo en la cola" do
            it "Incrementa el tamaño y se introduce dicho nodo" do
                expect(@lista.insert_tail!(24)).to eq(1)
            end
        end
        
        describe "# Se introduce nuevo nodo en la cabeza" do
            it "Incrementa el tamaño y se introduce dicho nodo" do
                expect(@lista.insert_head!(89)).to eq(1)
            end
        end
        
        describe "# Se quita nodo de la cola" do
            it "Disminuye el tamaño y se elimina dicho nodo" do
                expect(@lista.extract_tail!).to eq(nil)
            end
        end
        
        describe "# Se quita nodo de la cabeza" do
            it "Disminuye el tamaño y se elimina dicho nodo" do
                expect(@lista.extract_head!).to eq(nil)
            end
        end
        
        describe "# Visualización de la cola y cabeza de una lista" do
            
            context "Si se ha establecido cabeza y cola" do
                it "Se visualizan correctamente." do
                    expect(@lista_2.to_s).to eq("(size=2 ==> head=5 tail=3)")
                    
                end
            end
            
            context "Si no se ha establecido cabeza y cola" do
                it "Se indica que la cola está vacía." do
                    expect(@lista.to_s).to eq("La lista está vacía.")
                end
            end
        end
    end
    
    describe "# datos de una lista" do
        
        context "Si no se establece cola ni cabeza en la lista" do    
            it "Cola de la lista por defecto" do
                expect(@lista.tail).to eq(nil)
            end
        
            it "Cabeza de la lista por defecto" do
                expect(@lista.head).to eq(nil)
            end
        
            it "Tamaño de la lista por defecto" do
                expect(@lista.sz).to eq(0) 
            end
        end
        
        context "Si se establece cola y cabeza en la lista" do    
            it "La cola de la lista es correcta" do
                expect(@lista_2.tail.value).to eq(3)
            end
        
            it "La cabeza de la lista es correcta" do
                expect(@lista_2.head.value).to eq(5)
            end
        
            it "El tamaño de la lista es correcto" do
                expect(@lista_2.sz).to eq(2)
            end
        end
        
        context "Si se establece cola y cabeza en la lista pero se quita la cabeza despues" do    
            it "La cola de la lista es correcta" do
                expect(@lista_3.tail.value).to eq(7)
            end
        
            it "La cabeza de la lista es correcta" do
                expect(@lista_3.head.value).to eq(7)
            end
        
            it "El tamaño de la lista es correcto" do
                expect(@lista_3.sz).to eq(1)
            end
        end
        
        context "Si se establece cola y cabeza en la lista pero se quita la cola despues" do    
            it "La cola de la lista es correcta" do
                expect(@lista_4.tail.value).to eq(10)
            end
        
            it "La cabeza de la lista es correcta" do
                expect(@lista_4.head.value).to eq(10)
            end
        
            it "El tamaño de la lista es correcto" do
                expect(@lista_4.sz).to eq(1)
            end
        end
       
    end
   
end

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
      @lista.insert_string!(@comida)
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
   
    context "Si se indican los datos de los alimentos." do 
    	
       describe "# almacenamiento de datos del objeto Grupo < Alimentos en lista" do
           
           it "Se almacenan correctamente los datos del objeto Grupo para Huevo, lácteos y helados" do
            	@valor=@lista.extract_head!.value
                expect(@valor.grupo).to eq("Huevos, lácteos y helados")
                expect(@valor.nombre).to eq("Huevo frito")
                expect(@valor.proteinas).to eq(14.1)
                expect(@valor.glucidos).to eq(0.0)
                expect(@valor.lipidos).to eq(19.5)
            end
            
           it "Se almacenan correctamente los datos del objeto Grupo para Carnes y derivados" do
            	@valor=@lista.extract_head!.value
                expect(@valor.grupo).to eq("Carnes y derivados")
                expect(@valor.nombre).to eq("Cerdo")
                expect(@valor.proteinas).to eq(21.5)
                expect(@valor.glucidos).to eq(0.0)
                expect(@valor.lipidos).to eq(6.3)
            end
            
           it "Se almacenan correctamente los datos del objeto Grupo para Pescados y mariscos" do
            	@valor=@lista.extract_head!.value
                expect(@valor.grupo).to eq("Pescados y mariscos")
                expect(@valor.nombre).to eq("Bacalao")
                expect(@valor.proteinas).to eq(17.7)
                expect(@valor.glucidos).to eq(0.0)
                expect(@valor.lipidos).to eq(0.4)
            end
            
           it "Se almacenan correctamente los datos del objeto Grupo para Alimentos grasos" do
            	@valor=@lista.extract_head!.value
                expect(@valor.grupo).to eq("Alimentos grasos")
                expect(@valor.nombre).to eq("Aceite de oliva")
                expect(@valor.proteinas).to eq(0.0)
                expect(@valor.glucidos).to eq(0.2)
                expect(@valor.lipidos).to eq(99.6)
            end
            
           it "Se almacenan correctamente los datos del objeto Grupo para Alimentos ricos en carbohidratos" do
            	@valor=@lista.extract_head!.value
                expect(@valor.grupo).to eq("Alimentos ricos en carbohidratos")
                expect(@valor.nombre).to eq("Azucar")
                expect(@valor.proteinas).to eq(0.0)
                expect(@valor.glucidos).to eq(99.8)
                expect(@valor.lipidos).to eq(0.0)
            end
            
           it "Se almacenan correctamente los datos del objeto Grupo para Verduras y hortalizas" do
            	@valor=@lista.extract_head!.value
                expect(@valor.grupo).to eq("Verduras y hortalizas")
                expect(@valor.nombre).to eq("Tomate")
                expect(@valor.proteinas).to eq(1.0)
                expect(@valor.glucidos).to eq(3.5)
                expect(@valor.lipidos).to eq(0.2)
            end
   	
            it "Se almacenan correctamente los datos del objeto Grupo para Fruta" do
            	@valor=@lista.extract_head!.value
                expect(@valor.grupo).to eq("Frutas")
                expect(@valor.nombre).to eq("Pera")
                expect(@valor.proteinas).to eq(0.5)
                expect(@valor.glucidos).to eq(12.7)
                expect(@valor.lipidos).to eq(0.3)
            end
        end
    end
 end
end


describe Alimentos do
    
   context "Si se ha incluído el módulo Comparable" do
	
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
			
			it "Comprobando funcionamiento operador >" do
				expect(@alimento_0 > @alimento_1).to eq(true)		
				expect(@alimento_3 > @alimento_2).to eq(true)
				expect(@alimento_2 > @alimento_1).to eq(true)
			end
			
			it "Comprobando funcionamiento operador <=" do
				expect(@alimento_1 <= @alimento_0).to eq(true)		
				expect(@alimento_2 <= @alimento_3).to eq(true)
				expect(@alimento_1 <= @alimento_2).to eq(true)
				expect(@alimento_1 <= @alimento_1).to eq(true)
			end
			
			it "Comprobando funcionamiento operador >=" do
				expect(@alimento_0 >= @alimento_1).to eq(true)		
				expect(@alimento_3 >= @alimento_2).to eq(true)
				expect(@alimento_2 >= @alimento_1).to eq(true)
				expect(@alimento_1 >= @alimento_1).to eq(true)
			end
			
			it "Comprobando funcionamiento operador ==" do
				expect(@alimento_0 == @alimento_0).to eq(true)		
				expect(@alimento_1 == @alimento_1).to eq(true)
				expect(@alimento_2 == @alimento_2).to eq(true)
			end
			
			it "Comprobando funcionamiento de between?" do
				expect(@alimento_2.between?(@alimento_1,@alimento_0)).to eq(true)		
				expect(@alimento_3.between?(@alimento_2,@alimento_0)).to eq(true)
				expect(@alimento_2.between?(@alimento_1,@alimento_3)).to eq(true)
			end
		end
	end
  end
end


describe List do
    
  context "Si se ha incluído el módulo Enumerable" do    
	
	before :each do
	  @alimento=[]
	  @alimento[0]=Grupo.new("Huevos, lácteos y helados","Huevo frito",14.1,0.0,19.5)  #231,9
      @alimento[1]=Grupo.new("Huevos, lácteos y helados","Leche vaca",3.3,4.8,3.2)	   #61,2
      @alimento[2]=Grupo.new("Huevos, lácteos y helados","Yogurt",3.8,4.9,3.8)		   #69
      @alimento[3]=Grupo.new("Carnes y derivados","Cerdo",21.5,0.0,6.3)				   #142,7
      @alimento[4]=Grupo.new("Verduras y hortalizas","Calabaza",1.1,4.8,0.1)           #24,5
      @alimento[5]=Grupo.new("Frutas","Pera",0.5,12.7,0.3)							   #55,5
      @alimento[6]=Grupo.new("Verduras y hortalizas","Tomate",1.0,3.5,0.2)			   #18,8
      @alimento[7]=Grupo.new("Alimentos ricos en carbohidratos","Azucar",0.0,99.8,0.0) #399,2
      @alimento[8]=Grupo.new("Alimentos grasos","Aceite de oliva",0.0,0.2,99.6)		   #897,2
      @alimento[9]=Grupo.new("Pescados y mariscos","Bacalao",17.7,0.0,0.4)			   #74,4

	  @Lista=List.new
	  @Lista.insert_string!(@alimento)
	  
	  @No_en_lista=Grupo.new("Alimentos grasos","Mantequilla",0.7,0.0,83.2)
	end
	
	describe "# Comprobando los diferentes métodos enumerables" do
		
		context "Si existe el método each" do
			
			it "Comprobando método each?" do
				expect(@Lista.each{|x| x }).to eq(0..9)
			end
			
			it "Comprobando método max?" do
				expect(@Lista.max).to eq(@alimento[8])
			end
			
			it "Comprobando método min?" do
				expect(@Lista.min).to eq(@alimento[6])
			end
			
			it "Comprobando método include?" do
				expect(@Lista.include?@alimento[0]).to eq(true)
				expect(@Lista.include?@alimento[5]).to eq(true)
			end
			
			it "Comprobando método map y collect" do
				expect(@Lista.map{|x| x}).to eq([@alimento[9],@alimento[8],@alimento[7],@alimento[6],@alimento[5],@alimento[4],@alimento[3],@alimento[2],@alimento[1],@alimento[0]])
				expect(@Lista.collect{|x| x}).to eq([@alimento[9],@alimento[8],@alimento[7],@alimento[6],@alimento[5],@alimento[4],@alimento[3],@alimento[2],@alimento[1],@alimento[0]])
			end
			
			it "Comprobando método count" do
    		    expect(@Lista.count).to eq(10)
			end
			
			it "Comprobando método all?" do
				expect(@Lista.all? {|x| x >= @alimento[0]}).to eq(false)
				expect(@Lista.all? {|x| x >= @alimento[6]}).to eq(true)
			end
			
			it "Comprobando método any?" do
				expect(@Lista.any? {|x| x >= @alimento[0]}).to eq(true)
				expect(@Lista.any? {|x| x > @alimento[8]}).to eq(false)
			end
			
			it "Comprobando método detect y find?" do
				expect(@Lista.detect {|x| x == @alimento[0]}).to eq(@alimento[0])
				expect(@Lista.find {|x| x == @No_en_lista}).to eq(nil)
			end
			
			it "comprobrando método drop" do
    			expect(@Lista.drop(5)).to eq([@alimento[4],@alimento[3],@alimento[2],@alimento[1],@alimento[0]])
			end
			
			it "comprobrando método sort" do
    			expect(@Lista.sort{ |a, b| b <=> a }).to eq([@alimento[8],@alimento[7],@alimento[0],@alimento[3],@alimento[9],@alimento[2],@alimento[1],@alimento[5],@alimento[4],@alimento[6]])
			end
		end
	end
  end
end

describe Alimentos do
    
    before :each do
        yogurt=[]
        yogurt<<[6.1 , 6.6 , 6.3 , 6.3 , 6.1 , 6.9 , 6.8 , 6.5 , 6.4 , 6.9 , 6.8 , 6.5 , 6.3 , 6.2 , 6.7 , 6.2 , 5.9 , 5.8 , 5.8 , 5.8 , 5.8 , 5.8 , 5.9 , 6.2 , 6.4]
        yogurt<<[4.9 , 4.9 , 5.2 , 5.8 , 6.5 , 7.0 , 7.2 , 7.3 , 7.3 , 6.6 , 6.2 , 6.1 , 6.0 , 6.1 , 5.9 , 5.9 , 5.9 , 5.9 , 5.8 , 5.8 , 5.5 , 5.5 , 5.6 , 5.9 , 5.9]
        @yogurt = Alimentos.new("Yogurt", 3.8, 4.9, 3.8)
        @yogurt.datos_IG=yogurt
    
        glucosa=[]
        glucosa<<[4.9 , 5.3 , 5.9 , 6.7 , 7.2 , 7.6 , 8.0 , 8.2 , 8.2 , 8.4 , 8.3 , 8.3 , 8.0 , 7.5 , 7.1 , 6.8 , 6.8 , 6.9 , 6.8 , 6.3 , 6.2 , 6.3 , 6.2 , 6.3 , 6.1]
        glucosa<<[6.3 , 5.4 , 5.6 , 5.7 , 6.5 , 7.4 , 7.9 , 7.4 , 7.7 , 7.9 , 7.9 , 7.8 , 7.8 , 7.8 , 8.0 , 8.5 , 9.4 , 10.8 , 10.5 , 9.1 , 8.9 , 8.3 , 7.7 , 7.6 , 7.5]
        @glucosa = Alimentos.new("Glucosa", 0, 99.8, 0)
        @glucosa.datos_IG=glucosa
    end
    
    describe "# Almacenamiento de datos de un alimento" do
  
        context "Existiendo los datos del alimento" do
            
            it "Se almacena correctamente el nombre del alimento" do
                expect(@yogurt.nombre).to eq("Yogurt")
                expect(@glucosa.nombre).to eq("Glucosa")
            end
        
            it "Se almacena correctamente las proteinas del alimento" do
                expect(@yogurt.proteinas).to eq(3.8)
                expect(@glucosa.proteinas).to eq(0)
            end
        
            it "Se almacena correctamente los glucidos del alimento" do
                expect(@yogurt.glucidos).to eq(4.9) 
                expect(@glucosa.glucidos).to eq(99.8)
            end
        
            it "Se almacena correctamente las grasas del alimento" do
                expect(@yogurt.lipidos).to eq(3.8)
                expect(@glucosa.lipidos).to eq(0)
            end
            
            it "Se almacena correctamente las mediciones de los individuos" do
                expect(@yogurt.datos_IG).to eq([[6.1 , 6.6 , 6.3 , 6.3 , 6.1 , 6.9 , 6.8 , 6.5 , 6.4 , 6.9 , 6.8 , 6.5 , 6.3 , 6.2 , 6.7 , 6.2 , 5.9 , 5.8 , 5.8 , 5.8 , 5.8 , 5.8 , 5.9 , 6.2 , 6.4],[4.9 , 4.9 , 5.2 , 5.8 , 6.5 , 7.0 , 7.2 , 7.3 , 7.3 , 6.6 , 6.2 , 6.1 , 6.0 , 6.1 , 5.9 , 5.9 , 5.9 , 5.9 , 5.8 , 5.8 , 5.5 , 5.5 , 5.6 , 5.9 , 5.9]])
                expect(@glucosa.datos_IG).to eq([[4.9 , 5.3 , 5.9 , 6.7 , 7.2 , 7.6 , 8.0 , 8.2 , 8.2 , 8.4 , 8.3 , 8.3 , 8.0 , 7.5 , 7.1 , 6.8 , 6.8 , 6.9 , 6.8 , 6.3 , 6.2 , 6.3 , 6.2 , 6.3 , 6.1],[6.3 , 5.4 , 5.6 , 5.7 , 6.5 , 7.4 , 7.9 , 7.4 , 7.7 , 7.9 , 7.9 , 7.8 , 7.8 , 7.8 , 8.0 , 8.5 , 9.4 , 10.8 , 10.5 , 9.1 , 8.9 , 8.3 , 7.7 , 7.6 , 7.5]])
            end
            
        end
    end
    
    describe "# Comprobando cálculo de índice glucémico." do
	
	    context "Existiendo los correspondientes métodos en la clase" do
	        
	        it "Se calcula correctamente el AIBC" do
                expect(@yogurt.aibc).to eq([21.75, 138.5])
                expect(@glucosa.aibc).to eq([256.0, 186.5])
            end
            
            it "Se calcula correctamente el indice glucemico para cada individuo" do
                IG_idv=[]
                soluciones=[8.5,74.26]
                for i in (0..@yogurt.aibc.length-1)
                    IG_idv << ((@yogurt.aibc[i]/@glucosa.aibc[i])*100).round(2)
                    expect(IG_idv[i]).to eq(soluciones[i])
                end
            end
            
            it "Se calcula correctamente el sumatorio de los indices glucemicos relativos por individuo" do
                Sumatorio_IG_idv = IG_idv.reduce :+
                expect(Sumatorio_IG_idv).to eq(82.76)
            end
            
            it "Se calcula correctamente indice glucémico del alimento para los individuos" do
                IG=Sumatorio_IG_idv/@yogurt.datos_IG.length
                expect(IG).to eq(41.38)
            end
	    end
	end
end

describe Alimentos do
    
    before :each do
        
      @comida=[
                Grupo.new("Huevos, lácteos y helados","Huevo frito",14.1,0.0,19.5),         #231.9 k
                Grupo.new("Huevos, lácteos y helados","Leche vaca",3.3,4.8,3.2),            #61.2 k
                Grupo.new("Huevos, lácteos y helados","Yogurt",3.8,4.9,3.8),                #69.0 k
                Grupo.new("Carnes y derivados","Cerdo",21.5,0.0,6.3),                       #142.7 k
                Grupo.new("Carnes y derivados","Ternera",21.1,0.0,3.1),                     #112.3 k
                Grupo.new("Carnes y derivados","Pollo",20.6,0.0,5.6),                       #132.8 k
                Grupo.new("Pescados y mariscos","Bacalao",17.7,0.0,0.4),                    #74.4 k       
                Grupo.new("Pescados y mariscos","Atun",21.5,0.0,15.5),                      #225.5 k
                Grupo.new("Pescados y mariscos","Salmon",19.9,0.0,13.6),                    #202.0 k
                Grupo.new("Alimentos grasos","Aceite de oliva",0.0,0.2,99.6),               #897.2 k
                Grupo.new("Alimentos grasos","Mantequilla",0.7,0.0,83.2),                   #751.6 k
                Grupo.new("Alimentos grasos","Chocolate",5.3,47.0,30.0),                    #479.2 k
                Grupo.new("Alimentos ricos en carbohidratos","Azucar",0.0,99.8,0.0),        #399.2 k
                Grupo.new("Alimentos ricos en carbohidratos","Arroz",6.8,77.7,0.6),         #343.4 k
                Grupo.new("Alimentos ricos en carbohidratos","Lentejas",23.5,52.0,1.4),     #314.6 k
                Grupo.new("Alimentos ricos en carbohidratos","Papas",2.0,15.4,0.1),         #70.5 k
                Grupo.new("Verduras y hortalizas","Tomate",1.0,3.5,0.2),                    #19.8
                Grupo.new("Verduras y hortalizas","Cebolla",1.3,5.8,0.3),                   #31.01 k
                Grupo.new("Verduras y hortalizas","Calabaza",1.1,4.8,0.1),                  #24.5
                Grupo.new("Frutas","Manzana",0.3,12.4,0.4),                                 #54.4 k
                Grupo.new("Frutas","Platanos",1.2,21.4,0.2),                                #92.2 k
                Grupo.new("Frutas","Pera",0.5,12.7,0.3)                                     #55.55 k
              ]
              
      @dato = Array.new
     
    end
    
    describe "# Comprobación de los métodos de ordenación" do
        
        context "Si existen los respectivos métodos en la case" do
        
            it "Comprobando ordenación con for" do
                expect(@dato.ordenar_for(@comida)).to eq([@comida[16],@comida[18],@comida[17],@comida[19],@comida[21],@comida[1],@comida[2],@comida[15],@comida[6],@comida[20],@comida[4],@comida[5],@comida[3],@comida[8],@comida[7],@comida[0],@comida[14],@comida[13],@comida[12],@comida[11],@comida[10],@comida[9]])
            end
            
            it "Comprobando ordenación con each" do
                expect(@dato.ordenar_each(@comida)).to eq([@comida[16],@comida[18],@comida[17],@comida[19],@comida[21],@comida[1],@comida[2],@comida[15],@comida[6],@comida[20],@comida[4],@comida[5],@comida[3],@comida[8],@comida[7],@comida[0],@comida[14],@comida[13],@comida[12],@comida[11],@comida[10],@comida[9]])
            end
            
            it "Comprobando ordenación con sort" do
                expect(@comida.sort).to eq([@comida[16],@comida[18],@comida[17],@comida[19],@comida[21],@comida[1],@comida[2],@comida[15],@comida[6],@comida[20],@comida[4],@comida[5],@comida[3],@comida[8],@comida[7],@comida[0],@comida[14],@comida[13],@comida[12],@comida[11],@comida[10],@comida[9]])
            end
        end
    end
    
    describe "# Benchmark." do
        context "Existiendo el método Benchmark" do  
           it " " do
              Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
                 tf = x.report("for:")   { @dato.ordenar_for(@comida) }
                 tt = x.report("each:") { @dato.ordenar_each(@comida) }
                 tu = x.report("sort:")  { @comida.sort }
                 [tf+tt+tu, (tf+tt+tu)/3]
              end
           end
       end
   end
end