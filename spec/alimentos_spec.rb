require 'practica_6'

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