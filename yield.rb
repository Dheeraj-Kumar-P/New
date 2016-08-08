def A
  puts "Hi!"
  yield
  puts "World"
end
A{puts "Hello"}