local monitor = peripheral.find("monitor")
local chests = {peripheral.find("inventory")}
local stock = {}
local mon_per = peripheral.find("monitor")
local monitor = window.create(mon_per,1,1,mon_per.getSize())
local curser = 1
 
local function update_stock()
    stock = {}
    for i=1,#chests do
        local chest     = chests[i]
        local inventory = chest.list()
        for k,v in pairs(inventory) do
            if not stock[v.name] then
                stock[v.name] = v
            else
                stock[v.name].count = stock[v.name].count + v.count
            end
        end
    end
end
 
local function numerize(tbl)
    local output = {}
    for k,v in pairs(tbl) do
        output[#output+1] = v
    end
    return output
end 
 

local function reset_screen()

    monitor.setVisible(false)
    monitor.clear()

    monitor.setCursorPos(2, 1)
    monitor.write("storage")
    update_stock()
    local stock_data = numerize(stock)
    table.sort(stock_data,function(a,b)
        return a.count>b.count
    end)
    local n = 1
    for i,item_data in ipairs(stock_data) do
        local display_str = item_data.name:match(":(.+)") .. ": " .. item_data.count
 
        monitor.setCursorPos(2,n+3)
        monitor.write(display_str)
 
        print(display_str)
 
        n = n + 1
    end
    monitor.setVisible(true)
end


while true do
    reset_screen()
    sleep(0.1)
end
