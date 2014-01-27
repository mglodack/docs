require 'nokogiri'
require 'open-uri'

errors_count = 0
page_links = []
all_links = []

Dir.glob("build/documentation/**/*.html") do |html_file|
  doc = Nokogiri::HTML(File.open(html_file))
  links = doc.search("a").map { |link| link['href'] }

  uniq_links = links.select do |link|
    !link.nil? &&
    !link.empty? &&
    !link.start_with?("#") &&
    !all_links.include?(link)
  end

  all_links = all_links + uniq_links

  page_links << {
      page: html_file,
      page_links: uniq_links
    }
end

count = 0
page_links.each do |page_link|
  count = count + page_link[:page_links].size
  next if page_link[:page_links].empty?

  puts "=> Testing uniq links for page: #{page_link[:page]}\n"

  page_link[:page_links].each do |url|
    url = "https://www.codeship.io" + url unless url.match(/(http:\/\/|https:\/\/)/)

    puts "\e[0;33m==> checking for: #{url}\e[m\n"
    status = open(url).status # ["200", "OK"]
    if status[0] == "404"
      puts "\e[0;31mCould not reach #{url}\e[m\n"
      errors_count = errors_count + 1
    end
  end
end

puts "all links (#{all_links.size}) should == uniq links (#{all_links.size})"

if errors_count > 0
  puts "\e[0;31m#{errors_count} urls not reachable\e[m"
  exit 1
end
