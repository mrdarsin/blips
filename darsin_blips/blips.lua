local blips = {
 --   {title="Megamall", colour=5, id=52, x = 46.6491, y = -1749.6, z = 29.6332}, 
 --   {title="Sarsılmaz Malikane", colour=37, id=176, x = 1358.25, y = 1147.28, z = 114.313},
 --   {title="Kiralık Malikane", colour=1, id=176, x = -123.52, y = 986.615, z = 235.742},
 --   {title="Kiralık Malikane", colour=1, id=176, x = -1527.3, y = 875.172, z = 181.994},
 --   {title="Kiralık Malikane", colour=1, id=176, x = -104.73, y = 850.190, z = 235.633},
 --   {title="Kiralık Malikane", colour=1, id=176, x = -2643.5, y = 1310.43, z = 145.678},
 --   {title="Kiralık Malikane", colour=1, id=176, x = -1806.6, y = 443.629, z = 128.508},
 --   {title="Kiralık Malikane", colour=1, id=176, x = -1475.6, y = -60.378, z = 54.6397},
 --   {title="Sarsılmaz Mekanik", colour=37, id=402, x = -337.77, y = -131.14, z = 39.01},
 --   {title="Kiralık Mekanik", colour=1, id=402, x = -211.78, y = -1324.36, z = 30.89},
}
  
  Citizen.CreateThread(function()
  
      for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4) 
        SetBlipScale(info.blip, 0.7)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
      end
  end)
  
