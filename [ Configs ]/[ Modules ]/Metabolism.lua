--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Metabolism
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Metabolism = {

  Temp = {
    Format = 'C',
    Limit = { Min = -5, Max = 28 },
    Damage = { Cold = { Thirst = 0.02, Hunger = 0.05  }, Hot = { Thirst = 0.05, Hunger = 0.02 } }
  },

  Vitals = { LoseWhen = 1.0, DPS = 1 },
  Hunger = { Drain = { Idle = 0.01, Walking = 0.07, Running = 0.15, Sprinting = 0.25 }},
  Thirst = { Drain = { Idle = 0.02, Walking = 0.10, Running = 0.50, Sprinting = 0.75 }},

  -- Spice up your RP with random character farts and burps.
  -- The Frequention is in seconds! Every 5 minutes a number is pulled
  -- between 1 and 10, if the number lands on 5 the character will burp or fart.
  Farting = { Enabled = true, Frequention = 300 },
  Burping = { Enabled = true, Frequention = 300 },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Temperature --
--------------------------------------------------------------------------------
-- Format: You fill in C for Celcuis or F for Farenheit
-- Limit: This gives you the minimum and maximum environment temperatures before
--        a user starts to lose more of his hunger or Thirst
-- Damage (Hot/Cold): This is the amount of extra drain you have on water and food
--        when the temperatures passes the threshold. Damage is done per second.
--        A full bar is 100 points, so on cold damage you lose 0.15 points per second
--        more food then what you already do by default. In hot environments you lose
--        more water then food.
--------------------------------------------------------------------------------
-- Vitals --
--------------------------------------------------------------------------------
-- LoseWhen: (Name will be changed later): This is the low percentage when your
--         vitals icons starts flashing. So if either food or water is lower then
--         10% it will start flashing to alert te player.
--         NOTE: The icons also flash if you take more drain damage due to being
--         in a to hot or cold area!!
--------------------------------------------------------------------------------
-- Hunger - Thirst --
--------------------------------------------------------------------------------
-- These settings speak for them selfs, this is the default vital drainage of
-- your players characters. Your vital drain is impacted by your movement speed,
-- the faster you move, the more it will take of your food and water. you can
-- tweak these settings to your liking.
-- NOTE: Setting the values to low will result in a broken rolepolay. This due
-- to the players barely needing to drink or eat, thus no items are bought from
-- the store. To low settings will grind the economics to a halt. For the best
-- and a more realistic drainage, we would advice to leave the settings as it is.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
