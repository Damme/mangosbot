SET @CGUID       := 84723;
 
UPDATE `creature_template` SET `InhabitType`=4 WHERE  `entry`in(29066);

DELETE FROM creature WHERE `id` IN(28069,28840);
INSERT INTO creature (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 28069, 571, 0, 0, 1, 1, 0, 0, 5734.697, 3308.838, 299.8264, 1.867502, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 0)
(@CGUID+1, 28069, 571, 0, 0, 1, 1, 0, 0, 5728.474, 3438.191, 300.8422, 0.1060605, 120, 0, 0, 0, 0, 2, 0, 0, 0, 21463), -- 28069 (Area: 0)
(@CGUID+2, 28069, 571, 0, 0, 1, 1, 0, 0, 5717.042, 3428.265, 300.9259, 1.797689, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 0)
(@CGUID+3, 28069, 571, 0, 0, 1, 1, 0, 0, 5697.737, 3426.803, 300.9259, 1.570796, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 0)
(@CGUID+4, 28069, 571, 0, 0, 1, 1, 0, 0, 5738.866, 3156.665, 293.8326, 4.814398, 120, 0, 0, 0, 0, 2, 0, 0, 0, 21463), -- 28069 (Area: -1) (Auras: )
(@CGUID+5, 28069, 571, 0, 0, 1, 1, 0, 0, 5706.989, 3306.817, 299.718, 1.518436, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 4412)
(@CGUID+6, 28840, 571, 0, 0, 1, 1, 0, 0, 5737.756, 3273.594, 299.117, 2.794445, 120, 0, 0, 0, 0, 2, 0, 0, 0, 21463), -- 28840 (Area: 4412) (Auras: 55030 - 55030)
(@CGUID+7, 28069, 571, 0, 0, 1, 1, 0, 0, 5752.529, 3141.505, 294.1674, 3.351032, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 4412)
(@CGUID+8, 28069, 571, 0, 0, 1, 1, 0, 0, 5728.323, 3137.707, 294.1627, 0.715585, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 4412)
(@CGUID+9, 28069, 571, 0, 0, 1, 1, 0, 0, 5737.385, 3051.348, 288.0696, 1.239184, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: -1)
(@CGUID+10, 28069, 571, 0, 0, 1, 1, 0, 0, 5781.281, 3081.078, 288.0696, 3.089233, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 4412)
(@CGUID+11, 28069, 571, 0, 0, 1, 1, 0, 0, 5717.863, 3074.304, 288.0696, 0.4014257, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 4412)
(@CGUID+12, 28069, 571, 0, 0, 1, 1, 0, 0, 5767.666, 3052.907, 288.0696, 2.181662, 120, 0, 0, 0, 0, 0, 0, 0, 0, 21463), -- 28069 (Area: 4412)
(@CGUID+13, 28069, 571, 0, 0, 1, 1, 0, 0, 5704.075, 3429.402, 300.8421, 1.239184, 120, 0, 0, 0, 0, 2, 0, 0, 0, 21463); -- 28069 (Area: 4412)

DELETE FROM `waypoint_data` WHERE `id` =(@CGUID*10)+1;
DELETE FROM `waypoint_data` WHERE `id` =(@CGUID*10)+4;
DELETE FROM `waypoint_data` WHERE `id` =(@CGUID*10)+6;
DELETE FROM `waypoint_data` WHERE `id` =(@CGUID*10)+13;


INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
((@CGUID*10)+6, 1, 5712.777, 3273.745, 299.1278, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 2, 5705.582, 3264.395, 299.1169, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 3, 5704.035, 3252.411, 299.1169, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 4, 5711.498, 3241.038, 299.117, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 5, 5725.473, 3233.009, 299.1144, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 6, 5738.392, 3238.95, 299.1152, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 7, 5744.125, 3248.184, 299.1169, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 8, 5747.937, 3262.18, 299.1169, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 9, 5737.756, 3273.594, 299.117, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+6, 10, 5723.768, 3278.654, 299.138, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 1, 5737.638, 3168.66, 293.8326, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 2, 5734.833, 3190.47, 294.0836, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 3, 5733.381, 3205.572, 295.6976, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 4, 5734.833, 3190.47, 294.0836, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 5, 5737.638, 3168.66, 293.8326, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 6, 5739.323, 3152.199, 293.8326, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 7, 5742.777, 3128.636, 294.0135, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 8, 5744.988, 3100.412, 287.9503, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 9, 5746.909, 3085.88, 287.758, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 10, 5744.988, 3100.412, 287.9503, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 11, 5742.777, 3128.636, 294.0135, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+4, 12, 5739.323, 3152.199, 293.8326, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+1, 1, 5754.452, 3440.957, 300.8421, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+1, 2, 5721.435, 3437.441, 300.8421, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+1, 3, 5690.508, 3433.794, 300.8422, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+1, 4, 5655.392, 3430.241, 300.8421, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+1, 5, 5690.508, 3433.794, 300.8422, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+1, 6, 5721.435, 3437.441, 300.8421, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+13, 1, 5709.812, 3394.623, 300.8422, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+13, 2, 5713.209, 3367.164, 300.2528, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+13, 3, 5715.425, 3346.877, 300.0398, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+13, 4, 5718.081, 3324.582, 299.8054, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+13, 5, 5715.425, 3346.877, 300.0398, 0, 0, 0, 0, 100, 0),
((@CGUID*10)+13, 6, 5713.209, 3367.164, 300.2528, 0, 0, 0, 0, 100, 0);

DELETE FROM `creature_addon` WHERE `guid` IN(@CGUID+1,@CGUID+4,@CGUID+6,@CGUID+13);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@CGUID+1, (@CGUID*10)+1, 0, 0, 4097, 0, NULL),
(@CGUID+4, (@CGUID*10)+4, 0, 0, 4097, 0, NULL),
(@CGUID+6, (@CGUID*10)+6, 0, 0, 4097, 0, NULL),
(@CGUID+13, (@CGUID*10)+13, 0, 0, 4097, 0, NULL);
