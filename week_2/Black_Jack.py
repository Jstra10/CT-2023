from random import shuffle
import random
from IPython.display import clear_output

class Deck:
    def __init__(self, you_want_to_play:bool):
        self.you_want_to_play = you_want_to_play
        
        
        
    def new_deck(self):
        suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
        card_numbs = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        deck = []
        self.deck = deck


        for suit in suits:
            for num in card_numbs:
                deck.append(f'{num} of {suit}')
            #print(deck) Tested to ensure all cards populated
        print(f"The deck has {len(deck)} cards.")

    def shuffle_the_deck(self):
        shuffle(self.deck)
        #print(self.deck) Tested to ensure deck shuffled
        



  


    #Create a constructor method for each deck - each deck should have a defined suit,numbers, and sets
    
    
    #Create a method to get a deck of cards    
    
    
    #Create method that will shuffle the deck


        
        
class Player:
    


    def __init__(self,user_name:str):
        self.user_name = user_name
        self.ttl_score = [0]



new = Deck(True)
new.new_deck()
new.shuffle_the_deck()





    #Create a constructor for the player class that will hold the hand,cards,and tally the score

    
    # Get total score based on the hand the user/player is given

    
    #Create a method to display a message if the user/player busts    

              
    #Create a method that will show the hand of the user/player

    
    #Create a method displaying blackjack to the player        

              
    #Create a method displaying if the user wins
    

class Human(): #A Human should have characteristics of a player
    pass #Remove before starting
    #Define a constructor that has the characteristics of player
  
        
    #Display the Human as a player
    

class Dealer():# A Human should have characteristics of a player
    pass #Remove before starting

    #Define a constructor that has the characteristics of player
    
    #Define a method to deal the player a hand
    
    #Define a method to give the player a hit if asked

    #Define a method that will tally and show the player ending hand
        
    #Display the Human as a Dealer
    

class Game:
    pass # Remove this before starting/running

    #Define a constructor that will have a dealer,human,and players(the dealer and the human)

    
    #Define a method to display a message if the user/player wins

              
    #Define a method to display a message if the user/player pushes

              
    #Define a method to display a message if the user/player loses    

def main():
    pass #Remove when starting
    #Create game logic here
    
    #Create your class instances

    
    #Ask the player how many decks they want to use - Then print the number of decks
    
    
    #Shuffle the deck
  
    
    #HINT: Continue to ask player if they want a hit or if they want to end the game
    #Ask the player if they want a hit
    #If they do, add the value of the card to their game tally
    #If they stand, keep the game tally where it is - add to dealer only
    
    
            
        #Also add to the tally of the dealer while their tally is less than 16
        #If the dealer and player tally are the same - display that result
        #If dealer wins - display that result
        #If player wins - display that result