def uper_method():

    '''
    UPER Method:

    Understand: 
        Gather all info relevant to the output

    Plan: 
        write psuedo-code.   
        ex. if the list value is equal to "A": I want to .drop() the value from the list. 

    Execute: 
        Execute the plan we created, By the time we reach this step, its almost copy paste.

    Refactor: 
        Go back over the problem with the mindset of how do I make this run faster/better?
    '''
    return True







import math


# SUM OF SMALLEST NUMBERS
# Given a 2D ( nested ) list/array of size m * n, your task is to find the sum of the minimum values in each row.
# For Example:
# INPUT: [[ 1, 2, 3, 4, 5 ],[ 5, 6, 7, 8, 9 ],[ 20, 21, 34, 56, 100 ]]
# OUTPUT:26
# [ [ 1, 2, 3, 4, 5 ] # minimum value of row is 1
# , [ 5, 6, 7, 8, 9 ] # minimum value of row is 5
# , [ 20, 21, 34, 56, 100 ] # minimum value of row is 20
# ]
# So the function should return 26 because the sum of the minimums is 1 + 5 + 20 = 26.
# Note: You will be always given non-empty list containing Positive values.
# INPUT: [[ 7, 9, 8, 6, 2 ], [ 6, 3, 5, 4, 3 ], [ 5, 8, 7, 4, 5 ]]
# OUTPUT: 9
# INPUT [[ 11, 12, 14, 54 ], [ 67, 89, 90, 56 ], [ 7, 9, 4, 3 ], [ 9, 8, 6, 7 ]]
# OUTPUT: 76


a = [1,2,3,4,5],[5,6,7,8,9],[20,21,34,56,100]
b = [[ 11, 12, 14, 54 ], [ 67, 89, 90, 56 ], [ 7, 9, 4, 3 ], [ 9, 8, 6, 7 ]]
def sum_of_smallest(a):
    min_vals =[]
    for i in a:
        min_vals.append(min(i))
    return sum(min_vals)

print(sum_of_smallest(a))


def sum_of_smallest(b):
    min_vals =[]
    for i in b:
        min_vals.append(min(i))
    return sum(min_vals)

print(sum_of_smallest(b))


def sum_of_smallest_comp(a):
    return sum(min(i) for i in a)
print(sum_of_smallest_comp(a))


