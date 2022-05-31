local webhook = "WEBHOOK"

while true do

    local message = read()
    local username = "NAME"


    local postData = '{"content": "' .. message .. '", "username": "' .. username .. '"}'
    local p = http.post(webhook, postData, {["Content-Type"] = "application/json"})

  end