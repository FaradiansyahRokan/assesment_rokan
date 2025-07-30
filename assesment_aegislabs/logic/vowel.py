# no.5
# bikin fungsi yg ngitung jumlah huruf vokal dan konsonan dari sebuah kalimat.

def count_vowels_consonants(text):
    vowels = "aeiou"
    text = text.lower()
    v_count = 0
    c_count = 0

    for char in text:
        if char.isalpha():
            if char in vowels:
                v_count += 1
            else:
                c_count += 1

    return f"{v_count} Vowels and {c_count} Consonants"


print(count_vowels_consonants("Hallo Nama Saya Rokan"))

