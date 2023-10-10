def count_positives_sum_negatives(arr):
    neg_nums = []
    pos_nums = []

    if len(arr) <= 0:
        return []
    
    for i in arr:
        if i > 0:
            pos_nums += 1
        elif i < 0: 
            neg_nums += i
    
    return [pos_nums, neg_nums]



        

       

print(count_positives_sum_negatives([1,2,3,4,5,-1,-2,-3]))

# return an array