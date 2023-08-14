/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
private var anyCollection: [Any] = [3.14, 42, 12, 21.12, "Hello", true]
print("Collection content: \(anyCollection)")
print("------------------------")
/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
for element in anyCollection {
    if let intValue = element as? Int {
        print("Integer: \(intValue)")
    } else if let doubleValue = element as? Double {
        print("Double: \(doubleValue)")
    } else if let stringValue = element as? String {
        print("String: \(stringValue)")
    } else if let boolValue = element as? Bool {
        print("Boolean: \(boolValue)")
    }
}
print("------------------------")
/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите крассиво на консоль пары ключ/значения для всех элементов коллекции.
 */
private var someDictionary: [String: Any] = ["key1": 3.14, "Swift": 42, "key3": "Hello", "key2": true, "key4": "12"]

for (key, value) in someDictionary {
    print("Key: \(key), value: \(value)")
}
print("------------------------")
/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
private var total: Double = 0

for value in someDictionary.values {
    if let integer = value as? Int {
        total += Double(integer)
    } else if let double = value as? Double {
        total += double
    } else if let string = value as? String {
        total += 1
    } else if let booleanValue = value as? Bool {
        if booleanValue {
            total += 2
        } else {
            total -= 3
        }
    }
}

print("Value of total: \(total)")
print("------------------------")
/*:
 Обнулите переменную `total` и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
total = 0.0

for (_, value) in someDictionary {
    if let integer = value as? Int {
        total += Double(integer)
    } else if let double = value as? Double {
        total += double
    } else if let string = value as? String {
        if let convertValue = Double(string) {
            total += convertValue
        }
    }
}

print("Final value of total: \(total)")
