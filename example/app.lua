package.path = package.path .. ';../?.lua'
local Pegasus = require 'lib/pegasus'

local server = Pegasus:new('9090')

server:start(function (req, rep)
  rep.writeHead(200).finish('hello pegasus world!')
  -- print(req.path)
  -- print(req:post())
  -- print(req:headers())
  -- print('path = ' .. req:path())
  -- print('method = ' .. req:method())
end)