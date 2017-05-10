----------------------------------- Created by Fuzzy/PandaMan 2017 - thefuzz.xyz - pandanet.ga -----
-- DATABASE SETTINGS -------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
dbHost = "127.0.0.1"
dbName = "gta5_gamemode_essential"
dbUser = "user"
dbPassword = "password"
----------------------------------------------------------------------------------------------------
-- SALARY SETTINGS ---- Salary will be a random number between minSalary and maxSalary amounts. ----
----------------------------------------------------------------------------------------------------
minSalary = 450 -- Default: 450
maxSalary = 2500 -- Default: 2500
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Don't edit below here unless you know what you're doing! ----------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

require "resources/essentialmode/lib/MySQL"
MySQL:open(dbHost, dbName, dbUser, dbPassword)

copresult = false
salary = math.random(minSalary, maxSalary)
player= "nil"

function copcheck(identifier)
  local query = MySQL:executeQuery("SELECT * FROM police WHERE identifier = '@identifier'", { ['@identifier'] = identifier})
  local result = MySQL:getResults(query, {'rank'}, "identifier")
  if(not result[1]) then
    copresult = false
  else
    copresult = true
  end
end

RegisterServerEvent("pc:verifycop")
AddEventHandler("pc:verifycop", function()
  TriggerEvent("es:getPlayerFromId", source, function(user)
    player = user.identifier
    copcheck(player)
    if (copresult == true) then
    user:addMoney((salary))
    TriggerClientEvent("es_freeroam:notify", source, "CHAR_CALL911", 1, "LSPD HQ", false, "Police officer salary recieved: ~g~~b~$" .. salary .. "~w~.")
    end
  end)

end)