require "./lib/enigma"
require "pry"

encrypted, decrypt, key, date = ARGV
enigma = Enigma.new

encrypted_file = File.new(encrypted, "r")
decrypted_file = File.new(decrypt, "w")

decrypt_this = enigma.decrypt(encrypted_file.read.chomp.downcase, key, date)
decrypted = decrypted_file.write(decrypt_this[:decryption])

puts "Created 'decrypted.txt' with the cracked key #{key} and date #{date}"
