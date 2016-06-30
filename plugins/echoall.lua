local function run(msg, matches)
  local text = matches[1]
  local b = 1
if is_sudo(msg) then
return nil
end
else  
    text = text:trim()
    text,b = text:gsub('^!+','')
  return text
end

return {
  description = "Simplest plugin ever!",
  usage = "!echo [whatever]: echoes the msg",
  patterns = {
    "^(.+)$"
  }, 
  run = run 
}
