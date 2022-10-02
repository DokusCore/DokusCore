RegisterNetEvent("DokusZones:printShape")
AddEventHandler("DokusZones:printShape", function(shape)
  file = io.open('resources/[ DokusZones ]/'..os.date('%Y-%m-%d %H%M%S')..".txt", "a")
  io.output(file)
  local output = parseShape(shape)
  io.write(output)
  io.close(file)
end)

function parseShape(shape)
  local printout = ""
  printout = printout .. "------------------------\nVectors:\n------------------------\n"
  for i=1, #shape.points do
    if i ~= #shape.points then
      printout = printout .. "  vector2(" .. tostring(Round(shape.points[i].x, 2)) .. ", " .. tostring(Round(shape.points[i].y, 2)) .."),"
    else
      printout = printout .. "  vector2(" .. tostring(Round(shape.points[i].x, 2)) .. ", " .. tostring(Round(shape.points[i].y, 2)) ..")"
    end
    printout = printout .. "\n"
  end

  printout = printout .. "------------------------\nAxis-Z:\n------------------------\n  Bottom: " .. Round(shape.options.minZ, 2) .. "\n  Top:    " .. Round(shape.options.maxZ, 2) .. "\n------------------------\n"
  return printout
end
