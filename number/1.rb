class Number
	

	def initialize
		@min=1
		@max=1000
		
		p "="*30
		p sieve_of_Sundaram(@min,@max)
		p m= other_way(@min,@max)
		p "-"*10
		p m1= palindromic_prime(m)
		p "-"*10
		 changeling(m1)
		p "="*30

		#a.any?{|a1| }
		#a.none?{}
		#a.all?{}
	end

	#compact! map!

	def sieve_of_Sundaram(min,max)

		i=min
		n=max
		mas=(i..n).to_a

		while (true)

		if (i+i+2*i*i) > n  #exit
			mas.map!{|e| e*2+1 if e*2+1<=n }.compact!
			mas.insert(0,2) if n>=2
			return mas
		end
		
		for e in i..n

			if e>=i and e<=n
				
			mas.delete(i+e+2*i*e) if (i+e+2*i*e)<=n 
			end	
			
			end	


			i+=1
		end	
	end

	def other_way(min,max)
		(min..max).select {|x| (min..x).select{|y|x%y==0}.size==2 }
	end

	def palindromic_prime(mas)
		mas.select!{|e| e if e.to_s[0]==e.to_s[e.to_s.length-1] }
		mas
	end

	def changeling(mas) #оборотень перевертыш)
		mas.each do |e|
			array=e.to_s

			if array.length>2

				a0=array	
				a1="#{array[array.length-1]}#{array[0..array.length-2]}"
				puts a0

				while(true)								

				if a0!=a1
					puts a1
					a1="#{a1[a1.length-1]}#{a1[0..a1.length-2]}"
				else
					break
				end

				end

			end
		end
	end



end


my=Number.new

