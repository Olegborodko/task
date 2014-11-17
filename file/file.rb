#[["coal", "cola"], ["waist", "waits"]]

def find

	my_mas=[]
	#my_hash={}
	my_hash=spell_check

	f = File.new("wordsEn.txt")
#wordsEn


	while line = f.gets
		l=line.strip

		mylsize=l.length


		puts l
		puts my_hash[l]
		next if my_hash[l]==true

  		if mylsize>2

  			if l[mylsize-2]!=l[mylsize-1]

  			
  		
  			#my_hash[l[0..l.length-1]]="#{l[0..my_l-3]}#{l[my_l-2..my_l-1].reverse}"
  			my_mas<<[l[0..mylsize-1],"#{l[0..mylsize-3]}#{l[mylsize-2..mylsize-1].reverse}"]
  			
  			end

 	 	end
	end
	f.close
	my_mas.length
	#my_mas.each do |e|
	#	next if spell_check.include? e[0]
	#end

	#
end

def spell_check
	h={}
 IO.readlines("spell.txt").each do |e|
  h[e.chop]=true
  end
h
end

p find
#файлы запускать по очереди .. раздуплиться как быстрее обработать
#p my_hash