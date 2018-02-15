class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    a.map! {|s| s.to_i}
    a.map! {|i| i += 2}
    a_evens = []
    a.each do |num|
    	if num%2==0
    		a_evens.push(num)
    	end
    end
    a_evens.uniq!
    a_lessthan10 = []
    a_evens.each do |less|
    	if less<10
    		a_lessthan10.push(less)
    	end
    end
    sum = 0
    a_lessthan10.each do |add|
    	sum += add
    end
    return sum
  end
end
