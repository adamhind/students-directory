def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_name(students)
   students.each_with_index do |student, index|
    puts "#{(index + 1)}. #{student[:name]}, (#{student[:cohort]} cohort.)"
   end
 end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp 
  while !name.empty? do 
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def interactive_menu 
  students = []
  loop do 
    puts "1. Input students"
    puts "2. Print student list"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_name(students)
      print_header
      print_footer(students)
    when "9" 
      exit 
    else 
      puts "I don't understand, try again."
    end
  end
end

interactive_menu