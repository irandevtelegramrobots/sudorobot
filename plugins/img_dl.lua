do

function run(msg, matches)
  local url = matches[1]
  local receiver = get_receiver(msg)
 send_large_msg(receiver, '>Your Image :', ok_cb, false)
 send_photo_from_url(receiver, url)
end

return {
  description = "When user sends image URL (ends with png, jpg, jpeg) download and send it to origin.", 
  usage = "When user sends image URL (ends with png, jpg, jpeg), bot will download and return it. ",
  patterns = {
    "dl (https?://[%w-_%.%?%.:/%+=&]+%.png)$",
    "dl (https?://[%w-_%.%?%.:/%+=&]+%.jpg)$",
    "dl (https?://[%w-_%.%?%.:/%+=&]+%.jpeg)$",
    
    "dl (http?://[%w-_%.%?%.:/%+=&]+%.png)$",
    "dl (http?://[%w-_%.%?%.:/%+=&]+%.jpg)$",
    "dl (http?://[%w-_%.%?%.:/%+=&]+%.jpeg)$",
    
  }, 
  run = run 
}

end
