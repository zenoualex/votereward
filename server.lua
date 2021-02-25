--------------------------------------
--Vote Reward engine by zenalex#7490--
--------------------------------------

ESX  = nil
local serverName = 'TopFivem.net'
local serverID = '39' --put your server id here
local itemReward = 'black_money' -- Put the reward item here
local itemRewardCount = 1000 --Put the amount of the item you want to reward


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
 
RegisterCommand('vote', function(source, args, rawCommand)
    while ESX == nil do
        Citizen.Wait(0)
    end
    local steam, license, discord, ip = getIdentifiers(source)
    local src_data = ESX.GetPlayerFromId(source)
    PerformHttpRequest("http://topfivem.net/api-" ..serverID.. "_" ..ip.. ".json", function(err, text, headers)
        local response = json.decode(text).status
        print("http://topfivem.net/api-" ..serverID.. "_" ..ip.. ".json")
        if response == "Success" then
            print(response)
            -- TriggerClientEvent('esx_xp:Add', source, 1000) -- For giving xp
            src_data.addAccountMoney(itemReward , itemRewardCount)
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You Have beed rewarded. Thanks for voting for our server. You can vote again after 24 hours.', length = 2500, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have already vote or didnt vote yet. Visit Topfivem.net and vote for' ..serverName..'.', length = 2500, style = { ['background-color'] = '#0023ff', ['color'] = '#ffffff' } })
        end
    end, 'GET', '')
end, false)


function getIdentifiers(source)
    local identifiers = GetPlayerIdentifiers(source)

    for _, identifier in ipairs(identifiers) do
        if string.find(identifier, 'steam:') then
            steam = string.gsub(identifier, 'steam:', '')
        elseif string.find(identifier, 'license:') then
            license = string.gsub(identifier, 'license:', '')
        elseif string.find(identifier, 'discord:') then
            discord = string.gsub(identifier, 'discord:', '')
        elseif string.find(identifier, 'ip:') then
            ip = string.gsub(identifier, 'ip:', '')
        end
    end

    if not steam then steam = '-' end

    if not license then license = '-' end

    if not discord then discord = '-' end

    if not ip then ip = '-' end

    return steam, license, discord, ip
end
--------------------------------------
--Vote Reward engine by zenalex#7490--
--------------------------------------
