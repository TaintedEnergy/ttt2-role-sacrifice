-- ROLE.Base = "ttt_role_base"
--
-- ROLE.index = ROLE_TRAITOR

if SERVER then
  AddCSLuaFile()

  resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_sacrifice.vmt")
end

function ROLE:PreInitialize()
  self.color = Color(202, 255, 0, 255)

  self.abbr = "sacrifice"
	self.surviveBonus               = 0
	self.score.killsMultiplier      = 2
	self.score.teamKillsMultiplier  = -8
	self.unknownTeam                = true

	self.defaultTeam                = TEAM_INNOCENT

  self.conVarData = {
		pct          = 0.15, -- necessary: percentage of getting this role selected (per player)
		maximum      = 1, -- maximum amount of roles in a round
		minPlayers   = 7, -- minimum amount of players until this role is able to get selected
		credits      = 0, -- the starting credits of a specific role
		shopFallback = SHOP_DISABLED,
		togglable    = true, -- option to toggle a role for a client if possible (F1 menu)
		random       = 33
	}
end

function ROLE:Initialize()
	roles.SetBaseRole(self, ROLE_INNOCENT)
end

if SERVER then

  ROLE.CustomRadar = function(ply)
    local weps = ply:GetWeapons()
    local hasDefib = false
    for i = 1, #weps do
      if weps[i]:GetClass() == "weapon_ttt_sacrificedefi" then
        hasDefib = true
      end
    end
    if not hasDefib then return end

    local targets = {}
    local corpses = ents.FindByClass("prop_ragdoll")

    for i = 1, #corpses do
      local rag = corpses[i]
      if not rag.player_ragdoll then continue end

      local pos = rag:LocalToWorld(rag:OBBCenter())

      pos.x = math.Round(pos.x)
      pos.y = math.Round(pos.y)
      pos.z = math.Round(pos.z)

      targets[#targets + 1] = {
        subrole = -1,
        pos = pos
      }
    end

    local decoys = ents.FindByClass("ttt_decoy")

    for i = 1, #decoys do
      local dec = decoys[i]

      if not IsValid(dec) then continue end

      local pos = dec:LocalToWorld(dec:OBBCenter())

      pos.x = math.Round(pos.x)
      pos.y = math.Round(pos.y)
      pos.z = math.Round(pos.z)

      targets[#targets + 1] = {
        subrole = ROLE_INNOCENT,
        team = TEAM_INNOCENT,
        pos = pos
      }
    end
    if #targets > 0 then
      return targets
    end
  end

  function ROLE:GiveRoleLoadout(ply, isRoleChange)
    ply:GiveEquipmentWeapon("weapon_ttt_sacrificedefi")
  end

  function ROLE:RemoveRoleLoadout(ply, isRoleChange)
    ply:StripWeapon("weapon_ttt_sacrificedefi")
  end
end
