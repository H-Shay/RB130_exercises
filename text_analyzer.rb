class TextAnalyzer
  def process
    file = File.open("sample_text.txt")
    file_data = file.read
    yield(file_data)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file_data| puts "#{file_data.split(/\n\n/).length} paragraphs"}
analyzer.process { |file_data| puts "#{file_data.lines.count} lines" }
analyzer.process { |file_data| puts "#{file_data.scan(/\w+/).count} words"}