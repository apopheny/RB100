# Multiple Cars

# Create a nested hash using the following data.

# Car
# type 	color 	year
# sedan 	blue 	2003
multiple_cars = {
  car: 
    {
      type: 'sedan', 
      color: 'blue', 
      year: 2003
    },
  truck:
    {
      type: 'pickup',
      color: 'red',
      year: 1998
    }
}

p multiple_cars
# Truck
# type 	color 	year
# pickup 	red 	1998

=begin
Solution

{
  car:   { type: 'sedan', color: 'blue', year: 2003 },
  truck: { type: 'pickup', color: 'red', year: 1998 }
}

Discussion

Just as you can nest arrays, you can also nest hashes. Once you understand clearly how key-value pairs work, you'll realize that keys and values can be any form of object. In our solution, the value of :truck is:

{ type: 'pickup', color: 'red', year: 1998 }

The value is the entire hash even though the nested hash contains its own key-value pairs.
=end