# Suppose you have a hash 

h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.

p h.fetch(:b)

# 2. Add to this hash the key:value pair `{e:5}`

h.merge!(:e => 5)
p h

# 3. Remove all key:value pairs whose value is less than 3.5

h.select! { |key, value| value >= 3.5}
p h

=begin 
1. h[:b]

2. h[:e] = 5

3.

  # one line version
  h.delete_if { |k, v| v < 3.5 }

  # multi-line version
  h.delete_if do |k, v|
    v < 3.5
  end

The first two are more essential than the solutions I came up with.
=end