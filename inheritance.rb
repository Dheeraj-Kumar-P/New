class A
  def a
    puts "Hello"
  end
end
class B<A
  def a
    super
  end
end
class C<B
  def a
    super
  end
end
c=C.new
c.a