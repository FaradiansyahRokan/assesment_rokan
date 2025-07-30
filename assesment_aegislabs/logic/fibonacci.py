# no.2
# bikin fungsi yang nerima sebuah angka x, terus menghasilkan x angka pertama dari deret fibonacci.

def fibonacci(x):
    result = []
    a, b = 0, 1
    for _ in range(x):
        result.append(a)
        a, b = b, a + b
    return result


print(fibonacci(5))

print(fibonacci(13))

print(fibonacci(20))