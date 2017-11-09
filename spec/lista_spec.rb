require 'practica_6'

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
    end
   
end