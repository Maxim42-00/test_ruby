# Квадратное уравнение

puts "Введите коэффициенты квадратного уравнения a, b и c:"
print "a=";
a = gets.to_f;
print "b=";
b = gets.to_f;
print "c=";
c = gets.to_f;

d = b*b - 4*a*c;

if d>=0
    sqrt_d = Math.sqrt d;
end

x1=0;
x2=0;

if d>0
    x1 = ((-b) - (sqrt_d)) / (2*a);
    x2 = ((-b) + (sqrt_d)) / (2*a);
    puts "дискриминант положительный, два корня: #{x1}, #{x2}";
elsif d==0
    x1 = x2 = (-b) / (2*a);
    puts "дискриминант равен нулю, один корень: #{x1}";
else
    puts "дискриминант отрицательный, нет корней";
end;