class Integer
	def sequence_next
		if self.even?
			self/2
		else
			3*self +1
		end
	end

	def sequence_length
		length = 1
		current = self
		while current != 1
			current = current.sequence_next
			length +=1
		end
		length
	end
end

results = 1.upto(999_999).map(&:sequence_length)
puts results.find_index results.max
