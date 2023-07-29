local M = {}

M.dump_tb = function(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. M.dump_tb(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

-- print("config.mappings ::: ", M.dump_tb(config.mappings))
-- print("general ::: ", M.dump_tb(config.mappings.general.n))

return M
