# calculate lenght of iterable object
# create a set from a object
# create a range funtion with start stop and step


# calculate lenght of iterable object
def cal_len(x:str):
    """Returns the lenght of an iterable object"""
    return len(x)
print(cal_len([1,2,3,4,5]))


# create a set from a object
#def obj_set_conversion(x):
def obj_set_conversion(x):
    return set(x)

print(obj_set_conversion([132132,132,132,13,2]))

def new_range(start_x,stop_y,step_z):
    return list(range(start_x, stop_y, step_z))
print(new_range(5,100,3))


# calculate square footage 
def calculate_sqft(l,w):
    """
    Returns the square footage when a length and hieght is entered.   L and H need to be in feet
    """
    return l * w


# 2 * pi * radius

def calc_circ(radius):
    """
    Returns the circumference of a circle when the radius is given
    """
    return 2 * 3.14 * radius


# calculate inches to feet
def inches_to_feet(inches):
    return inches / 12



from the_UPER_method import uper_method
help(uper_method)

