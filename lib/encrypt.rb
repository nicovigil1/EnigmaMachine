require "./lib/enigma"

message, encrypt = ARGV
enigma = Enigma.new

the_message = File.new(message, "r")
encrypted_file = File.new(encrypt, "w")

encrypt_this = enigma.encrypt(the_message.read.chomp.downcase)


encrypted = encrypted_file.write(encrypt_this)
