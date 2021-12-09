@students = []

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_name
   @students.each_with_index do |student, index|
    puts "#{(index + 1)}. #{student[:name]}, (#{student[:cohort]} cohort.)"
   end
 end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do 
    @students << {name: name, cohort: :December}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def print_menu 
  puts "1. Input students"
  puts "2. Print student list"
  puts "9. Exit"
end

def show_students
  print_name
  print_header
  print_footer
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
   show_students
  when "9" 
    exit 
  else 
    puts "I don't understand, try again."
  end
end


def interactive_menu 
  loop do 
    print_menu
    process(gets.chomp)
  end
end

interactive_menu