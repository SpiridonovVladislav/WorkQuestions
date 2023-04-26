
def add_bank(n,k,L):
    print(L)
    reverseL =  L[:] 
    reverseL.sort(reverse= True) # Копия начального списка расстояний отсортированных по убыванию
    biggest_elements = reverseL[0:int(k)]  # Список который содержит самые большие расстояния 
    for i in range(0,len(biggest_elements)):
        if (biggest_elements[i] in L):
            L.insert(L.index(biggest_elements[i]), round(biggest_elements[i] / 2)) # Добавление нового расстояния , которое будет уменьшено вдвое из-за нового банкомата
            L.insert(L.index(biggest_elements[i]), round(biggest_elements[i] / 2))
            L.remove(biggest_elements[i]) # Удаление старого расстояния
    print(L)

n = int(input("Введите кол-во банкоматов : "))
k = input("Введите кол-во дополнительных банкоматов : ")
L = [ int(input(f"Введите расстояние №  {i+1} : ")) for i in range(n) ]
add_bank(n,k,L)