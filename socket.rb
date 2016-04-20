require 'socket'               # Get sockets from stdlib
require 'pry'

server = TCPServer.open(9292)  # Socket to listen on port 9292
puts "Server is running on port 9292"
loop {                         # Servers run forever
  client = server.accept       # Wait for a client to connect
  puts client.recv(1000000)
  client.puts "Go check the console!"
  client.close                 # Disconnect from the client
}

