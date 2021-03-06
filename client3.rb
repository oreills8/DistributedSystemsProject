require 'socket'      # Sockets are in standard library

hostname = 'localhost'
port = 2500
IPAddress = Socket::getaddrinfo(Socket.gethostname,"echo",Socket::AF_INET)[0][3]
chatroom = "distributedSystems"
clientName = "Cathal"

s = TCPSocket.open(hostname, port)

#test of returning available files in file server
s.puts "JOIN_CHATROOM: #{chatroom}\nCLIENT_IP: #{IPAddress}\nPORT: #{port}\nCLIENT_NAME: #{clientName}\n"
s.puts "CHAT: #{1}\nJOIN_ID: #{1}\nCLIENT_NAME: #{clientName}\nMESSAGE: #{"Cathal is here"}\n"
s.puts "AVAILABLE_FILES\n"

begin
  while line = s.gets   # Read lines from the socket
    print line
  end 
end until line == "Closing the connection." 
puts "Connection Lost"     
s.close               # Close the socket when done
