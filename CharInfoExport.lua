local function DecimalToHex(r,g,b)
    return string.format("|cff%02x%02x%02x", r*255, g*255, b*255)
end

name = UnitName("player")
titleName, hasTitle = GetTitleName(GetCurrentTitle())
realm = GetRealmName() 

level = UnitLevel("player")
race = UnitRace("player")
_, specName = GetSpecializationInfo(GetSpecialization())
class,PLAYERCLASS = UnitClass("player")

classColor = RAID_CLASS_COLORS[PLAYERCLASS]
r,g,b = classColor.r,classColor.g,classColor.b
classColorHex = DecimalToHex(r,g,b)


if hasTitle == true then
    if string.sub(titleName, -1) == " " then
        name = titleName .. name .. " - " .. realm
    else 
        name = name .. " " .. titleName .. " - " .. realm
    end 
end

print(name .. "\n" .. "Level " .. level .. " " .. race .. " " .. classColorHex .. class)
print(specName)

id = GetSpecializationInfo(GetSpecialization())
print(id)

local currentSpec = GetSpecialization()
if currentSpec then
   local _, currentSpecName = GetSpecializationInfo(currentSpec)
   print("Your current spec:", currentSpecName)
else
   print("You do not currently have a spec.")
end