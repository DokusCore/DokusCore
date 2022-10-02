-- --------------------------------------------------------------------------------
-- ---------------------------------- DokusCore -----------------------------------
-- --------------------------------------------------------------------------------
-- NOTE: THIS FEATURE IS CURRENTLY NOT IN USE AND BUILD IN.
--       IT WILL MAKE A COMEBACK ON A LATER VERSION!























-- -- This module is build in to DokusCore and handles the players paychecks when
-- -- enabled. Below you will find more information about all the options.
-- --------------------------------------------------------------------------------
-- _PayCheck       = {
--   Enabled = true,
--   Interval = { Minutes = 30 },
--   Notify  = { Enabled = true, Location = { Top = true, Right = true } },
--
--   Jobs = {
--     { Name = 'Unemployed', Money = { true, 'Wallet', 0.1 }, Gold = { true, 'Bank', 0.5 } },
--     { Name = 'Police',     Money = { true, 'Wallet', 0.1 }, Gold = { true, 'Bank', 0.5 } },
--   },
--
--   VIPs = {
--     { -- EXAMPLE
--       Enabled  = true, Steam = "steam:1100001042b8cd7",
--       Static   = { Enabled = false, Money = { true, 'Wallet', 0.5 }, Gold  = { true, 'Bank', 0.5 } },
--       Multiply = { Enabled = true, Money = { true, 'Wallet', 5.0 }, Gold  = { true, 'Bank', 10.0 } }
--     }
--   }
-- }
--
-- --------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------
-- -- Explination
-- --------------------------------------------------------------------------------
-- -- Enabled  = This can be true or false, and it enables or disables the module.
-- -- Notify   = This will send a notification to the user when ever he received a check.
-- -- Interval = This is the time before a paycheck is issues, and also for the next one.
-- --            The user first need to be online for the minimum amount of time before
-- --            He or She receives his/her first paycheck.
--
-- ------------------
-- -- Jobs Section --
-- ------------------
-- -- Name = This is the job name of the jobs you would like to have a paycheck.
-- --        You can enter any job on the list, you can even add self made jobs!
-- -- Money[1] = The 1st parameter is to enable or disable paying the user with money
-- -- Money[2] = The 2nd parameter defines how the user gets the paycheck, this can be
-- --            one of the following values. Wallet - Bank - Both
-- -- Money[3] = The 3rd parameter is the amount of money they will receive.
-- --------------------------------------------------------------------------------
-- -- The information above also counts for the Gold section, it works exactly the same.
-- -- Both the money and gold section can be activated at the same time without a problem.
-- --------------------------------------------------------------------------------
--
-- ------------------
-- -- Vips Section --
-- ------------------
-- --------------------------------------------------------------------------------
-- -- With this section you can define if people on your server need to receive extra
-- -- money in their paycheck on top of the normal paycheck. This can either be a
-- -- static amount of multiplied by a x amount.
-- --------------------------------------------------------------------------------
-- -- Enabled = This turns on or off the extra paycheck for this specific user.
-- --------------------------------------------------------------------------------
-- ------------------
-- --    Static    --
-- ------------------
-- --------------------------------------------------------------------------------
-- -- With the static feature enabled you can define an x amount of money that the
-- -- user receives extra. This is added to the default paycheck amount. Ex: ( 5 + 10 )
-- --------------------------------------------------------------------------------
-- -- Money[1] = The 1st parameter is to enable or disable paying the user with money
-- -- Money[2] = The 2nd parameter defines how the user gets the paycheck, this can be
-- --            one of the following values. Wallet - Bank - Both
-- -- Money[3] = The 3rd parameter is the amount of money they will receive.
--
-- -- The same rules apply to the gold section, and both can be used at the same time
--
-- ------------------
-- --    Multiply    --
-- ------------------
-- --------------------------------------------------------------------------------
-- -- With the static feature enabled you can define an x amount of money that the
-- -- user receives extra. This is multiplied with the default paycheck amount. Ex: ( 5 x 10 )
-- --------------------------------------------------------------------------------
-- -- Money[1] = The 1st parameter is to enable or disable paying the user with money
-- -- Money[2] = The 2nd parameter defines how the user gets the paycheck, this can be
-- --            one of the following values. Wallet - Bank - Both
-- -- Money[3] = The 3rd parameter is the amount of money they will receive.
--
-- -- The same rules apply to the gold section, and both can be used at the same time
-- --------------------------------------------------------------------------------
-- -- NOTE: You can NOT turn on both Static and Multiply at the same time. Then the
-- -- module will stop working. Either enable static or multiplication, not both.
-- --------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------
