class Lesson1Array2

	def initialize
		@my_hash=Hash.new 
		 
		@my_array=Array.new(40){ |index| write_date }

	end

	def write_date

		rand_time=rand((Time.now - 60*60*24*365)..Time.now)
		rand_temperature=rand(-20..20)

		date=rand_time.strftime("%d.%m")

		date_format="#{date} #{rand_temperature}"		

	end

	def my_array
		@my_array
	end

	def average_temperature

		#-------hash temperature 
		@my_array.each do |value|


			

			date_month=value[3..4].to_s
			temperature=value[value.length-4..value.length-1].to_s

			if (@my_hash["#{date_month}"]==nil)
				@my_hash["#{date_month}"]=[1,temperature]
			else
				@my_hash["#{date_month}"]=[(@my_hash["#{date_month}"][0]).to_i+1,(@my_hash["#{date_month}"][1]).to_i+temperature.to_i]
			end

		end
		#-----------------------
		p @my_hash
		puts '-'*30
		
		@my_hash.each do |key,value|
		puts "#{key} month average temperature is #{((value[1].to_f)/(value[0].to_f)).round(1)}"
		end
	end

	def hash_begin_yes
		quantity_yes_element=0
		
		hash={'yes' => 23, 'b' => 'travel',
		 'yesterday' => 34, 5 => '234',
		  :yesss => :fg, try: 30, key: 'some value',
		   'yesterday1' => 34,
		    'yesteryear' => 2014}

		    hash.each do |key, value|

			key_s=key.to_s

			if (key_s[0..2]=='yes')
				quantity_yes_element+=1
			end
			
		end

		p hash
		p '-'*30
		puts "The value of the key begins on (yes)= #{quantity_yes_element}"
		
 	end

 	def symbol_in_string(hash)
 		hash_result={}

 		hash.each do |key, value|

 			if key.class==Symbol
 				hash_result[key.to_s]=value
 			else
 				hash_result[key]=value
 			end

 		end
 		p hash
 		puts '-'*40
 		p hash_result
 	end

end


my=Lesson1Array2.new()
#my.write_date
puts '='*100
p my.my_array
puts '----------------------'
my.average_temperature
puts '----------------------'
my.hash_begin_yes
puts '-'*30
my.symbol_in_string({'yes' => 23, 'b' => 'travel',
	 	'yesterday' => 34, 5 => '234',
	  	:yesss => :fg, 
		try: {'yesterday1' => 34, 
			'yesteryear' => 2014}, 
		key: [{'yes' => 23, 'b' => 'travel'}], 
		'yesterday1' => 34,
 		'yesteryear' => 2014})
puts '='*100