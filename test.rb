module MODUL1

	def self.extended(base)
		#base.include(ClassM)  not work
		puts "123"
	end

		def self.included(base)
		base.extend(ClassM)
		puts "123"
		end

	def method_object;puts "I method object or class?";end

	module ClassM
		def method_class;puts "I method class";end
	end

end





