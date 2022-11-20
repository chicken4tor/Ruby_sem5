
class MailSort
  attr_accessor :city, :street, :house, :apartment, :destination, :value
  @@base = Array.new
  def initialize(city, street, house, apartment, destination, value)
    @city = city
    @street = street
    @house = house
    @apartment = apartment
    @destination = destination
    @value = value
    @@base << self
  end

  def self.numOfMailsInKyiv
    puts("Результат запиту: ")
    print((@@base.find_all{|element|(element.city=="Kyiv")}).length," посилки відправлено в Київ")
  end

  def self.numOfMails10uah
    puts("Результат запиту: ")
    res = @@base.find_all{|element|(element.value >10)}
    res = res.map{|x| x.city}.uniq
    res.unshift(res.length)
    print(res[0], " посилок вартістю більше 10 було відправлено\n")
    print("Список міст: ",res[1..-1])
  end

  def self.numOfRepDest
    puts("Результат запиту: ")
    res = @@base.select{|elem| @@base.count{|elem2| elem2.city==elem.city && elem2.street==elem.street && elem2.house==elem.house && elem2.apartment==elem.apartment}>1}
    temp = res.map{|x|x.destination}.uniq
    result = Array.new
    (temp.length).times do|int|
      result.append(temp[int].to_s+" - "+res.count{|x|x.destination == temp[int]}.to_s)
    end
    puts("(людина - кількість)")
    result
  end
end

def randStr(num)
  value = ""
  num.times{value  << (97 + rand(25)).chr}
  value
end

arr = Array.new

arr.append(MailSort.new("Kyiv","Kalinina",5,3,"Andrii",10))
arr.append(MailSort.new("Kyiv","Kalinina",5,3,"Andrii",10))
arr.append(MailSort.new("Zhytomyr","Furihata",32,94,"Vlada",4))
arr.append(MailSort.new("Kyiv","Peremohi",3,11,"Oleg",3))
arr.append(MailSort.new("Kyiv","Shevchenka",14,14,"Andrii",14))
arr.append(MailSort.new("Lviv","Kalinina1",1,1,"Alina",28))
arr.append(MailSort.new("Lviv","Kalinina1",1,1,"Alina",28))
arr.append(MailSort.new("Odesa","str1",1,1,"Alina",36))
arr.append(MailSort.new("Dnipro","str2",2,2,"Alina",47))

puts(MailSort::numOfMailsInKyiv)
puts(MailSort::numOfMails10uah)
puts(MailSort::numOfRepDest)



