

file = File.open('base_exp.txt','r')
data = file.read

fixeddata = []

data = data.split

data.each_with_index{|x,i| fixeddata << [i,x.split(",")[1].to_f*Math::log(x.split(",")[0].to_f)]}

fixeddata.sort!{|x,y| x[1]<=>y[1]}

p fixeddata[0]
p fixeddata[-1]
