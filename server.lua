RegisterServerEvent("flundar:scriptrestarter")
AddEventHandler('flundar:scriptrestarter', function()
	local saat = os.date('%H:%M:%S', os.time())
	if saat == '08:00:00' then
	     ExecuteCommand("start flundarlac") 
	elseif saat == '17:23:00' then
		 ExecuteCommand("start esx_policejob") 
	elseif saat == '17:24:00' then
		 ExecuteCommand("stop esx_policejob") 
	elseif saat == '17:25:00' then
		 ExecuteCommand("restart esx_policejob") 
	end
end)

function restart_yaz()
  SetTimeout(1000, function()
    TriggerEvent('flundar:scriptrestarter')
    restart_yaz()
  end)
end
restart_yaz()
