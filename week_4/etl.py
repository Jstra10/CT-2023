import pandas as pd 
import seaborn as sns
import matplotlib.pyplot as plt

class Invoice:
    def __init__(self, filepath = r'Coding_Temple\week_4\Invoices-with-Merged-Categories-and-Merged-Amounts.csv')
        self.url = filepath
        self.sql_url = 'postgres://abupacvk:nWxHOrYOi95xbRNh73BVh7LwFyt7aN8T@peanut.db.elephantsql.com/abupacvk'

    def wrangle(filepath):
        self.df = pd.read_csv(filepath)
        self.df.columns = self.df.columns.str.lower().str.replace(' ', '_').str.strip()
        new_cat = [self.df['category'][index].split(sep='|') for index in range(len(self.df))]
        new_prices = [self.df['amount'][index].split(sep='|') for index in range(len(self.df))]
        order_ids = list(self.df['order_id'])
        c = 0
        for l1, l2 in zip(new_cat, new_prices):
            print(l1, l2)
            for cat, price in zip(l1, l2):
                print(f'{order_ids}, {cat} , {price}')
                self.df.loc[len(self.df.index)] = [order_ids[c], cat, price.strip()]
        
            c += 1
        return self.df[4:].reset_index(drop = True)
    
    def create_vis(self, cat='category'):
        sns.histplot(data=self.df, y= cat)
        return plt.savefig(f'histogram of the {cat} columng')
    
    def create_sql('invoices', con=self.sql_url, if_exists='replace')

    def create_csv(self, df:pd.DataFrame, filename:str):
        df.t
