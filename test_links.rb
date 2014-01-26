Dir.glob("build/documentation/**/*.html") do |html_file|
  errors_count = 0
  File.open(html_file, "r") do |infile|
    line_counter = 0
    while (line = infile.gets)
      line_counter = line_counter + 1
      parts = line.scan(/<a.*href="\/.*".*>.*<\/a>/i)
      next if parts.nil?
      parts.each do |part|
        if !part.include? "documentation"
          puts "link error in file #{html_file}:#{line_counter} => " + part
          errors_count = errors_count + 1
        end
      end
    end
  end
  abort("link errors in documentation") if errors_count > 0
end
