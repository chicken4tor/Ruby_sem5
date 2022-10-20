#Черняєв Андрій ІПС-32
def function(xb,xe,dx,a,b,c)
  x=xb
  while x<=xe
    if c<0 && a!=0
      f=-a*x**2
    elsif c>0&&a==0
      f=(a-x)/(c*x)
    else
      f = x/c
    end

    if a.to_i!=0 || b.to_i!=0 || c.to_i!=0
      puts "x_i=#{x} : F=#{f}"
    else
      puts "x_i=#{x} : F=#{f.to_i}"
    end

    x+=dx

  end

end

function(0,10,2,4,5,6)
