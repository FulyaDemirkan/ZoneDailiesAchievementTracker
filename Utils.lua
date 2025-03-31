-- Initialize file
ZDAT       = ZDAT or {}
ZDAT.Utils = {}

-- return unique id
function ZDAT.Utils.uid()
    ZDAT.Utils.uidCurrent = (ZDAT.Utils.uidCurrent or 10000) + 1
    return ZDAT.Utils.uidCurrent
end