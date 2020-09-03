-- GameData1
-- Author: Elden
-- DateCreated: 8/24/2020 3:42:05 PM
--------------------------------------------------------------

-- MALI GOLD ON MINE ADJUSTEMENT

UPDATE ModifierArguments SET Value='2' WHERE ModifierId='TRAIT_MALI_MINES_GOLD' AND Name='Amount';

INSERT OR IGNORE INTO TraitModifiers VALUES ('TRAIT_CIVILIZATION_MALI_GOLD_DESERT', 'TRAIT_MALI_MINES_GOLD_UPGRADE_1_ELDEN');
INSERT OR IGNORE INTO TraitModifiers VALUES ('TRAIT_CIVILIZATION_MALI_GOLD_DESERT', 'TRAIT_MALI_MINES_GOLD_UPGRADE_2_ELDEN');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('TRAIT_MALI_MINES_GOLD_UPGRADE_1_ELDEN', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENTS_MALI_UPGRADE_1_ELDEN'),
    ('TRAIT_MALI_MINES_GOLD_UPGRADE_2_ELDEN', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENTS_MALI_UPGRADE_2_ELDEN');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('TRAIT_MALI_MINES_GOLD_UPGRADE_1_ELDEN', 'YieldType' , 'YIELD_GOLD'),
    ('TRAIT_MALI_MINES_GOLD_UPGRADE_1_ELDEN', 'Amount' , '1'),
    ('TRAIT_MALI_MINES_GOLD_UPGRADE_2_ELDEN', 'YieldType' , 'YIELD_GOLD'),
    ('TRAIT_MALI_MINES_GOLD_UPGRADE_2_ELDEN', 'Amount' , '1');

INSERT OR IGNORE INTO RequirementSets VALUES
    ('REQUIREMENTS_MALI_UPGRADE_1_ELDEN', 'REQUIREMENTSET_TEST_ALL'),
    ('REQUIREMENTS_MALI_UPGRADE_2_ELDEN', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements VALUES
    ('REQUIREMENTS_MALI_UPGRADE_1_ELDEN', 'REQUIREMENT_IS_MINE_ELDEN'),
	('REQUIREMENTS_MALI_UPGRADE_1_ELDEN', 'REQUIREMENT_HAS_TECH_APPRENTICESHIP_ELDEN'),
    ('REQUIREMENTS_MALI_UPGRADE_2_ELDEN', 'REQUIREMENT_IS_MINE_ELDEN'),
	('REQUIREMENTS_MALI_UPGRADE_2_ELDEN', 'REQUIREMENT_HAS_TECH_BANKING_ELDEN');

INSERT INTO Requirements (RequirementId, RequirementType) VALUES
	('REQUIREMENT_IS_MINE_ELDEN', 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'),
    ('REQUIREMENT_HAS_TECH_APPRENTICESHIP_ELDEN', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
    ('REQUIREMENT_HAS_TECH_BANKING_ELDEN', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
	

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
	('REQUIREMENT_IS_MINE_ELDEN', 'ImprovementType', 'IMPROVEMENT_MINE'),
    ('REQUIREMENT_HAS_TECH_APPRENTICESHIP_ELDEN', 'TechnologyType', 'TECH_APPRENTICESHIP'),
    ('REQUIREMENT_HAS_TECH_BANKING_ELDEN', 'TechnologyType', 'TECH_BANKING');

-- Maori remove builder
-- UPDATE ModifierArguments SET Value='0' WHERE ModifierId='BUILDER_PRESETTLEMENT' AND Name='Amount';

-- Maori

UPDATE ModifierArguments SET Value='0' WHERE ModifierId='TRAIT_MAORI_PRODUCTION_WOODS' AND Name='Amount';
UPDATE ModifierArguments SET Value='0' WHERE ModifierId='TRAIT_MAORI_PRODUCTION_RAINFOREST' AND Name='Amount';
UPDATE ModifierArguments SET Value='0' WHERE ModifierId='TRAIT_MAORI_FISHING_BOAT_FOOD' AND Name='Amount';

INSERT OR IGNORE INTO TraitModifiers VALUES ('TRAIT_CIVILIZATION_MAORI_MANA', 'TRAIT_MAORI_WOOD_UPGRADE_ELDEN');
INSERT OR IGNORE INTO TraitModifiers VALUES ('TRAIT_CIVILIZATION_MAORI_MANA', 'TRAIT_MAORI_RAINFOREST_UPGRADE_ELDEN');
INSERT OR IGNORE INTO TraitModifiers VALUES ('TRAIT_CIVILIZATION_MAORI_MANA', 'TRAIT_MAORI_FISHING_BOAT_UPGRADE_ELDEN');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('TRAIT_MAORI_WOOD_UPGRADE_ELDEN', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENTS_MAORI_WOOD_UPGRADE_ELDEN'),
    ('TRAIT_MAORI_RAINFOREST_UPGRADE_ELDEN', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENTS_MAORI_RAINFOREST_UPGRADE_ELDEN'),
	('TRAIT_MAORI_FISHING_BOAT_UPGRADE_ELDEN', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENTS_MAORI_FISHING_BOAT_UPGRADE_ELDEN');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('TRAIT_MAORI_WOOD_UPGRADE_ELDEN', 'YieldType', 'YIELD_PRODUCTION'),
    ('TRAIT_MAORI_WOOD_UPGRADE_ELDEN', 'Amount', '1'),
	('TRAIT_MAORI_RAINFOREST_UPGRADE_ELDEN', 'YieldType', 'YIELD_PRODUCTION'),
    ('TRAIT_MAORI_RAINFOREST_UPGRADE_ELDEN', 'Amount', '1'),
    ('TRAIT_MAORI_FISHING_BOAT_UPGRADE_ELDEN', 'YieldType', 'YIELD_FOOD'),
    ('TRAIT_MAORI_FISHING_BOAT_UPGRADE_ELDEN', 'Amount', '1');

INSERT OR IGNORE INTO RequirementSets VALUES
    ('REQUIREMENTS_MAORI_WOOD_UPGRADE_ELDEN', 'REQUIREMENTSET_TEST_ALL'),
	('REQUIREMENTS_MAORI_RAINFOREST_UPGRADE_ELDEN', 'REQUIREMENTSET_TEST_ALL'),
    ('REQUIREMENTS_MAORI_FISHING_BOAT_UPGRADE_ELDEN', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements VALUES
    ('REQUIREMENTS_MAORI_WOOD_UPGRADE_ELDEN', 'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'),
	('REQUIREMENTS_MAORI_WOOD_UPGRADE_ELDEN', 'PLOT_IS_FOREST_REQUIREMENT'),
	('REQUIREMENTS_MAORI_WOOD_UPGRADE_ELDEN', 'REQUIREMENT_HAS_TECH_CONSTRUCTION_ELDEN'),
    ('REQUIREMENTS_MAORI_RAINFOREST_UPGRADE_ELDEN', 'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'),
	('REQUIREMENTS_MAORI_RAINFOREST_UPGRADE_ELDEN', 'PLOT_IS_JUNGLE_REQUIREMENT'),
	('REQUIREMENTS_MAORI_RAINFOREST_UPGRADE_ELDEN', 'REQUIREMENT_HAS_TECH_CONSTRUCTION_ELDEN'),
	('REQUIREMENTS_MAORI_FISHING_BOAT_UPGRADE_ELDEN', 'REQUIRES_PLOT_HAS_FISHINGBOATS'),
	('REQUIREMENTS_MAORI_FISHING_BOAT_UPGRADE_ELDEN', 'REQUIREMENT_HAS_TECH_CELESTIAL_NAVIGATION_ELDEN');

INSERT INTO Requirements (RequirementId, RequirementType) VALUES
	('REQUIREMENT_HAS_TECH_CONSTRUCTION_ELDEN', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
	('REQUIREMENT_HAS_TECH_CELESTIAL_NAVIGATION_ELDEN', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
    ('REQUIREMENT_HAS_TECH_CONSTRUCTION_ELDEN', 'TechnologyType', 'TECH_CONSTRUCTION'),
    ('REQUIREMENT_HAS_TECH_CELESTIAL_NAVIGATION_ELDEN', 'TechnologyType', 'TECH_CELESTIAL_NAVIGATION');