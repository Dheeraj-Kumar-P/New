mthd= Class.new do
  def meth1(a=1,b=2,c=3)
    puts a,b,c
  end
end

a = mthd.new     
a.meth1          
