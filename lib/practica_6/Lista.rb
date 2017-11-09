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
	
	def insert_head!(val)
		if(@sz==0)
		   @head=Node.new(val,nil,nil)
		   @tail= head
		   @sz= @sz+1
		else
		   @head.prev=Node.new(val,head,nil)
		   @head= head.prev
		   @sz= @sz+1
	    end
	end
	
	def extract_head!
		extraer=@head
		
		if(sz>0)
	       @head= head.next
	       
	       if head.nil?
	          @tail=nil
	       else
	          @head.prev=nil
	       end
	          
	       extraer.next=nil
	       extraer.prev=nil
		   @sz= @sz-1
		end
	    extraer
	end
	
end