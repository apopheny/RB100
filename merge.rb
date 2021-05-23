arr1 = { food: "taco", hobby: "fishing", job: "not nursing"}
arr2 = { food: "pizza", hobby: "guitar", job: "definitely not nursing"}

arr1.merge(arr2) { |key, old, new| new }

p arr1
p arr2

arr1.merge!(arr2) { |k, o, n| n }

p arr1
p arr2