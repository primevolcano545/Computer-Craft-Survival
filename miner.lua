term.clear()
while true do
    print("Type Program. (miner, equip, unequip, fuel)")
    program = read()
    if program == "miner" then
        local fuel = turtle.getFuelLevel()
        term.clear()
        print("fuel: "..tostring(fuel))
        print("How far do you want to mine (blocks)")
        blocks = tonumber(read())
        if blocks then
            if blocks <= fuel/s then
                print("Type (start) to mine")
                start = read()
                if start == "start" and blocks <= fuel/2 then
                    for i = 1, blocks do
                        turtle.dig("left")
                        turtle.digUp("left")
                        turtle.forward()
                    end
                    turtle.turnLeft()
                    turtle.turnLeft()
                    for i = 1, blocks do
                        turtle.forward()
                    end
                    turtle.turnLeft()
                    turtle.turnLeft()
                end
            else
                print("please type a lower number")
            end
        else
            print("please enter whole number")
        end
    elseif program == "equip" then
        print("put tool in slot 1")
        print("you have 5 seconds to do this")
        sleep(5)
        turtle.select(1)
        turtle.equipLeft()
    elseif program == "fuel" then
        print("put fuel in slot 1")
        print("you have 5 seconds to do this")
        sleep(5)
        turtle.select(1)
        turtle.refuel()
    elseif program == "unequip" then
        print("Please clear slot 1")
        print("you have 5 seconds")
        sleep(5)
        turtle.select(1)
        turtle.equipLeft()
    end
end


--wget https://raw.githubusercontent.com/primevolcano545/Computer-Craft-Survival/main/miner.lua
