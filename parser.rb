require_relative 'lib/log_parser'
require_relative 'lib/webpage_query'

if ARGV.length.zero?
  puts 'Usage: ruby parser.rb <filename>'
  exit
end

log_file = ARGV[0]

unless File.exist?(log_file)
  puts "File not found #{log_file}"
  exit
end

webpages = LogParser.new(log_file).read
webpage_query = WebpageQuery.new(webpages)

res = webpage_query.visits

puts 'Most visited pages:'

res.each do |key, value|
  puts "#{key} #{value} visits"
end

puts 'Most unique views:'

res = webpage_query.unique_views
res.each do |key, value|
  puts "#{key} #{value} unique views\n"
end
