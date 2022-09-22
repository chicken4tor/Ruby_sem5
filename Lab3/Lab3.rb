#Черняєв Андрій ІПС_32
# варіант 8

A = false
B = false
C = true

X = 1
Y = 16
Z = -40

#1.1 завдання

puts "1 приклад: #{!(A or B) and (A and !B)}"
puts "2 приклад: #{((Z != Y).object_id <= (6 >= Y).object_id) and A or B and C and X >= 1.5}"
puts "3 приклад: #{((8 - X * 2) <= Z) and ((X * X) >= (Y * Y)) or (Z >= 15)}"
puts "4 приклад: #{(X > 0) and (Y < 0) or Z >= (X * Y + (-Y / X)) + (-Z) * (-2)}"
puts "5 приклад: #{!(A or B and !(C or (!A or B)))}"
puts "6 приклад: #{X * X + Y * Y >= 1 and X >= 0 and Y >= 0}"
puts "7 приклад: #{(A and (C and B != B or A) or C) and B}"

#1.2 завдання

N = -2
M = 1
P = true
Q = true

puts "Відповідь 1.2: #{((P and Q) == !(!P or !Q) and (M * M + N * N < 4) and (M + N < 1))}"

#2 завдання

y=0
puts "Введіть x: "
x = gets.chomp.to_f

if x > -4.0  && x<=0.0
  y = (((x-2.0).abs)/((x**2.0)*Math.cos(x)))**(1.0/7.0)
end
if x>0.0 && x<12.0
  y = 1.0 / ((Math.tan(x+(1.0/Math.exp(x))))/(Math.sin(x))**2.0)**(2.0/7.0)

end
if x<-4.0 && x>12.0
  y = 1.0 / (1.0+(x/(1.0+(x/(1.0+x)))))
end
case x
when -4.0..0.0 then
  y = (((x-2.0).abs)/((x**2.0)*Math.cos(x)))**(1.0/7.0)
when 0...12 then
  y = 1.0 / ((Math.tan(x+(1.0/Math.exp(x))))/(Math.sin(x))**2.0)**(2.0/7.0)
when x<-4 then
  y = 1.0 / (1.0+(x/(1.0+(x/(1.0+x)))))
when x>12
  y = 1.0 / (1.0+(x/(1.0+(x/(1.0+x)))))

end
puts "y = #{y}"

#3 завдання варіант 3

puts "Enter n"
n = gets.chomp.to_f

def fact(f)
  if f == 0
    1
  else
    f * fact(f-1)
  end
end

result = 0

for n in 1..n
  result += (x ** n) / (fact(n))
end

puts "#{result + 1}"

#Завдання 4

def factorial n
  n > 1.0 ? n * factorial(n - 1.0) : 1.0
end
e = 0.00001
ans = 0.0
n=2.0
t=0.0
while t < e
  t = ( factorial(n-1.0) / factorial(n+1.0) )**(n*(n+1.0))
  ans+= t
  n+=1.0
end
puts "Відповідь 1= #{ans}"

e = 0.00001
ans = 0.0
n=1.0
t=0.0
while t < e
  t = ((-1)**n) * (1/n**2)
  ans+= t
  n+=1.0
end
if ans == ((Math::PI)**2)/12
  puts "Відповідь 2= true"
else
  puts "Відповідь 2= false"
end


e = 0.00001
ans = 0.0
n=1.0
t=0.0
while t < e
  t = ( (factorial(3*n-1)) * (factorial(3*n)) )/ ( (factorial(4*n)) * (3**(2*n)) * (factorial(2*n)) )
  ans+= t
  n+=1.0
end
puts "Відповідь 3= #{ans}"


#5 завдання
puts "Ведіть N"
h=gets.chomp.to_f
puts "Введіть c"
c=gets.chomp.to_f
x=1.0
stp = h/(h+c)
puts "Відповідь 1:"
1.0.step(h, stp) do
  y = ( (2.0*x**(-1.0/3.0)) / ((x**(2.0/3.0))) - (3*x**(-1.0/3.0)) ) - ( (x**(2.0/h)) / ( (x**(5.0/3.0)) - ((x**(2.0/h)) ) ) - ( (x+1.0) / ((x**2.0) - 4.0*x +3.0) ))
  x+=stp
  puts y
end

puts "Введіть N"
h=gets.chomp.to_f
puts "Введіть c"
c=gets.chomp.to_f
x=(Math::PI)/h
stp = Math::PI/(3.0*(h+c)/2.0)
puts "Відповідь 2:"
((Math::PI)/h).step(Math::PI, stp) do
  z = (Math.sin( (9.0*Math::PI/8.0) + (x/4.0) )**2.0) - (Math.sin( (7.0*Math::PI/h) + (x/(c**x)))**2.0)  + (Math.tan(2.0*x - 1)**(-1.0/x))
  x+=stp
  puts z
end

puts "Введіть N"
h=gets.chomp.to_f
puts "Введіть c"
c=gets.chomp.to_f
x=2.0
stp = c/(2*h)
puts "Відповідь 3:"
2.0.step(c, stp) do
  if x>2 && x<h
    f =  ( (2.0*x**(-1.0/3.0)) / ((x**(2.0/3.0))) - (3*x**(-1.0/3.0)) ) - ( (x**(2.0/h)) / ( (x**(5.0/3.0)) - ((x**(2.0/h)) ) ) - ( (x+1.0) / ((x**2.0) - 4.0*x +3.0) ))
    puts f
  end
  if x>h && x<2*h
    f = (Math.sin( (9.0*Math::PI/8.0) + (x/4.0) )**2.0) - (Math.sin( (7.0*Math::PI/h) + (x/(c**x)))**2.0)  + (Math.tan(2.0*x - 1)**(-1.0/x))
    puts f
  end
  x+=stp

end