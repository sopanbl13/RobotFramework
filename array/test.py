def fungsi_array(arr):
    
    evens = [x for x in arr if x % 2 == 0]
    odds = [x for x in arr if x % 2 != 0]
    
    evens.sort(reverse=True)
    odds.sort(reverse=True)
    
    return evens + odds

input_array = [3, 2, 5, 1, 8, 9, 6]
output_array = fungsi_array(input_array)
print(output_array)
