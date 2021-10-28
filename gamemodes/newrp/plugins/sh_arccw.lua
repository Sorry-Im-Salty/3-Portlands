local PLUGIN = PLUGIN
PLUGIN.name = "arccw compatibility"
PLUGIN.author = "Lechu2375"
PLUGIN.DefaultAttachements = {
    "muzz_brake","optic_reflex"
}


function PLUGIN:ArcCW_PlayerCanAttach(ply, wep, attname, slot, detach)
    local character = ply:GetCharacter()
    if(!character) then 
        return false 
    end

    if(detach) then
        return true
    end
    local result = (attname == "" or character:GetInventory():HasItem(attname) or PLUGIN.DefaultAttachements[attname] or false) 
    if(!result) then
        print("[ArcCW Support] Missing attachement item",attname)
    end
    print("result",result)
    return result
end





local SwapTable = PLUGIN.DefaultAttachements
PLUGIN.DefaultAttachements = {}
for _,v in pairs(SwapTable) do
    PLUGIN.DefaultAttachements[v] = true
end

if(CLIENT and ArcCW) then //Crosshair is broken for IX, we have already Health indicator in IX.
    GetConVar("arccw_crosshair"):SetInt(0)
    GetConVar("arccw_hud_showhealth"):SetInt(0)
    function PLUGIN:ShouldDrawCrosshair(_, weapon)
        if(string.find(weapon:GetClass(),"arccw")) then
            return true
        end
    end
end

function PLUGIN:InitializedPlugins()
    if(!ArcCW) then 
        return print("[ArcCW Support] Can not find ArcCW addon!")
    else
        print("[ArcCW Support] Registering attachements items...")
    end
    
    local items= {}
    for k,v in pairs(ArcCW.AttachmentTable) do
        items[k]={
            ["name"] = v.PrintName,
            ["model"] = v.Model or "models/props_junk/cardboard_box004a.mdl",
            ["width"] = 1,
		    ["height"] = 1,
            ["desc"] = v.Description or "You can attach it to the weapon."
        }
    end
    for k,v in pairs(items) do
        local ITEM = ix.item.Register(k, nil, false, nil, true)
        ITEM.name = v.name
        ITEM.description = v.desc
        ITEM.model = v.model
        ITEM.width = v.width or 1
        ITEM.height = v.height or 1
        ITEM.category = "attachements"
        function ITEM:GetDescription()
		    return self.description
	    end
        ITEM:Hook("drop", function(item)
            local weps = item:GetOwner():GetWeapons()
            local attch = item.uniqueID
            for _,v in pairs(weps) do
                
                if(v.Attachments) then
                    for k,s in pairs(v.Attachments) do 
                        if(s.Installed==attch) then
                            v:DetachAllMergeSlots(k)
                        end
                    end
                    
                end
            end
            
        end)

        
    end
end



