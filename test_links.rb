errors_count = 0

Dir.glob("build/documentation/**/*.html") do |html_file|
  File.open(html_file, "r") do |infile|
    line_counter = 0
    while (line = infile.gets)
      line_counter = line_counter + 1
      parts = line.scan(/<a.*href="\/.*".*>.*<\/a>/i)
      next if parts.nil?
      parts.each do |part|
        if !part.include? "documentation"
          puts "\e[0;31mlink error\e[m\n"
          puts "\e[0;33m#{html_file}:#{line_counter}\e[m => " + part[1..part.length-2]
          errors_count = errors_count + 1
        end
      end
    end
  end
end

if errors_count > 0
  puts "\e[0;31m#{errors_count} link errors in documentation\e[m"
  exit 1
end
