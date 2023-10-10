import  matplotlib.pyplot as plt



# You get an array of numbers, return the sum of all of the positives ones.

# Example [1,-4,7,12] => 1 + 7 + 12 = 20

# Note: if there is nothing to sum, the sum is default to 0.
array1 = [1,-4,7,12]

def return_pos(y):
    sum_list = sum([])
    for x in y:
        if x >= 0:
            sum_list.append(x)
    return sum_list

return_pos([1,-4,7,12])

