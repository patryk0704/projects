puts "welcome in your to-do-list"


class TodoList
    attr_accessor :list

    def initialize
        @list = []
    end

    def add(item)
        @list.push(item)
    end

    def remove(index)
        @list.delete_at(index)
    end

    def display
        puts "Todo list:"
        @list.each_with_index do |item, index|
            puts "#{index + 1}. #{item}"
        end
    end
end

list = TodoList.new

loop do
    puts "Enter 'a' to add a to-do-list item, 'r' to remove an item or 'q' to quit and sjow the list"
    input = gets.chomp

    case input
    when "a"
        puts "Enter a to-do-list item"
        item = gets.chomp
        list.add(item)
    when "r"
        list.display
        puts "Enter the number of the item to remove"
        index = gets.chomp.to_i -1
        list.remove(index)
    when "q"
        break
    end
end

list.display
