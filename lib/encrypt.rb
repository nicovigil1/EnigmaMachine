require "./lib/enigma"
require "pry"

message, encrypt = ARGV
enigma = Enigma.new

the_message = File.new(message, "r")
encrypted_file = File.new(encrypt, "w")

encrypt_this = enigma.encrypt(the_message.read.chomp.downcase)


encrypted_file.write(encrypt_this[:encryption])

puts "Created 'encrypted.txt' with the key #{encrypt_this[:key]} and date #{encrypt_this[:date]}"
