# no.2
# bikin fungsi yang nerima sebuah angka x, terus menghasilkan x angka pertama dari deret fibonacci :
# 0, 1, 1, 2, 3, 5, 8, 13, setiap angka adalah hasil dari penjumlahan 2 angka sebelumnya.

def fibonacci(x):
    result = []
    a, b = 0, 1
    for _ in range(x):
        result.append(a)
        a, b = b, a + b
    return result


print(fibonacci(5))    
# output: [0, 1, 1, 2, 3]

print(fibonacci(13))   
# output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

print(fibonacci(20))   
# output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584]