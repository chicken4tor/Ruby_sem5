# Черняєв Андрій ІПС-32
# Варіант 8
# Обмеження: b != 1; x != 3pi/2 кожні 360 градусів : (Math.tan(pi/4 + x/2)) != 0

pi = Math::PI
e = Math::E

puts "Введіть константу b != 1"
b = gets.chomp.to_i
puts "Введіть константу x"
x = gets.chomp.to_i
puts "Введіть константу gamma"
gamma = gets.chomp.to_i

if b==1 || (Math.tan(pi/4 + x/2)) == 0
  puts "Помилка: b != 1 та x != 3pi/2 кожні 360 градусів"
else
  oper1 = (Math.acos(Math.sin(x/2) / ((b-1) ** (1/3) )))
  oper2 = (Math.log10(e**gamma + 4.1*(10**2.1)))
  oper3 = (Math.tan(pi/4 + x/2))
  result = oper1+(oper2/oper3)
  puts "Результати обчислення виразу: #{result}"
end
