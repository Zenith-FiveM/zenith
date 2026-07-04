---@diagnostic disable: lowercase-global

std = "lua54"

ignore = {
  "212",
  "631",
}

max_line_length = false

globals = {
  "Citizen",
  "exports",
  "PerformHttpRequest",
  "GetCurrentResourceName",
  "GetResourceState",
  "GetHashKey",
  "AddEventHandler",
  "RegisterNetEvent",
  "TriggerEvent",
  "TriggerServerEvent",
  "TriggerClientEvent",
  "RegisterCommand",
  "RegisterServerEvent",
  "CreateThread",
  "SetTimeout",
  "Wait",
  "vector2",
  "vector3",
  "vector4",
  "quat",
  "msgpack",
  "json",
  "GetPlayerPed",
  "GetPlayers",
  "source",
  "PlayerId",
  "PlayerPedId",
  "NetworkGetPlayerIndexFromPed",
  "Zenith",
  "lib",
  "cache",
}

exclude_files = {
  ".github/",
  "**/node_modules/",
  "**/vendor/",
}
