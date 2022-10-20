#Черняєв Андрій ІПС-32
class Car
  def initialize(id,mark,model,year,color,price,number)
    @id=id
    @mark=mark
    @model=model
    @year=year
    @color=color
    @price=price
    @number=number
  end

  def mark()
    return @mark
  end

  def year()
    return @year
  end

  def model()
    return @model
  end

  def price()
    return @price
  end

  def print()
    puts "#{@id}: #{@mark} #{@model} #{@year} #{@color} #{@price} #{@number}"
  end

end

def showByMark(currentMark, dataset)
  for i in 0..dataset.length do
    if dataset[i].mark() == currentMark
      dataset[i].print()
    end
  end
end

def showByModelAndYear(currentModel, moreThanYears, dataset)
  for i in 0..dataset.length do
    if dataset[i].model() == currentModel
      if (2022 - dataset[i].year()) > moreThanYears
        dataset[i].print()
      end
    end
  end
end

def showByYearAndPrice(currentYear, morethanPrice, dataset)
  for i in 0..dataset.length do
    if dataset[i].year() == currentYear
      if dataset[i].price > morethanPrice
        dataset[i].print()
      end
    end
  end
end

car1=Car.new(1, "Porsche", "Cayenne", 2010, "Black", 100000, "AE 4308 AC")
car2=Car.new(2, "BMW", "X5", 2014, "White", 300000, "AE 1488 HH")
car3=Car.new(3, "Mercedes", "Maybach", 2009, "Green", 90000, "AE 5078 KA")
car4=Car.new(4, "Volkswagen", "Golf", 2011, "Yellow", 40000, "AE 2298 MK")

Cars = [car1,car2,car3,car4]
puts "Task a"
showByMark("Mercedes", Cars)
puts "Task b"
showByModelAndYear("Cayenne", 5, Cars)
puts "Task c"
showByYearAndPrice(2011, 500, Cars)