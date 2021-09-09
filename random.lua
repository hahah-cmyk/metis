local characters = {
  letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ", lettersS = "abcdefghijklmnopqrstuvwxyz",
  numbers = "0123456789",
  special = "@#$%"
}
// options = {lettersBig = true, lettersSmall = true, numbers = true, special = false}
local function generatePassword(options, length)
  local possible = ""
  if(options.lettersBig) then possible = possible..characters.letters end
  if(options.lettersSmall) then possible = possible..characters.lettersS end
  if(options.numbers) then posssible = possible..characters.numbers end
  if(options.special) then possible = possible..characters.special end
  local pass = ""
  for i = 1, length do
    local num = math.random(1, string.len(possible))
    pass = pass..string.sub(possible, num, num)
  end
  return pass
end

return generatePassword
