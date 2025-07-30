# no.4
# bikin fungsi buat nyari huruf yang paling sering muncul dari sebuah string.

from collections import Counter

def most_frequent_letter(text):
    text = text.lower()
    letters = [c for c in text if c.isalpha()]
    
    if not letters:
        return None 
    
    counter = Counter(letters)
    most_common = counter.most_common(1)[0][0]   
    return most_common

print(most_frequent_letter("Hello World"))
