require 'practica_6'

describe List do
	
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
		end
	end
end