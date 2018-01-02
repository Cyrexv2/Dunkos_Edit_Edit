
local cfg = {}

cfg.lang = "en"

-- REPAIR

-- map of permission -> repair config
-- (multiple repair permissions can work)
--- chance: chance factor per minute (1 => everytime, 10 => 1/10)
--- title
--- positions
--- reward: money reward
--- steps: number of things to fix
cfg.repair = {
  ["mission.repair.satellite_dishes"] = {
    chance = 5,
    title = "satellite dishes",
    steps = 3,
    positions = {
      {1985.55017089844,2929.42211914063,46.5480003356934},
      {1965.38012695313,2917.47241210938,56.1684608459473},
      {1963.78540039063,2923.09497070313,58.674430847168},
      {2000.7314453125,2930.4404296875,56.9706687927246},
      {2008.03125,2933.06591796875,59.4772453308105},
      {2021.29052734375,2945.23486328125,47.3697547912598},
      {2046.88366699219,2944.65673828125,51.0216827392578},
      {2048.24487304688,2950.81567382813,57.5155029296875},
      {2049.64965820313,2945.82641601563,57.5173225402832},
      {2043.96203613281,2945.04541015625,60.0233764648438},
      {2063.26318359375,2954.65551757813,47.1244201660156},
      {2078.7734375,2945.44653320313,56.4166870117188},
      {2084.89599609375,2949.8955078125,58.922477722168},
      {2075.71948242188,2950.55688476563,58.9233741760254},
      {2098.6142578125,2939.935546875,47.3400077819824},
      {2106.00659179688,2926.54125976563,50.9320068359375},
      {2106.63671875,2923.71069335938,57.4270858764648},
      {2106.38110351563,2929.37817382813,59.9300575256348},
      {2114.44677734375,2924.77514648438,59.933162689209},
      {2127.35888671875,2918.94116210938,47.7327079772949},
      {2137.28881835938,2900.53442382813,57.263298034668},
      {2137.61767578125,2906.61645507813,59.770336151123},
      {2144.6728515625,2900.85595703125,59.7593727111816}
    },
    reward = 1000
  },
  ["mission.repair.wind_turbines"] = {
    chance = 5,
    steps = 3,
    title = "wind turbines",
    positions = {
      {2363.77880859375,2288.63891601563,94.252693176269},
      {2347.873046875,2237.5771484375,99.3171691894531},
      {2330.4150390625,2114.89965820313,108.288673400879},
      {2331.23291015625,2054.52392578125,103.90625},
      {2287.10668945313,2075.57153320313,122.888381958008},
      {2271.43725585938,1996.4248046875,132.123352050781},
      {2307.3681640625,1972.44323730469,131.318496704102},
      {2267.27758789063,1917.859375,123.269912719727},
      {2299.90209960938,1857.3779296875,106.976081848145},
      {2356.48413085938,1836.69982910156,102.337211608887}
    },
    reward = 1000
  }
}
-------bankdriver
cfg.bankdriver = {
  ["mission.bankdriver.moneybank"] = {
    chance = 5,
    title = "Bank Driver",
    steps = 1,
    positions = {
      {-161.13385009766,-860.69409179688,29.488040924072},
      {-1071.6049804688,-857.49749755859,4.8673276901245},
      {-738.89025878906,-1502.5588378906,5.0005192756653},
	  {2008.03125,2933.06591796875,59.4772453308105},
      {2021.29052734375,2945.23486328125,47.3697547912598},
      {2046.88366699219,2944.65673828125,51.0216827392578},
      {2048.24487304688,2950.81567382813,57.5155029296875},
      {2049.64965820313,2945.82641601563,57.5173225402832},
      {2043.96203613281,2945.04541015625,60.0233764648438},
      {2063.26318359375,2954.65551757813,47.1244201660156},
      {2078.7734375,2945.44653320313,56.4166870117188},
      {2084.89599609375,2949.8955078125,58.922477722168},
      {2075.71948242188,2950.55688476563,58.9233741760254},
      {2098.6142578125,2939.935546875,47.3400077819824},
      {2106.00659179688,2926.54125976563,50.9320068359375},
      {2106.63671875,2923.71069335938,57.4270858764648},
      {2106.38110351563,2929.37817382813,59.9300575256348},
      {2114.44677734375,2924.77514648438,59.933162689209},
      {2127.35888671875,2918.94116210938,47.7327079772949},
      {2137.28881835938,2900.53442382813,57.263298034668},
      {2137.61767578125,2906.61645507813,59.770336151123},
      {2144.6728515625,2900.85595703125,59.7593727111816}
    },
    reward = 500
  },
  ["mission.bankdriver.moneybank2"] = {
    chance = 5,
    title = "Bank Driver",
    steps = 1,
    positions = {
      {-161.13385009766,-860.69409179688,29.488040924072},
      {-1071.6049804688,-857.49749755859,4.8673276901245},
      {2363.77880859375,2288.63891601563,94.252693176269},
      {2347.873046875,2237.5771484375,99.3171691894531},
      {2330.4150390625,2114.89965820313,108.288673400879},
      {2331.23291015625,2054.52392578125,103.90625},
      {2287.10668945313,2075.57153320313,122.888381958008},
      {2271.43725585938,1996.4248046875,132.123352050781},
      {2307.3681640625,1972.44323730469,131.318496704102},
      {2267.27758789063,1917.859375,123.269912719727},
      {2299.90209960938,1857.3779296875,106.976081848145}
    },
    reward = 500
  }
  
}
-- DELIVERY

local common_delivery_positions = {
  {-1087.20959472656,479.4970703125,81.5277786254883},
  {-1215.48083496094,457.809478759766,91.9756546020508},
  {-1277.36901855469,496.794769287109,97.8074340820313},
  {-1380.82360839844,474.517272949219,105.052627563477},
  {-1063.642578125,-1054.95007324219,2.15036153793335},
  {-1113.640625,-1068.970703125,2.15036201477051},
  {-1161.85144042969,-1099.05871582031,2.17665767669678}
}

-- map of permission => delivery config
--- items: map of idname => {min_amount,max_amount,reward_per_item}
--- positions
-- only one delivery permission can be used per player (no permission selection, only one will work)
cfg.delivery = {
  ["mission.delivery.food"] = {
    positions = common_delivery_positions,
    items = {
      ["tacos"] = {0,8,500},
      ["water"] = {0,8,350}
    }
  }
}

local common_drugseller_positions = {
  {-1087.20959472656,479.4970703125,81.5277786254883},
  {-1215.48083496094,457.809478759766,91.9756546020508},
  {-1277.36901855469,496.794769287109,97.8074340820313},
  {-1380.82360839844,474.517272949219,105.052627563477},
  {-1063.642578125,-1054.95007324219,2.15036153793335},
  {-1113.640625,-1068.970703125,2.15036201477051},
  {-1161.85144042969,-1099.05871582031,2.17665767669678}
}

cfg.drugseller = {
  ["mission.drugseller.weed"] = {
	title = "Drug Dealer",
    positions = common_drugseller_positions,
    items = {
      ["weed"] = {1,10,500},
	  ["cocaine"] = {1,7,600},
	  ["lsd"] = {1,5,700}
    }
  }
}

local common_fisher_positions = {
  {1397.0802001953,3606.7141113281,34.980922698975},
  {1966.0919189453,3746.009765625,32.343746185303},
  {2678.9653320313,3288.4008789063,55.241153717041},
  {1168.3609619141,2708.5288085938,38.157703399658}
}

cfg.fisherman = {
  ["mission.delivery.fish"] = {
	title = "Fishing",
    positions = common_fisher_positions,
    items = {
      ["bass"] = {1,8,200},
	  ["catfish"] = {1,8,200}
    }
  }
}

local common_smuggler_positions = {
  {-569.02294921875,5253.2524414063,70.487228393555},
  {-1144.0905761719,4938.1181640625,222.26870727539},
  {-2612.7600097656,2949.5141601563,9.6540851593018} 
}

cfg.weapons_smuggler = {
  ["mission.weapons.smuggler"] = {
	title = "Weapons Smuggler",
    positions = common_smuggler_positions,
    items = {
      ["AK47"] = {1,5,350},
	  ["M4A1"] = {1,5,350}
    }
  }
}

local common_pilot_positions = {
  {2143.0698242188,4811.3764648438,41.179256439209},
  {1702.8529052734,3251.9147949219,40.986331939697},
 }

cfg.pilot = {
  ["mission.pilot.cargo"] = {
	title = "Airline Cargo",
    positions = common_pilot_positions,
    items = {
      ["cargo"] = {1,10,350}
    }
  }
}

local common_medical_positions = {
  {326.83486938477,-1473.7293701172,29.795280456543}
}

cfg.medical_driver = {
  ["mission.delivery.medical"] = {
	title = "Medical Delivery",
    positions = common_medical_positions,
    items = {
      ["Medical Weed"] = {1,10,350}
    }
  }
}



local common_hacker_positions = {
  {-1087.20959472656,479.4970703125,81.5277786254883},
  {-1215.48083496094,457.809478759766,91.9756546020508},
  {-1277.36901855469,496.794769287109,97.8074340820313},
  {-1380.82360839844,474.517272949219,105.052627563477},
  {-1063.642578125,-1054.95007324219,2.15036153793335},
  {-1113.640625,-1068.970703125,2.15036201477051},
  {-1161.85144042969,-1099.05871582031,2.17665767669678}
}

cfg.hacker = {
  ["mission.hacker.information"] = {
    positions = common_hacker_positions,
    items = {
      ["credit"] = {1,5,500}
    }
  }
}

return cfg