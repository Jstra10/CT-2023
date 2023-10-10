import re


# Dad Joke:
"""Make 'Eleven' even!"""

def make_even(dad_joke):
    """Makes 'Eleven' even"""
    findstuff = re.compile('[a-z]{3}[n]')
    punch_line = findstuff.findall(dad_joke)
    return punch_line

print(make_even("Eleven"))

