# @author Yeray Expósito García
# La clase List proporcionar los métodos necesarios para trabajar con una lista doblemente enlazada.
class List
	
	include Enumerable
	attr_reader :tail, :head, :sz
	
	# Metodo que permite declarar e inicializar las variables de instancia.
	def initialize
	   @tail=nil
	   @head=nil
	   @sz=0
	end
	
	# El método each genera elementos sucesivos de la lista doblemente enlazada.
	# Es necesario para poder emplear los diferentes métodos de recorrido que ofrece Enumerable.
	def each
	   var=@head
	   for num in (0..@sz-1)
          yield var.value
          var=var.next
       end
	end
	
	# El método insert_string! se encarga de introducir (a través del head) una cadena de elementos en la lista doblemente enlazada.
	#
	# @param val_string Representa el vector que contiene la cadena de elementos a insertar
	def insert_string!(val_string)
	   for num in (0..val_string.length-1)
          insert_head!(val_string[num])
       end
    end
	
	# El método insert_tail! se encarga de introducir un nodo por la cola de la lista doblemente enlazada.
	#
	# @param val Representa el valor que contendrá el nodo a insertar en la cola de la lista doblemente enlazada.
	# @return @sz Variable de instancia que indica el tamaño actual de la lista tras la inserción.
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
	
	# El método insert_head! se encarga de introducir un nodo por el head de la lista doblemente enlazada.
	#
	# @param val Representa el valor que contendrá el nodo a insertar en el head de la lista doblemente enlazada.
	# @return @sz Variable de instancia que indica el tamaño actual de la lista tras la inserción.
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
	
	# El método extract_head! se encarga de extraer el nodo que actualmente está en el head de la lista doblemente enlazada.
	#
	# @return extraer Variable que contiene el nodo que ha sido extraído del head de la lista.
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
	
	# El método extract_tail! se encarga de extraer el nodo que actualmente está en la cola de la lista doblemente enlazada.
	#
	# @return extraer Variable que contiene el nodo que ha sido extraído de la cola de la lista.
	def extract_tail!
		extraer=@tail
		
		if(sz>0)
	       @tail= tail.prev
	       
	       if tail.nil?
	          @head=nil
	       else
	          @tail.next=nil
	       end
	          
	       extraer.next=nil
	       extraer.prev=nil
		   @sz= @sz-1
		end
	    extraer
	end
	
	# El método to_s se encarga de formatear la salida cuando intentamos visualizar un objeto
	#
	# @return [string] En el que se representan las variables de instancia del objeto.
	def to_s
		if(sz>0)
		   "(size=#{sz} ==> head=#{head.value} tail=#{tail.value})"
		else
	       "La lista está vacía."
	    end
	end
	
end
