
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {
  ["superadmin"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"You are superadmin."}) end},
    "player.group.add",
    "player.group.remove",
    "player.givemoney",
    "player.giveitem"
  },
  ["admin"] = {
    "admin.tickets",
    "admin.announce",
	"admin.menu",
	"admin.easy_unjail",
	"admin.spikes",
	"admin.godmode",
	"admin.spawnveh",
	"admin.deleteveh",
	"player.blips",
	"player.tptowaypoint",
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
    "player.noclip",
    "player.custom_emote",
    "player.custom_sound",
    "player.display_custom",
    "player.coords",
    "player.tptome",
	"emergency.revive",
	"emergency.shop",
    "player.tpto"
  },
     ["god"] = {
    "admin.god" -- reset survivals/health periodically
  },
  ["recruiter"] = {
    "player.list",
	"player.group.add",
    "player.group.remove",
    },
  ["mod"] = {
	"admin.tickets",
    "admin.announce",
    "player.list",
    "player.kick",
    "player.coords",
    "player.tptome",
	"emergency.revive",
	"emergency.shop",
    "player.tpto"
  },
  -- the group user is auto added to all logged players
  ["user"] = {
    "player.phone",
    "player.calladmin",
	"player.fix_haircut",
	"player.check",
	--"mugger.mug",
    "police.askid",
    "police.store_weapons",
	"player.store_money",
	"player.check",
	"player.loot",
	"player.player_menu",
	"player.userlist",
    "police.seizable",	-- can be seized
	"user.paycheck"
  },
  ["Fisher"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Fisherman."}) end
	},
	"mission.delivery.fish",
    "fisher.service",
	"fisher.vehicle"
    },

    
    -----------------------------------------------------------------
  ["Cargo Pilot"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Cargo Pilot."}) end
	},
	"mission.pilot.cargo",
	"pilot.vehicle",
	"pilot.paycheck"
    },
    -----------------------------------------------------------------

  ["Medical Transport"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You now transport Medical weed."}) end
	},
	"mission.delivery.medical",
    "medical.service",
	"medical.vehicle"
    },
  ["Weapons Smuggler"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Weapons Smuggler."}) end
	},
	"mission.weapons.smuggler",
    "smuggler.service"
    },
  ["Police Officer"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{true}) end
    },
    "Officer.cloakroom",
	"highway.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "911.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"cop.whitelisted",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"player.list",
	"police.paycheck"
  },
  ["Police Detective"] = {  
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{true}) end
    },
    "Detective.cloakroom",
	"highway.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"cop.whitelisted",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"player.list",
	"Detective.paycheck"
  },
  ["EMS"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a medic, salary : $1500."}) end
	},
    "emergency.revive",
	"police.pc",
	--"police.wanted",
    "emergency.shop",
    "EMS.service",
	"emergency.cloakroom",
	"emergency.vehicle",
	"emergency.market",
	"ems.whitelisted",
	"ems.loadshop",
	"player.list",
	"emergency.paycheck"
  },
  ["Mechanic"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Mechanic, salary : $900."}) end
	},
    "vehicle.repair",
    "vehicle.replace",
    "Mechanic.service",
	"mission.repair.satellite_dishes",
	"mission.repair.wind_turbines",
	"repair.vehicle",
	"repair.market",
	"repair.paycheck"
  },
  ["UBER"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are UBER, salary : $600."}) end
	},
    "UBER.service",
	"uber.vehicle",
	"uber.paycheck"
  },
    ["Airline Pilot"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Pilot, salary : $6000."}) end
	},
    "airlines.service",
	"air.vehicle",
	"air.paycheck"
  },
  ["Unemployed"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Unemployed, go to Department of Jobs."}) end
	},
	"citizen.paycheck"
  },
   ["Off Duty"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Off Duty."}) end
	},
	"off.paycheck"
  },
  ["Postal"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Postal Driver, Salary : $500."}) end
	},
	"mission.delivery.food",
	"delivery.vehicle",
	"delivery.paycheck"
  },
  ["Lawyer"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Lawyer, Salary : $2000."}) end
	},
	"Lawyer.vehicle",
	"Lawyer.whitelisted",
	"Lawyer.cloakroom",
	"Lawyer.paycheck"
  },
  ["Drug Dealer"] = {
    _config = { gtype = "job",
	    onspawn = function(player) vRPclient.notify(player,{"You are a Drug Dealer."}) end
	  },
    "mission.drugseller.weed",
    "drugseller.market",
    "harvest.weed"
  },
  ["Hacker"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Hacker."}) end
	},
	"mission.hacker.information",
	"hacker.hack",
	"hacker.credit_cards"
  },
  ["Bankdriver"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Bank Driver."}) end
	},
	"mission.bankdriver.moneybank",
	"mission.bankdriver.moneybank2",
	"bankdriver.vehicle",
	"bankdriver.paycheck",
	"bankdriver.money"
  },
  ["Cadet"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"police.cloakroom",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
    "police.seize.weapons",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"Cadet.vehicle",
	"police.loadshop",
	"cop.whitelisted",
	"Cadet.paycheck"
  },
  ["SWAT"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"SWAT.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"SWAT.paycheck"
  },
  ["Chief of Police"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Chief.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
    --"-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Chief.paycheck"
  },
  ["Bounty Hunter"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Bounty.cloakroom",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "911.service",
    "police.wanted",
    "Bounty.vehicle",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"Bounty.vehicle",
	"Bounty.loadshop",
	"cop.whitelisted",
  },
  ["Sheriff"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"sheriff.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"sheriff.paycheck"
  },
  ["State Trooper"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	 "Commander.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
    "police.wanted",
    "police.seize.weapons",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
    --"-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Commander.paycheck"
  },
    ["Deputy Sheriff"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Deputy.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
    "police.wanted",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Deputy.paycheck"
  },
      ["Police Captain"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Captain.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Captain.paycheck"
  },
    ["Police Lieutenant"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Lieutenant.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Lieutenant.paycheck"
  },
      ["Police Detective"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Detective.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Detective.paycheck"
  },
    ["Police Sergeant"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Sergeant.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "911.service",
    "police.wanted",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Sergeant.paycheck"
  },
      ["Dispatcher"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
    "police.pc",
    "police.check",
    "911.service",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.wanted",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"cop.whitelisted",
	"Dispatch.paycheck"
  },
  ["cop"] = {
    "cop.whitelisted"
  },
  ["Exotic Car Dealer"] = {
   	_config = { gtype = "job",
	  onspawn = function(player) vRPclient.notify(player,{"You are an Exotic Car Dealer"}) end
	},
	"exotic.whitelisted",
    "exotic.vehicle",
    "player.group.add",
    "player.group.remove",
    "player.list"
  },
  ["buyer"] = {  
    "exotic.vehicle"
  },
  ["ems"] = {  
    "ems.whitelisted"
  },
  ["moderator"] = {
    "president.whitelisted"
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin",
	"recruiter"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

---------------------------------------------------------------------------------------------------------------------
cfg.selectors = {
  ["UBER"] = {
    _config = {x = 213.95413208008, y = -808.51440429688, z = 31.014892578125,blipid = 472, blipcolor = 4},
    "UBER",
    "Off Duty"
  },
  ["Mechanic"] = {
    _config = {x = 549.02893066406, y = -172.26477050781, z = 54.481334686279,blipid = 472, blipcolor = 4},
    "Mechanic",
    "Off Duty"
  },
  ["Postal"] = {
    _config = {x = 790.33581542969, y = -3167.6821289063, z = 6.212601184845,blipid = 472, blipcolor = 4},
	"Postal",
    "Off Duty"
  },
  ["Bankdriver"] = {
    _config = {x = 243.67727661133, y = 230.6535949707, z = 106.28681945801},
	"Bankdriver",
    "Off Duty"
  },
  ["Fishing"] = {
    _config = {x = 153.18663024902, y = -3211.7668457031, z = 5.9093432426453,blipid = 472, blipcolor = 4},
	"Fisher",
    "Off Duty"
  },
  ["Medical Transport"] = {
    _config = {x = 2158.5861816406, y = 4789.3999023438, z = 41.115661621094,blipid = 472, blipcolor = 4},
	"Medical Transport",
    "Off Duty"
  },
   ["Airline Pilot"] = {
    _config = {x = -759.6591796875, y = -1515.3978271484, z = 4.9768991470337},
	"Airline Pilot",
    "Off Duty"
  },
    ["Cargo Pilot"] = {
    _config = {x = -928.89624023438, y = -2937.396484375, z = 13.945074081421,blipid = 472, blipcolor = 4},
	"Cargo Pilot",
    "Off Duty"
  },
  ["Quit Job"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410,blipid = 472, blipcolor = 4},
    "Unemployed"
  },
  ----------------------------------------------------------------------------------------------------------------------------
  ["Police job"] = { -- Alta Street
    _config = {x = 447.35137939453, y = -975.57592773438, z = 30.689584732056, blipid = 351, blipcolor = 38, permissions = {"cop.whitelisted"} },
	--"State Trooper",
	--"Police Captain",
	--"Police Lieutenant",
	--"Police Detective",
	--"Police Sergeant",
	--"Sheriff",
	--"Deputy Sheriff",
	--"Police Officer",
	--"Dispatcher",
	"Cadet",
	--"SWAT",
	"Off Duty"
    },
  ["Police job 2"] = { -- Sandy Shores
    _config = {x = 1857.5961914063, y = 3688.8952636719, z = 34.267040252686, blipid = 351, blipcolor = 38, permissions = {"cop.whitelisted"} },
	--"State Trooper",
	--"Police Captain",
	--"Police Lieutenant",
	--"Police Detective",
	--"Police Sergeant",
	--"Sheriff",
	--"Deputy Sheriff",
	--"Police Officer",
	--"Dispatcher",
	"Cadet",
	--"SWAT",
	"Off Duty"
    },
  ["Police job 3"] = { -- Paleto Bay
    _config = {x = -449.00927734375, y = 6017.1953125, z = 31.716377258301, blipid = 351, blipcolor = 38, permissions = {"cop.whitelisted"} },
	--"State Trooper",
	--"Police Captain",
	--"Police Lieutenant",
	--"Police Detective",
	--"Police Sergeant",
	--"Sheriff",
	--"Deputy Sheriff",
	--"Police Officer",
	--"Dispatcher",
	"Cadet",
	--"SWAT",
	"Off Duty"
    },
  ["Emergency job"] = { -- Spawn Hospital
    _config = {x =  249.50639343262, y = -1375.0694580078, z = 39.534378051758, blipid = 351, blipcolor = 3, permissions = {"ems.whitelisted"} },
	"EMS",
	"Off Duty"
  },
  ["Lawyer"] = {
    _config = {x = -1911.9273681641, y = -569.71649169922, z = 19.097215652466, blipid = 351, blipcolor = 7, permissions = {"Lawyer.whitelisted"} },
    "Lawyer",
    "Off Duty"
  },
  ["drugseller job"] = {
    _config = {x = 1865.1586914063, y = 3749.4343261719, z = 33.046268463135, blipid = 277, blipcolor = 4},
    "Drug Dealer",
    "Off Duty",
    "Unemployed"
  },
  ["Smuggler job"] = {
    _config = {x = 283.10546875, y = 6788.7104492188, z = 15.695198059082, blipid =  150, blipcolor = 4},
    "Weapons Smuggler",
    "Unemployed",
    "Off Duty"
  },
  ["Hacker job"] = {
    _config = {x = 705.682189941406, y = -966.919067382813, z = 30.3953418731689, blipid = 472, blipcolor = 4},
    "Hacker",
    "Off Duty",
    "Unemployed"
  }
  
}

return cfg
