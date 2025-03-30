-- Initialize file
ZDAT       = ZDAT or {}
ZDAT.Utils = {}

-- return unique id
function ZDAT.Utils.uid()
    ZDAT.Utils.uidCurrent = (ZDAT.Utils.uidCurrent or 10000) + 1
    return ZDAT.Utils.uidCurrent
end

-- converts t[key]=value into t[index]={key,value} sorted by value
-- access return with "for _,r in ipairs(sorted) do ... key=r[1]; val=r[2]"
function ZDAT.Utils.sortByValues(t)
    local sorted = {}
    for k, v in pairs(t) do
        table.insert(sorted,{k,v})
    end
    table.sort(sorted, function(a,b) return a[2] > b[2] end)
    return sorted
end


-- checks for value in array
function ZDAT.Utils.valueInArray(value, array)
    for _, val in ipairs(array) do
        if val == value then return true end
    end
    return false
end
