import random
class Deck:
    """Initializes deck creation. Enter True to continue, or False to stop initialization"""
    def __init__(self, initiate_deck = True):
        self.initiate_deck = initiate_deck
        self.deck_of_cards = []

        if self.initiate_deck:
            self.build_deck


    def build_deck(self):
        """Builds a deck of cards with a nested for statements. Cards are placet into deck_of_cards"""
        card_nums = list(range(1,14))
        suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']

        for suit in suits:
            for num in card_nums:
                self.deck_of_cards.append(f"{num} of {suit}")
        
    
    def shuffle_the_deck(self):
        """Shuffles the deck_of_cards"""
        random.shuffle(self.deck_of_cards)


    def fifty_two_pick_up(self):
        """A funny way to test the shuffle method and make sure my cards are actually created"""
        print(self.deck_of_cards)


    def deal_a_card(self):
        """Deals one card"""
        if self.deal_a_card:
            return self.deck_of_cards.pop()
        else:
            return "There is no way possible you ran out of cards"


class Player:
    def __init__(self, name):
        self.name = name
        self.player_hand = []
        self.score = 0


    def add_a_card_to_hand(self, card):
        """Adds a card (after dealer draws a card) to the players hand"""
        self.player_hand.append(card)
        self.calc_ttl_score()


    def ttl_score(self):
        self.score = sum(card[1] for card in self.player_hand)


    def show_hand(self):
        print(f"Current Hand: {self.player_hand}\nTotal Score: {self.score}")



    

    


