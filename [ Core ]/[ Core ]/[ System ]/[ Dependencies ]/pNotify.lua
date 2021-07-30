--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
function SetQueueMax(queue, max)
    local tmp = {
        queue = tostring(queue),
        max = tonumber(max)
    }

    SendNUIMessage({maxNotifications = tmp})
end

function SendNotification(options)
    options.animation = options.animation or {}
    options.sounds = options.sounds or {}
    options.docTitle = options.docTitle or {}

    local options = {
        type = options.type or "success",
        layout = options.layout or "topRight",
        theme = options.theme or "gta",
        text = options.text or "Empty Notification",
        timeout = options.timeout or 5000,
        progressBar = options.progressBar ~= false and true or false,
        closeWith = options.closeWith or {},
        animation = {
            open = options.animation.open or "gta_effects_open",
            close = options.animation.close or "gta_effects_close"
        },
        sounds = {
            volume = options.sounds.volume or 1,
            conditions = options.sounds.conditions or {},
            sources = options.sounds.sources or {}
        },
        docTitle = {
            conditions = options.docTitle.conditions or {}
        },
        modal = options.modal or false,
        id = options.id or false,
        force = options.force or false,
        queue = options.queue or "global",
        killer = options.killer or false,
        container = options.container or false,
        buttons = options.button or false
    }

    SendNUIMessage({options = options})
end

RegisterNetEvent("pNotify:SendNotification")
AddEventHandler("pNotify:SendNotification", function(options)
    SendNotification(options)
end)

RegisterCommand('notify', function(source, args)
     TriggerEvent("pNotify:SendNotification", {
            text = "<img src='water.png' height='40' width='40' style='float:left; margin-bottom:10px; margin-left:20px;' />Droped: Water<br> -3",
            type = "success",
            timeout = math.random(1000, 10000),
            layout = "centerRight",
			sources = {"water.png"},
            queue = "right"
        })
end)
RegisterNetEvent("pNotify:SetQueueMax")
AddEventHandler("pNotify:SetQueueMax", function(queue, max)
    SetQueueMax(queue, max)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
