local webhook = "WEBHOOK"

while true do
    event, username, message = os.pullEvent("chat") -- Will be fired when someone sends a chat message
    --print(username.. " just wrote: ".. message) -- Prints "*User* just wrote: *Message*"

    local postData = '{"content": "' .. message .. '", "username": "' .. username .. '"}'
    print(postData)
    local p = http.post(webhook, postData, {["Content-Type"] = "application/json"})
    print(p.readAll())
  end