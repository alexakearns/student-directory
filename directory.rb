students = [
  [name: "Dr. Hannibal Lecter", cohort: :november],
  [name: "Darth Vader", cohort: :november],
  [name: "Nurse Ratched", cohort: :november],
  [name: "Michael Corleone", cohort: :november],
  [name: "Alex DeLarge", cohort: :november],
  [name: "The Wicked Witch of the West", cohort: :november],
  [name: "Terminator", cohort: :november],
  [name: "Freddy Kruger", cohort: :november],
  [name: "The Joker", cohort: :november],
  [name: "Joffery Baratheon", cohort: :november],
  [name: "Norman Bates", cohort: :november]
]
def print_header
  puts "The students of Villians Academy"
  puts "-------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#call methods
print_header
puts(students)
print_footer(students)
