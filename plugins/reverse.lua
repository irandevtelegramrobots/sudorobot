local function run(msg,matches)
   local m =  string.reverse(matches[1])
       return m
end
return {
patterns = {
"[/!#][Rr]everse +(.*)"
},
run = run
}
