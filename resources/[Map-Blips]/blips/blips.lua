local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	{title="Fishing Spot", colour=68, id=28, x=743.19586181641, y=-3895.3967285156, z=30.556676864624},
  {title="Cargo Pilot", colour=3, id=90, x=-928.89624023438,y=-2937.396484375,z=13.945074081421},
  {title="UBER Driver", colour=1, id=198, x=213.95413208008,y=-808.51440429688,z=31.014892578125},
  {title="Mechanic Job", colour=47, id=446, x=532.85131835938,y=-169.87094116211,z=54.75687789917},
  {title="Driver Job", colour=1, id=67, x=790.33581542969,y=-3167.6821289063,z=6.212601184845},
  {title="Quit Job", colour=1, id=163, x=-268.363739013672,y=-957.255126953125,z=31.22313880920410},
	{title="Postal Job", color=4, id=501, x=-342.75030517578, y=6098.2495117188, z=31.318670272827},
	{title="Stolen Weapons", color=4, id=150, x=-342.75030517578, y=6098.2495117188, z=31.318670272827},
	{title="Nite Club", colour=3, id=121, x=-346.18237304688, y=165.31571960449, z=86.390754699707},
  {title="Medical Weed", color=2, id=140, x=2213.0520019531, y=5577.5981445313, z=53.795757293701},
	{title="Drug Lab", color=2, id=140, x=-77.722381591797, y=6223.626953125, z=31.089864730835},
  {title="Bank Driver", color=4, id=198, x = 243.67727661133, y = 230.6535949707, z = 106.28681945801},
	{title="Club", colour=48, id=121, x=-1395.9016113281, y=-607.93939208984, z=30.319543838501},
  {title="Beach Bar", colour=47, id=102, x=1374.25, y=-2711.89, z=2.31},
	{title="Blue Airlines", colour=30, id=43, x = -759.6591796875, y = -1515.3978271484, z = 4.9768991470337},
  {title="Biker-Gang", colour=38, id=378, x=-560.13873291016, y=286.93334960938, z=82.176391601563},
  {title="Fisher Job", colour=4, id=68, x = 153.18663024902, y = -3211.7668457031, z = 5.9093432426453}
  }


Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
