local nmap = require "nmap"
local shortport = require "shortport"

-- Run only on ports 80, 22, and 21
portrule = shortport.port({80, 22, 21})

-- Main action function
action = function(host, port)
  if port.state == "open" then
    return "Port " .. port.number .. " of this host is open"
  else
    return "Port " .. port.number .. " of this host is closed"
  end
end
