tools = {}


-- Format time
function timeFormat(time)
  if time < 60 then
    return string.format(
      "%.3f", time
    )
  elseif 60 <= time and time < 3600 then
    minutes = math.floor(time / 60)
    seconds = time % 60
    if seconds < 10 then
      seconds = "0" .. string.format("%.3f", seconds)
      return string.format(
        '%d:%s', minutes, seconds
      )
    else
      return string.format(
        '%d:%.3f', minutes, seconds
      )
    end
  else
    hour = math.floor(time / 3600)
    minutes = time % 3600
    
    if minutes < 600 then
      minutes = '0' .. minutes
      return hour .. ':' .. minutes
    else
      return hout .. ':' .. minutes
    end
    return 
  end
end


return tools
