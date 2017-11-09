require 'practica_6/nodo'

class List
	
	attr_reader :tail, :head, :sz
	
	def initialize
	   @tail=nil
	   @head=nil
	   @sz=0
	end
	
	def insert_tail!(val)
		if(@sz==0)
		   @tail=Node.new(val,nil,nil)
		   @head= tail
		   @sz= @sz+1
		else
		   @tail.next=Node.new(val,nil,tail)
		   @tail= tail.next
		   @sz= @sz+1
	    end
	end
	
end