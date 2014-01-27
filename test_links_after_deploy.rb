require 'nokogiri'
require 'open-uri'

errors_count = 0
all_links = []

Dir.glob("build/documentation/**/*.html") do |html_file|
  doc = Nokogiri::HTML(File.open(html_file))
  links = doc.search("a").map { |link| link['href'] }

  puts "=> Testing uniq links for page: #{html_file}\n"
  links.each do |link|
    next if link.nil? || link.empty? || link.start_with?("#") || all_links.include?(link)
    all_links << link

    link = "https://www.codeship.io" + link unless link.match(/(http:\/\/|https:\/\/)/)
    puts "\e[0;33m==> checking for: #{link}\e[m\n"
    status = open(link).status # ["200", "OK"]
    if status[0] == "404"
      puts "\e[0;31mCould not reach #{link}\e[m\n"
      errors_count = errors_count + 1
    end
  end
end

puts "links checked: #{all_links.size}"

if errors_count > 0
  puts "\e[0;31m#{errors_count} urls not reachable\e[m"
  exit 1
end
