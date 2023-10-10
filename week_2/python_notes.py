#def rem_space(x):
#    x = x.replace(" ", "")
#    return x

# print(rem_space("t;lkre ;lkjad  lk jl; kj"))


# def rem_space(x):
#    return x.replace(" ", "")

#print(rem_space("t;lkre ;lkjad  lk jl; kj"))


alien_0 = {
    'color': 'green',
    'points': 5,
    }

print(alien_0)

alien_0['x_position'] = 0
alien_0['y_position'] = 25
print(alien_0)

print(f'The aliens color is {alien_0["color"]}')

# Don't give me five!
# In this kata you get the start number and the end number of a region and should
# return the count of all numbers except numbers with a 5 in it. The start and the
# end number are both inclusive!
# Examples:
# 1,9 -> 1,2,3,4,6,7,8,9 -> Result 8
# 4,17 -> 4,6,7,8,9,10,11,12,13,14,16,17 -> Result 12
# The result may contain fives. ;-)
# The start number will always be smaller than the end number. Both numbers can be
# also negative!


from IPython.display import clear_output

# Ask the user 5 bits of input: Do you want to : Show/Add/Delete/clear or Quit?

def manage_shopping_cart():
    # initialize an empty shopping cart as a dictionary
    shopping_cart = {}
    while True:
        choice = input("Show/Add/Delete/Clear or Quit ")
        print("Lets build a shopping cart!")
        if choice.lower() == 'show':
            print(f"Here is your Cart: \n{shopping_cart} ")

        elif choice.lower() == 'add':
            add_item = input("Enter the item do you want to add ")
            quantity = input('Enter the quantity: ')
            shopping_cart[add_item] = quantity

        elif choice.lower() == 'delete':
            deleted_items = input("Enter the item you would like to delete? ")
            if deleted_items.lower() in shopping_cart:
                del shopping_cart[deleted_items]
                print(f"Your item {choice} has been removed ")

        elif choice.lower() == 'clear':
            shopping_cart.clear

        elif choice.lower() == 'quit':
            break

        else:
            print("Are you crazy!!!?!?!?!? enter a valid response ")

manage_shopping_cart()







