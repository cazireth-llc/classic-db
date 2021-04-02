-- Patrol between `Angor Fortress` and `Hammertoe's Digsite` - Badlands

-- 2x Shadowforge Warriors + Shadowforge Chanter
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (7214);
DELETE FROM creature_movement WHERE id IN (7214);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(7214,1,-6401.47,-3168.86,298.048,100,2000,0),
(7214,2,-6404.84,-3170.87,295.769,100,0,0),
(7214,3,-6409.65,-3176.46,291.159,100,0,0),
(7214,4,-6416.73,-3191.92,280.409,100,0,0),
(7214,5,-6426,-3197.78,273.711,100,0,0),
(7214,6,-6433.97,-3200.38,268.8,100,0,0),
(7214,7,-6440.5,-3204.17,264.465,100,0,0),
(7214,8,-6449.07,-3214.61,257.83,100,0,0),
(7214,9,-6454.1,-3221.78,252.998,100,0,0),
(7214,10,-6464.07,-3237.34,245.028,100,0,0),
(7214,11,-6466.23,-3249.46,242.408,100,0,0),
(7214,12,-6469.26,-3267.51,241.668,100,0,0),
(7214,13,-6465.37,-3275.98,241.668,100,0,0),
(7214,14,-6458.36,-3289.06,241.668,100,0,0),
(7214,15,-6445.66,-3304.83,241.668,100,0,0),
(7214,16,-6435.92,-3315.27,241.668,100,0,0),
(7214,17,-6429.67,-3322.21,241.668,100,0,0),
(7214,18,-6416.42,-3337.77,241.668,100,0,0),
(7214,19,-6401.7,-3354.17,241.668,100,0,0),
(7214,20,-6391.65,-3366.32,241.668,100,0,0),
(7214,21,-6386.05,-3380.69,241.668,100,0,0),
(7214,22,-6387.66,-3389.91,241.668,100,0,0),
(7214,23,-6395.32,-3396.22,239.856,100,1000,0),
(7214,24,-6388.25,-3393.35,241.535,100,0,0),
(7214,25,-6384.97,-3379.85,241.667,100,0,0),
(7214,26,-6387.76,-3364.34,241.667,100,0,0),
(7214,27,-6391.99,-3353.76,241.667,100,0,0),
(7214,28,-6399.24,-3341.58,241.667,100,0,0),
(7214,29,-6403.22,-3328.87,241.667,100,0,0),
(7214,30,-6405.91,-3316.37,241.667,100,0,0),
(7214,31,-6406.91,-3303.16,241.667,100,0,0),
(7214,32,-6416.42,-3285.01,241.667,100,0,0),
(7214,33,-6426.57,-3276.21,241.667,100,0,0),
(7214,34,-6437.5,-3267.46,241.667,100,0,0),
(7214,35,-6447.69,-3256.31,241.794,100,0,0),
(7214,36,-6453.12,-3246.03,243.137,100,0,0),
(7214,37,-6454.05,-3237.45,246.183,100,0,0),
(7214,38,-6454.07,-3228.5,250.021,100,0,0),
(7214,39,-6450.7,-3217.29,256.176,100,0,0),
(7214,40,-6440.49,-3204.03,264.529,100,0,0),
(7214,41,-6426.05,-3197.78,273.692,100,0,0),
(7214,42,-6416.54,-3191.97,280.475,100,0,0),
(7214,43,-6412.88,-3183.3,286.412,100,0,0),
(7214,44,-6406.21,-3172.43,294.515,100,0,0);
-- links
UPDATE creature SET  orientation = 1.05 WHERE guid IN (7214,7215);
UPDATE creature SET position_x = -6408.370117, position_y = -3172.040039, position_z = 293.834442, orientation = 1.05 WHERE guid = 7216;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (7215,7216);
DELETE FROM creature_linking WHERE guid IN (7215,7216);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(7215, 7214, 1+2+512),
(7216, 7214, 1+2+512);
