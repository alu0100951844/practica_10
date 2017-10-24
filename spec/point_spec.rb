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
   	  @alimento_selec=@Huevo_frito
      @alimento=Alimentos.new(@alimento_selec)
   end
   
end