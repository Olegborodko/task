class Polynomial

	def initialize(a)

		@my_mas=a.reverse
	end

	def create_polynomial

		if @my_mas.length<3
			raise ArgumentError.new("Two or more coefficients are required")
			#nil+1
		end

		step=0 #шаг и степень
		my_print=''


		@my_mas.each do |el|

			element=el.to_i

			if element==0
				step+=1
				next
			end

			if step==0
				
				my_print="+#{element}" 
				step+=1
				next
			end

			if (element==1 and step==1)
				
				my_print="+x#{my_print}" 

				step+=1
				next
			end

			if (element==-1 and step==1)
				
				my_print="-x#{my_print}" 

				step+=1
				next
			end

			if element==1

				my_print="+x^#{step}#{my_print}"
				step+=1
				next
			end

			if element==-1

				my_print="-x^#{step}#{my_print}"
				step+=1
				next
			end

			if step==1

				if element>0
						my_print="+#{element}x#{my_print}"
				else
						my_print="#{element}x#{my_print}"
				end

				step+=1
				next
			end


			if element>0
				my_print="+#{element}x^#{step}#{my_print}"
			else
				my_print="#{element}x^#{step}#{my_print}"
			end
			
			step+=1

		end

		my_print="0" if my_print==""
		my_print=my_print[1..my_print.length-1] if my_print[0]=="+"

		my_print


	end


	def my_mas
		@my_mas

	end

end

#my=Polynomial.new(ARGV)
#puts my.create_polynomial