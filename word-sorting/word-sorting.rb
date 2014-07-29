class WordSorting

	def sort(param)
		array = param.split(" ").sort_by!{ |m| m.downcase }
		puts array
	end
end

# WordSorting.new.sort("Have a nice day.")
# WordSorting.new.sort("Fools fall for foolish follies.")
WordSorting.new.sort("Ruby is a fun language!")