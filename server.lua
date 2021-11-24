--[[
    
.........................................................................
.........................................................................
.........................................................................
.........   ____    ___    ___     ____   _   _   ___   _   _   .........
.........  |  _ \  |_ _|  / _ \   / ___| | | | | |_ _| | \ | |  .........
.........  | | | |  | |  | | | | | |  _  | | | |  | |  |  \| |  .........
.........  | |_| |  | |  | |_| | | |_| | | |_| |  | |  | |\  |  .........
.........  |____/  |___|  \___/   \____|  \___/  |___| |_| \_|  .........
.........................................................................
.........................................................................
.........................................................................

--]]

local resource = {}
resource["functions"] = {}

resource["functions"]["generateString"] = function (quantidade)
    local String = ""
    if quantidade then
        for i = 1, quantidade do
            local random = math.random(#config["home"]["teclas"] )
            if string.sub(String, #String , #String) ~= random then 
                String = String .. "" .. config["home"]["teclas"][random] .. ""
            else
                if config["home"]["teclas"][random+1] then
                    String = String .. "" .. config["home"]["teclas"][random +1] .. ""
                else
                    String = String .. "" .. config["home"]["teclas"][random -1].. ""
                end
            end
        end
    end
    return string.upper(String)
end

print(resource["functions"]["generateString"](9))
