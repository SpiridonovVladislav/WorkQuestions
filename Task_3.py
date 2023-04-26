
def max_number_concatenation(l_str):
    l_str.sort(reverse=True)
    final_str = "".join(l_str)
    print(final_str)


n = int(input("Введите кол-во строк : "))
l_str = [ input(f"Введите строку №  {i+1} : ") for i in range(n) ]
max_number_concatenation(l_str)