trek_list = File.open("index.erb").readlines.each {|item| item.delete!("\n")}

trek_list.each do |item|
  item.prepend "<li><a href='#'>"
  item << "</a></li>"
end

File.open("index.erb", "w+") do |f|
  trek_list.each {|element| f.puts(element) }
end
