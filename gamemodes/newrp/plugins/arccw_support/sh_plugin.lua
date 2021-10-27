local PLUGIN = PLUGIN

PLUGIN.DoAutoCreation = false

PLUGIN.name = "ArcCW Support"
PLUGIN.author = "Sorry im Salty"
PLUGIN.description = "Support for ArcCW Weapons Pack"
PLUGIN.license = [[
Copyright 2021 Sorry im Salty
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]

PLUGIN.readme = [[

]]



ix.util.Include("sh_arccw_support.lua")
ix.util.Include("cl_arccw_support.lua")
