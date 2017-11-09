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
       
       @lista_4 = List.new()
       @lista_4.insert_tail!(9)
       @lista_4.insert_head!(10)
       @lista_4.extract_tail!
       
       @lista_5 = List.new()
       @lista_5.insert_string([4,5,6,8,9,7,10,11])
      
    end
    
    context "Existiendo métodos de la clase" do
        
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