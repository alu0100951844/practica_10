require 'Alimentos'

describe Alimentos do
	
	before :all do
    
      @Huevo_frito=["Huevo frito",14.1,0.0,19.5]
      @Leche_vaca=["Leche vaca",3.3,4.8,3.2] 
      @Yogurt=["Yogurt",3.8,4.9,3.8] 
      @Cerdo=["Cerdo",21.5,0.0,6.3]
      @Ternera=["Ternera",21.1,0.0,3.1]
      @Pollo=["Pollo",20.6,0.0,5.6] 
      @Bacalao=["Bacalao",17.7,0.0,0.4] 
      @Atun=["Atun",21.5,0.0,15.5] 
      @Salmon=["Salmon",19.9,0.0,13.6]
      @Aceite_de_oliva=["Aceite de oliva",0.0,0.2,99.6]
      @Chocolate=["Chocolate",5.3,47.0,30.0] 
      @Azucar=["Azucar",0.0,99.8,0.0] 
      @Arroz=["Arroz",6.8,77.7,0.6] 
      @Lentejas=["Lentejas",23.5,52.0,1.4] 
      @Papas=["Papas",2.0,15.4,0.1]
      @Tomate=["Tomate",1.0,3.5,0.2] 
      @Cebolla=["Cebolla",1.3,5.8,0.3] 
      @Manzana=["Manzana",0.3,12.4,0.4] 
      @Platanos=["Platanos",1.2,21.4,0.2] 
      
   end
   
   before :each do
      @alimento_0=Alimentos.new(@Huevo_frito)
      @alimento_1=Alimentos.new(@Leche_vaca)
      @alimento_2=Alimentos.new(@Yogurt)
      @alimento_3=Alimentos.new(@Cerdo)
      @alimento_4=Alimentos.new(@Ternera)
      @alimento_5=Alimentos.new(@Pollo)
   end
   
    describe "# almacenamiento de datos del alimento" do
   	
         it "Se almacenan correctamente los nombres de los alimentos" do
             expect(@alimento_0.nombre).to eq(@Huevo_frito[0])
             expect(@alimento_1.nombre).to eq(@Leche_vaca[0])
             expect(@alimento_2.nombre).to eq(@Yogurt[0])
             expect(@alimento_3.nombre).to eq(@Cerdo[0])
             expect(@alimento_4.nombre).to eq(@Ternera[0])
             expect(@alimento_5.nombre).to eq(@Pollo[0])
         end
         
         it "Se almacenan correctamente las cantidades de proteinas de los alimentos" do
             expect(@alimento_0.proteinas).to eq(@Huevo_frito[1])
             expect(@alimento_1.proteinas).to eq(@Leche_vaca[1])
             expect(@alimento_2.proteinas).to eq(@Yogurt[1])
             expect(@alimento_3.proteinas).to eq(@Cerdo[1])
             expect(@alimento_4.proteinas).to eq(@Ternera[1])
             expect(@alimento_5.proteinas).to eq(@Pollo[1]) 
         end
    end
   
end