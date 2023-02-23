local whitelist = { -- a table containing authorized HWIDs
   "ABCD-1234-EFGH-5678",
   "WXYZ-9876-VTUV-4321",
   "LMNO-2468-PQRS-1357"
}

function IsHWIDAuthorized(hwID)
   for i = 1, #whitelist do -- iterate over each item in the table
      if hwID == whitelist[i] then -- check if the HWID matches the authorized one
         return true
      end
   end
   return false -- if no match found, return false
end
