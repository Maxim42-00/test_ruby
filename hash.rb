# Сумма покупок

hash = {};   #хэш

while 1
    print "\nitem_name: ";
    item_name = gets().chomp();
    break if(item_name == "stop")
    print "item_price: ";
    item_price = gets().chomp().to_f();
    print "item_number: ";
    item_number = gets().chomp().to_f();

    hash["#{item_name}"] = {"item_price" => item_price, "item_number" => item_number};
end;

puts "\nХэш";
puts hash;

puts "\nСуммарная оплата за каждый товар";
total = 0;
for item in hash.keys;
    print item;
    print ":  ";
    cur_price = hash[item]["item_price"]*hash[item]["item_number"];
    puts cur_price;
    total += cur_price;
end;

puts "\nИтоговая сумма";
puts total;