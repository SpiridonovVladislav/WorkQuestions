import re 

def check_number(str):
    number_str = re.findall(r"\d+\\+\d+",str) # Регулярное выражения для извлечение цифр и знака "\"
    for i in range (len(number_str)):
        if(len(number_str[i]) < 10): # Проверка на то , является ли номер особенным
            if (number_str[i].find("\\") < 4): # Проверка на то , удовлетворяет ли первая часть числа условию особого номера
                number_str[i]= "0" * (4 - number_str[i].find("\\")) +  number_str[i] # Добавление нулей в зависимости от количества чисел в первой части
            if (len(number_str[i]) - number_str[i].find("\\") < 6): # Проверка на то , удовлетворяет ли вторая часть числа условию особого номера
                number_str[i] = number_str[i][:number_str[i].find("\\") +1] + "0" * ( 10 - len(number_str[i]))  + number_str[i][number_str[i].find("\\") +1:] # Добавление нулей в зависимости от количества чисел во второй части
    for i in range (len(number_str)): # Вывод особых номеров
        print(number_str[i])
    
initial_str = r"Адрес 5467\456. Номер 405\549"
check_number(initial_str)

#check_number(input()) # Для ручного ввода с клавиатуры.