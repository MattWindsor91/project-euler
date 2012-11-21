require 'prime'
class Integer  
  def factor_count
    prime_division.map {|prime, count| count + 1 }.reduce(&:*)
  end  

  def factors
    [1] + self.expanded_prime_division.all_permutations.map {|permutations| permutations.map {|permutation| permutation.reduce(&:*)}}.flatten.uniq << self
  end
  
  def triangle
    self * (self + 1) /2
  end
end

2.upto(10**100) do |n|
  (puts n.triangle; exit) if n.triangle.factor_count > 500 
end
