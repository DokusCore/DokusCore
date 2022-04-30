--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Trains
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Trains = {
  ActRadius = 7.0,
  StartSpeed = 5.0,
  StartForce = 750,

  -- The amount of trains on the track.
  -- More information below
  Trains = {
    Passenger = { Amount = 1, SpawnDelay = 5  },
    -- Transport = { Amount = 2, SpawnDelay = 10 } -- Not in Use Yet
  },

  -- Currently it only handles 1 train on the track
  -- More information below.
  Spawns = {
    Passenger = {
      { Spawned = false, Coords = vector3(957.4, -887.1, 67.8), Heading = 0 }
    }
  },

  -- The script picks 1 random train out of this list.
  Vehicles = {
    { Type = 'Passenger', Hash = -1719006020 }, -- 6 Passenger wagons 3 freight
    { Type = 'Passenger', Hash = 987516329   }, -- Long Passenger ( USE )
  },

  -- These are the train station blips of all stations where the train stops
  Blips = {
    { ID = 'Rhodes',    Coords = vector3(1230.2, -1298.6, 76.9)  },
    { ID = 'sDenis',    Coords = vector3(2747.8, -1396.5, 46.1)  },
    { ID = 'Annesburg', Coords = vector3(2933.1, 1282.5, 44.6)   },
    { ID = 'Riggs',     Coords = vector3(-1094.3, -577.7, 82.4)  },
    { ID = 'Wallice',   Coords = vector3(-1300.4, 400.1, 95.4)   },
    { ID = 'Bacchus',   Coords = vector3(583.1, 1681.7, 187.7)   },
    { ID = 'Flatneck',  Coords = vector3(-333.4, -354.2, 88.0)   },
  },

  -- These are the NPCs behind the counter to buy tickets.
  -- More information below
  NPCs = {
    { ID = 'Rhodes',    Hash = 'U_M_M_VhtStationClerk_01', ActRadius = 2.5, Coords = vector3(1230.2, -1298.6, 76.9),  Heading = 229.5  },
    { ID = 'sDenis',    Hash = 'U_M_M_VhtStationClerk_01', ActRadius = 2.5, Coords = vector3(2747.8, -1396.5, 46.1),  Heading = 23.6   },
    { ID = 'Annesburg', Hash = 'U_M_M_VhtStationClerk_01', ActRadius = 2.5, Coords = vector3(2933.1, 1282.5, 44.6),   Heading = 63.9   },
    { ID = 'Riggs',     Hash = 'U_M_M_VhtStationClerk_01', ActRadius = 2.5, Coords = vector3(-1094.3, -577.7, 82.4),  Heading = 50.3   },
    { ID = 'Wallice',   Hash = 'U_M_M_VhtStationClerk_01', ActRadius = 2.5, Coords = vector3(-1300.4, 400.1, 95.4),   Heading = 147.3  },

  -- Currently not in use
  -- { ID = 'Valentine', Hash = 'U_M_M_VhtStationClerk_01', ActRadius = 2.5, Coords = vector3(-175.3, 631.9, 113.0),   Heading = 326.9  },
  },

  -- This is the route the train takes and all its speed changes to make it
  -- realistic. More information below
  Route = {
    Passenger = { -- NPC Round Trip takes 35 minutes.
      { ID = 1,  Type = 'Speed',    Coords = vector3(1007.0, -963.0,  70.2),  Speed = 10, Stop = nil,  Force = 500  },
      { ID = 2,  Type = 'Slow',     Coords = vector3(1111.9, -1181.2, 73.0),  Speed = 5,  Stop = nil,  Force = 300  },
      { ID = 3,  Type = 'Station',  Coords = vector3(1202.3, -1287.3, 76.4),  Speed = 0,  Stop = 30,   Force = 750  },
      { ID = 4,  Type = 'Speed',    Coords = vector3(1376.2, -1441.6, 78.7),  Speed = 15, Stop = nil,  Force = 750  },
      { ID = 5,  Type = 'Slow',     Coords = vector3(1582.1, -1587.8, 66.9),  Speed = 10, Stop = nil,  Force = 500  },
      { ID = 6,  Type = 'Slow',     Coords = vector3(2179.6, -1518.9, 47.9),  Speed = 7,  Stop = nil,  Force = 500  },
      { ID = 7,  Type = 'Slow',     Coords = vector3(2400.1, -1510.0, 48.3),  Speed = 5,  Stop = nil,  Force = 750  },
      { ID = 8,  Type = 'Station',  Coords = vector3(2724.7, -1462.5, 48.3),  Speed = 0,  Stop = 30,   Force = 750  },
      { ID = 9,  Type = 'Speed',    Coords = vector3(2842.4, -1330.7, 48.5),  Speed = 8,  Stop = nil,  Force = 750  },
      { ID = 10, Type = 'Speed',    Coords = vector3(2885.6, -1128.4, 48.6),  Speed = 15, Stop = nil,  Force = 500  },
      { ID = 11, Type = 'Slow',     Coords = vector3(2723.6, -791.8, 44.9),   Speed = 10, Stop = nil,  Force = 500  },
      { ID = 12, Type = 'Slow',     Coords = vector3(2660.0, -587.4, 45.1),   Speed = 7,  Stop = nil,  Force = 300  },
      { ID = 13, Type = 'Speed',    Coords = vector3(2704.3, -288.9, 45.1),   Speed = 15, Stop = nil,  Force = 750  },
      { ID = 14, Type = 'Slow',     Coords = vector3(2745.2, 313.1, 56.5),    Speed = 7,  Stop = nil,  Force = 500  },
      { ID = 15, Type = 'Station',  Coords = vector3(2879.8, 591.9, 60.4),    Speed = 0,  Stop = 30,   Force = 500  },
      { ID = 16, Type = 'Speed',    Coords = vector3(2909.8, 741.9, 52.2),    Speed = 10, Stop = nil,  Force = 500  },
      { ID = 17, Type = 'Station',  Coords = vector3(2832.4, 1118.0, 50.5),   Speed = 0,  Stop = 30,   Force = 1500 },
      { ID = 18, Type = 'Speed',    Coords = vector3(3029.1, 1478.2, 52.0),   Speed = 10, Stop = nil,  Force = 1000 },
      { ID = 19, Type = 'Speed',    Coords = vector3(3142.9, 1672.9, 84.1),   Speed = 15, Stop = nil,  Force = 750  },
      { ID = 20, Type = 'Slow',     Coords = vector3(3021.0, 1928.7, 127.8),  Speed = 10, Stop = nil,  Force = 300  },
      { ID = 21, Type = 'Slow',     Coords = vector3(2851.6, 2135.9, 162.8),  Speed = 7,  Stop = nil,  Force = 750  },
      { ID = 22, Type = 'Speed',    Coords = vector3(2691.3, 2230.0, 162.7),  Speed = 10, Stop = nil,  Force = 1000 },
      { ID = 23, Type = 'Slow',     Coords = vector3(2355.4, 2052.5, 180.3),  Speed = 7,  Stop = nil,  Force = 350  },
      { ID = 24, Type = 'Speed',    Coords = vector3(2076.8, 1852.5, 194.5),  Speed = 15, Stop = nil,  Force = 750  },
      { ID = 25, Type = 'Speed',    Coords = vector3(1711.0, 1829.5, 194.7),  Speed = 20, Stop = nil,  Force = 750  },
      { ID = 26, Type = 'Slow',     Coords = vector3(1183.1, 1789.4, 195.2),  Speed = 7,  Stop = nil,  Force = 1000 },
      { ID = 27, Type = 'Station',  Coords = vector3(613.9, 1657.8, 190.1),   Speed = 0,  Stop = 30,   Force = 750  },
      { ID = 28, Type = 'Speed',    Coords = vector3(433.8, 1786.6, 190.3),   Speed = 8,  Stop = nil,  Force = 1000 },
      { ID = 29, Type = 'Speed',    Coords = vector3(47.8, 1742.5, 180.8),    Speed = 15, Stop = nil,  Force = 750  },
      { ID = 30, Type = 'Speed',    Coords = vector3(-283.4, 1601.8, 168.3),  Speed = 22, Stop = nil,  Force = 750  },
      { ID = 31, Type = 'Slow',     Coords = vector3(-569.5, 1099.8, 135.6),  Speed = 10, Stop = nil,  Force = 300  },
      { ID = 32, Type = 'Slow',     Coords = vector3(-1229.5, 553.3, 96.0),   Speed = 5,  Stop = nil,  Force = 300  },
      { ID = 33, Type = 'Station',  Coords = vector3(-1286.7, 457.4, 96.7),   Speed = 0,  Stop = 30,   Force = 1000 },
      { ID = 34, Type = 'Speed',    Coords = vector3(-1393.3, 335.7, 101.0),  Speed = 12, Stop = nil,  Force = 500  },
      { ID = 35, Type = 'Slow',     Coords = vector3(-1449.7, -46.3, 103.4),  Speed = 10, Stop = nil,  Force = 500  },
      { ID = 36, Type = 'Slow',     Coords = vector3(-1286.2, -387.3, 102.3), Speed = 5,  Stop = nil,  Force = 475  },
      { ID = 37, Type = 'Station',  Coords = vector3(-1151.5, -538.9, 89.5),  Speed = 0,  Stop = 30,   Force = 1050 },
      { ID = 38, Type = 'Speed',    Coords = vector3(-921.0, -632.9, 75.2),   Speed = 15, Stop = nil,  Force = 500  },
      { ID = 39, Type = 'Slow',     Coords = vector3(-575.9, -469.4, 82.8),   Speed = 7,  Stop = nil,  Force = 300  },
      { ID = 40, Type = 'Slow',     Coords = vector3(-438.7, -400.6, 87.2),   Speed = 5,  Stop = nil,  Force = 500  },
      { ID = 41, Type = 'Station',  Coords = vector3(-383.6, -372.7, 88.9),   Speed = 0,  Stop = 30,   Force = 1000 },
      { ID = 42, Type = 'Speed',    Coords = vector3(-201.5, -289.4, 93.0),   Speed = 8,  Stop = nil,  Force = 900  },
      { ID = 43, Type = 'Slow',     Coords = vector3(19.0, -364.3, 94.5),     Speed = 5,  Stop = nil,  Force = 350  },
      { ID = 44, Type = 'Speed',    Coords = vector3(186.0, -422.1, 90.0),    Speed = 7,  Stop = nil,  Force = 500  },
      { ID = 45, Type = 'Speed',    Coords = vector3(470.2, -520.8, 79.7),    Speed = 10, Stop = nil,  Force = 500  },
      { ID = 46, Type = 'Slow',     Coords = vector3(758.1, -582.2, 79.7),    Speed = 7,  Stop = nil,  Force = 500  },
    }
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--[[

[ Train Spawns ]: Currently this script can only have 1 train on the track!!!
This is due to the way the script is build with threads instead of events.
The thread is only able to manage the speed of a single train as it contains
while loops. Also the trains are attached to one of your players online, as all
train handlings are done client sided, these are client natives. We will make a
work around at a later stage.
-- Right now i only have a Passenger route and no Transport route yet.
-- A round trip with the train takes 35 mintes.
-- The train starts from Ro
-- The heading of the train can either be 1 or 0, this sets the train heading on track.

[ Vehicles ]: Here we pick a random train from the array. You can add more trains
to the array if you wish. Only 1 is chosen, and the route is made for the train
that is currently active. Shorter trains could end up overshooting and undershooting
the platforms.

[ Blips ]: There are more blips on the map then there are NPCs for buying tickers.
The train does also stop at stations that is soly for work and transport. This will
bring people to work, or simulates some transportation as the train does have
transport flat platforms on it.

[ NPCs ]: This is where the NPCs will be standing at stations where you can buy
tickers. These are for as of right now only estetics, as the NPCs do not sell
any tickets at this moment. In a later update it will

[ Route ]: This is the route that the train is taking. I have tried to make the
traveling as realistic as it can be. The train start very slowly as a 200 year
old steam train would do, but one at speed it would drive normally.
I have taken into account that when going up hill, the train takes a longer time
to speed up, but is faster with slowing down. For going down hill it would be the
opposite, it would speed up faster but slow down slower.
When the train arrives at a city it would decrease its speed to 5 miles an hour
or NPCs will see the train to late and kill themselfs. When the train arrives at
the station it will slow down very slowly, basically it just releases the throttle
and let the train come to a halt by friction, this simulates reducing wear and tear
of the train brakes as in real life.

[ EXTRA NOTE ]:
This plugin is just a blueprint of what is to come, at a later stage I will be
re-writing this plugin and extend it massively. On a later update, you will be able
to have multiple trains on the track, and to prevent a pool size error, only 1
train will be attached to 1 player's client. So the more players on the server, the
more trains on the track with a maximum limit.

You will be able to drive the train. You will not be able to spawn in the train<br>
if you have the job like other scripts, this is simply too unrealistic. How it works
is, you will assign yourself as on duty at one of the train stations that hold an
NPC behind the ticket counter. The first train that arrives at the station
will stop and the NPC will step out of the train, from this moment on you take
over his shift and yours starts. The same go's for getting off duty, you will park
the train at one of the stations and then sign yourself off duty. The NPC will spawn
back in, walk to the trains and take over again.

You will be able to drive the train completely by yourself, or choose to let the train
drive itself via the route that is pre-programmed. This gives the train driver the
change to also walk through the train, and see if the travelers have a valid ticket.<br><br>

Another thing will be the coal itself. You will need to shove the coal into the oven
of the train, or the train will grind to a halt. On the train route, there are
multiple coal fill stations, here you will be able to fill the train if the
tank is filled as these need to be manually filled by a player.

So a lot of nice things to come for the future of this plugin. For the rest
IT IS NOT RECOMMENDED TO RESTART THIS PLUGIN!!  Not that it is not possible but
this will despawn the train and everyone in it will get stranded. After the plugin
starts again, it will simply start at Rhodes again and start its journey.

]]






















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
