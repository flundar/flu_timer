RegisterServerEvent("flundar:scriptrestarter")
AddEventHandler('flundar:scriptrestarter', function()
	saat1 = os.date('%H:%M:%S', os.time())
	local saat = saat1
	if saat == '08:00:00' then
	     ExecuteCommand("start flundarlac") -- ÖRNEK SCRIPT
	elseif saat == '17:23:00' then
		 ExecuteCommand("start esx_policejob") -- ÖRNEK SCRIPT
	elseif saat == '17:24:00' then
		 ExecuteCommand("stop esx_policejob") -- ÖRNEK SCRIPT
	elseif saat == '17:25:00' then
		 ExecuteCommand("restart esx_policejob") -- ÖRNEK SCRIPT
	end
end)

function restart_yaz()
	SetTimeout(1000, function()
		TriggerEvent('flundar:scriptrestarter')
		restart_yaz()
	end)
end
restart_yaz()
