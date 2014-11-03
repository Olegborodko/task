class Lesson1Array

	def initialize
		#4 na 4
		@mas=Array.new(4){ |index| Array.new(4){ |index| rand(-10..10) }  } 

	end

	def reader_my_array
		@mas
	end

	def sum_negative_element
		#проходим по массиву, если элем. отриц выводим,
		#и потом щитаем сумму отрицательных
		sum=0

		@mas.each do |i|
			 
			 i.each do |k|

			 	if k<0
			 		puts k; sum=sum+k
			 	end

			 end
			
		end

		sum
	end


end

my=Lesson1Array.new
puts '------------------------------------'
p my.reader_my_array
puts "sum of negative numbers=#{my.sum_negative_element} "
