-- Copyright (C) Mashape, Inc.

local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.hmac-with-body-validation.access"

local HMACAuthWithBodyValidation = BasePlugin:extend()

function HMACAuthWithBodyValidation:new()
  HMACAuthWithBodyValidation.super.new(self, "hmac-with-body-validation")
end

function HMACAuthWithBodyValidation:access(conf)
  HMACAuthWithBodyValidation.super.access(self)
  access.execute(conf)
end

HMACAuthWithBodyValidation.PRIORITY = 999

return HMACAuthWithBodyValidation
