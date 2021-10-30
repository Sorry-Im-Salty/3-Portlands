local PLUGIN = PLUGIN
PLUGIN.name = "arccw compatibility"
PLUGIN.author = "Lechu2375"


//// Add here attachements name if you want it to be avaiable to everyone. Attachement name is displayed in console after unsuccessful mounting
PLUGIN.DefaultAttachements = {
    "go_usp_slide_short","go_p250_slide_short","go_stock_pistol_bt" 
}
////



ix.config.Add("arcCWGenWepItems", true, "Whether or not to automatically generate ArcCW weapon items.", nil, {
	category = "ArcCW Support"
})
ix.config.Add("arcCWDefScopes", true, "Whether or not to allow using default scope attachement.", nil, {
	category = "ArcCW Support"
})


function PLUGIN:ArcCW_PlayerCanAttach(ply, wep, attname, _, detach)
    local character = ply:GetCharacter()
    if(!character) then 
        return false 
    end

    if(detach) then
        return true
    end
    local result = (attname == "" or character:GetInventory():HasItem(attname) or PLUGIN.DefaultAttachements[attname] or false) 
    if(!result and ix.config.Get("arcCWDefScopes", true)) then
        result = weapons.Get(wep:GetClass()).Attachments[1].Installed == attname
    end
    if(!result) then
        print("[ArcCW Support] Missing attachement item",attname)
    end
    return result
end



local SwapTable = PLUGIN.DefaultAttachements
PLUGIN.DefaultAttachements = {}
for _,v in pairs(SwapTable) do
    PLUGIN.DefaultAttachements[v] = true //because why not, little optimization
end

if(CLIENT and ArcCW) then //Crosshair is broken for IX, we have already Health indicator in IX.
    GetConVar("arccw_crosshair"):SetInt(0)
    GetConVar("arccw_hud_showhealth"):SetInt(0)
    function PLUGIN:ShouldDrawCrosshair(_, weapon)
        if(IsValid(weapon) and string.find(weapon:GetClass(),"arccw")) then
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
    if(ix.config.Get("arcCWGenWepItems", true)) then 
        items = {}
        for k,v in pairs(weapons.GetList("arccw_base")) do
            items[v.ClassName]={
                ["name"] = v.PrintName,
                ["model"] = v.WorldModel or "models/props_junk/cardboard_box004a.mdl",
                ["width"] = 3,
                ["height"] = 2,
                ["desc"] = v.Trivia_Desc or "Weapon",
                ["weaponCategory"] = "primary"
                
            }
            if(v.HoldtypeActive=="pistol" or string.find(string.lower(v.Trivia_Class or ""),"pistol") ) then
                items[v.ClassName]["height"] = 1
                items[v.ClassName]["width"] = 2
                items[v.ClassName]["weaponCategory"] = "sidearm"
            end
        end
        for k,v in pairs(items) do
            local ITEM = ix.item.Register(k, "base_weapons", false, nil, true)
            ITEM.name = v.name
            ITEM.class = k
            ITEM.description = v.desc
            ITEM.model = v.model
            ITEM.width = v.width or 1
            ITEM.height = v.height or 1
            ITEM.weaponCategory = v.weaponCategory
            ITEM.category = "weapons"
        
        end
    end
    /*
    if(ix.config.Get("arcCWGenAmmoItems", true))then
        items = {}
    end
    */

end



