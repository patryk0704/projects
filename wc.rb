filename = "kurs.txt"

word_count = Hash.new(0)

File.open(filename, "r") do |file|
  file.each_line do |line|
    line.downcase.split.each do |word|
      word_count[word] += 1
    end
  end
end

puts "Word count:"
word_count.each do |word, count|
  puts "#{word}: #{count}"
end