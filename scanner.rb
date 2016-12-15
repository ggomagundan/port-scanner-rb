require 'socket'
require 'concurrent-edge'

TIMEOUT = 2

def scan_port(port, host)
  socket      = Socket.new(:INET, :STREAM)
  remote_addr = Socket.sockaddr_in(port, host)

  begin
    socket.connect_nonblock(remote_addr)
  rescue Errno::EINPROGRESS
  end

  _, sockets, _ = IO.select(nil, [socket], nil, TIMEOUT)
  res = ""

  if sockets
    res =  "Port #{port} is open"
  else
    res =  "Port #{port} is closed"
  end
  res
end


 PORT_LIST = [21,22,23,25,53,80,443,3306,8080]
 HOST = "127.0.0.1"
# threads   = []

jobs = PORT_LIST.map do |port|
  Concurrent.future { scan_port(port, HOST)  }.
    then {|res| puts res}.
    rescue {|e| e.class }
end

# PORT_LIST.each { |i| threads << Thread.new { scan_port(i) } }
Concurrent.zip(*jobs).value
# threads.each(&:join)
