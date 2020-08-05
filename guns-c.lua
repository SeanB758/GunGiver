RegisterCommand("clear", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~Cleared All Weapons")
end)

RegisterCommand("die", function()
    SetEntityHealth(PlayerPedId(), 0)
    notify("~r~You Died!")
end)

Citizen.CreateThread(function()

    local p_key = 199
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, p_key)
            print("The Key".. p_key .. " Was Pressed")
            giveWeapon("weapon_CombatPistol")
                weaponComponent("weapon_CombatPistol", "COMPONENT_AT_PI_FLSH")
            giveWeapon("weapon_StunGun")
            giveWeapon("weapon_Nightstick")
            giveWeapon("weapon_Flashlight")
            giveWeapon("weapon_CarbineRifle")
                weaponComponent("weapon_CarbineRifle", "COMPONENT_AT_AR_FLSH")
                weaponComponent("weapon_CarbineRifle", "COMPONENT_AT_SCOPE_MEDIUM")
                weaponComponent("weapon_CarbineRifle", "COMPONENT_AT_AR_AFGRIP")
            giveWeapon("weapon_PumpShotgun")
                weaponComponent("weapon_PumpShotgun", "COMPONENT_AT_AR_FLSH")
            giveWeapon("weapon_PetrolCan")
            giveWeapon("weapon_Flare")
            alert("~b~Given Weapons With ~INPUT_FRONTEND_PAUSE~")
        end
    end

end)

--[[
DO NOT REMOVE BELOW

This script was fully created and developed by "Sean" there discord is "Sean B.#0899"
if you need any help with the script please contact me on my discord and I will try to
help as many of you as possibe.
]]