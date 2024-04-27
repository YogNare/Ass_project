def add_prefix(input_file_path, output_file_path):
    # Открываем исходный файл для чтения
    with open(input_file_path, 'r') as input_file:
        # Читаем содержимое файла
        content = input_file.read()
    
    # Разделяем содержимое файла по пробелам
    numbers = content.split()
    
    # Преобразуем числа, добавляя префикс '0x'
    prefixed_numbers = ['0x' + number for number in numbers]
    
    # Объединяем преобразованные числа в строку
    prefixed_content = ' '.join(prefixed_numbers)
    
    # Открываем файл для записи
    with open(output_file_path, 'w') as output_file:
        # Записываем преобразованное содержимое в файл
        output_file.write(prefixed_content)

# Пути к исходному и выходному файлам
input_file_path = 'output.img'
output_file_path = 'output_file.txt'

# Вызываем функцию для добавления префиксов и записи результата в файл
add_prefix(input_file_path, output_file_path)

print("Программа успешно завершила работу. Результат записан в файл:", output_file_path)
