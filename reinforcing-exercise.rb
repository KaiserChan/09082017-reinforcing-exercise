seating_chart = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

# puts seating
# puts seating[0][1]


# seating.each_with_index do |row, row_index|
#   row.each_with_index do |seat, seat_index|
#     if seat == nil
#       puts "Row #{(row_index) + 1} seat #{(seat_index) + 1} is free"
#     end
#   end
# end

def seating_arrangement(seating_chart)

  puts "What is your name"
  name = gets.chomp

  seating_chart.each_with_index do |row, row_index|
    row.each_with_index do |seat, seat_index|
      if seat == nil
        puts "Row #{(row_index) + 1} seat #{(seat_index) + 1} is free"
        puts "Do you want to sit there? (y/n)"
        sit = gets.chomp

        if sit == "y"
          puts "#{name} will sit at row #{(row_index) + 1} seat #{(seat_index) + 1}"
          seating_chart[row_index][seat_index] = name
          return seating_chart
        end
      end
    end
  end
end

puts seating_arrangement(seating_chart)
