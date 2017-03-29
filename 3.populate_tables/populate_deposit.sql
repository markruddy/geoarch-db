--****************************************************************
--
-- INSERT SQL statements used to populate the Superficial Geology \\
-- database. Assumes that all Postgres tables referred to in \\
-- ReadMe.md have been created.
-- 
-- Mark Ruddy
-- March 18, 2015
--
-- these data selected from an original table:
--
-- SELECT '(''' || r_id || ''', ''' || \\
 -- strat_unit || ''', ''' || \\
-- truncation || ''', ''' || \\
-- base || ''', ''' || \\
-- description || ''', ''' || \\
-- sed_pac || ''', ''' || \\
-- facies || \\
-- ''', ST_GeomFromText(''' || ST_AsText(top_geom) || ''', 27700), ' || \\
-- ' ST_GeomFromText(''' || ST_AsText(bottom_geom) || ''', 27700)),' \\
-- FROM deposit; \\
--
-- RUN CREATE DEPOSIT TABLE SCRIPT FIRST! See ReadMe.md file
--
--****************************************************************


---------------------------------------------------------------------------------------------------
-- Populate table deposit with borehole derived deposits
-- All borehole-related data are either copyright British Geological Survey or L-P:Archaeology LLP (for Royal Albert Dock (RYA13) site).
-- All trench-related data are fabricated.

INSERT INTO deposit (r_id, strat_unit, truncation, base, description, sed_pac, facies, top_geom, bottom_geom) VALUES

('1', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (542945 180846 3.947)', 27700),  ST_GeomFromText('POINT Z (542945 180846 1.447)', 27700)),
('1', 'Late Holocene Alluvial System', 'true', 'true', 'Greyish-green/greenish-grey mottled v slightly silty organic-rich CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (542945 180846 1.447)', 27700),  ST_GeomFromText('POINT Z (542945 180846 -0.253)', 27700)),
('1', 'Mid-Holocene Floodplain', 'false', 'true', 'Dark brown friable slightly clayey PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (542945 180846 -0.253)', 27700),  ST_GeomFromText('POINT Z (542945 180846 -1.053)', 27700)),
('1', 'Early Holocene Fluvial System', 'false', 'true', 'Medium dense pale greyish brown SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (542945 180846 -1.053)', 27700),  ST_GeomFromText('POINT Z (542945 180846 -1.553)', 27700)),
('1', 'Early Holocene Fluvial System', 'false', 'true', 'Brownish grey very clayey slightly organic SILT', 'Fluvial Sand and Silt', 'Floodplain', ST_GeomFromText('POINT Z (542945 180846 -1.553)', 27700),  ST_GeomFromText('POINT Z (542945 180846 -2.453)', 27700)),
('1', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (542945 180846 -2.453)', 27700),  ST_GeomFromText('POINT Z (542945 180846 -9.853)', 27700)),
('2', 'Late Holocene Alluvial System', 'true', 'true', 'Soft to firm grey brown mottled silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (542850 180850 1.12)', 27700),  ST_GeomFromText('POINT Z (542850 180850 -0.78)', 27700)),
('2', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm dark brown PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (542850 180850 -0.78)', 27700),  ST_GeomFromText('POINT Z (542850 180850 -1.28)', 27700)),
('17', 'NA', 'false', 'false', 'Backfill', 'NA', 'NA', ST_GeomFromText('POINT Z (543092.7 180836.7 -1.19)', 27700),  ST_GeomFromText('POINT Z (543092.7 180836.7 -1.27)', 27700)),
('2', 'Mid-Holocene Floodplain', 'false', 'true', 'Loose, grey clayey very silty fine SAND, peat traces', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (542850 180850 -1.28)', 27700),  ST_GeomFromText('POINT Z (542850 180850 -2.78)', 27700)),
('2', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (542850 180850 -2.78)', 27700),  ST_GeomFromText('POINT Z (542850 180850 -7.68)', 27700)),
('2', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (542850 180850 4.02)', 27700),  ST_GeomFromText('POINT Z (542850 180850 1.12)', 27700)),
('3', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft brown mottled PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543020 180850 -0.68)', 27700),  ST_GeomFromText('POINT Z (543020 180850 -1.28)', 27700)),
('3', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft grey mottled very silty CLAY. Peat traces.', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543020 180850 -1.28)', 27700),  ST_GeomFromText('POINT Z (543020 180850 -3.38)', 27700)),
('3', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543020 180850 -3.38)', 27700),  ST_GeomFromText('POINT Z (543020 180850 -9.08)', 27700)),
('3', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543020 180850 4.02)', 27700),  ST_GeomFromText('POINT Z (543020 180850 0.82)', 27700)),
('3', 'Late Holocene Alluvial System', 'true', 'true', 'Soft to firm grey and black mottled SILTY CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543020 180850 0.82)', 27700),  ST_GeomFromText('POINT Z (543020 180850 -0.68)', 27700)),
('4', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft to firm grey slightly sandy silty CLAY, peat traces', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543100 180880 -2.04)', 27700),  ST_GeomFromText('POINT Z (543100 180880 -3.14)', 27700)),
('4', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543100 180880 -3.14)', 27700),  ST_GeomFromText('POINT Z (543100 180880 -7.64)', 27700)),
('4', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543100 180880 1.96)', 27700),  ST_GeomFromText('POINT Z (543100 180880 1.16)', 27700)),
('4', 'Late Holocene Alluvial System', 'true', 'true', 'Very soft dark grey brown silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543100 180880 1.16)', 27700),  ST_GeomFromText('POINT Z (543100 180880 0.06)', 27700)),
('4', 'Late Holocene Alluvial System', 'true', 'true', 'Soft grey mottled silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543100 180880 0.06)', 27700),  ST_GeomFromText('POINT Z (543100 180880 -1.04)', 27700)),
('4', 'Mid-Holocene Floodplain', 'false', 'true', 'Very soft dark brown clayey PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543100 180880 -1.04)', 27700),  ST_GeomFromText('POINT Z (543100 180880 -2.04)', 27700)),
('5', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543210 180880 2.63)', 27700),  ST_GeomFromText('POINT Z (543210 180880 0.73)', 27700)),
('5', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft to firm grey brown and grey mottled silty CLAY. Traces of shells, becoming peaty with depth.', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543210 180880 0.73)', 27700),  ST_GeomFromText('POINT Z (543210 180880 -0.82)', 27700)),
('5', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm dark brown PEAT.', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543210 180880 -0.82)', 27700),  ST_GeomFromText('POINT Z (543210 180880 -0.87)', 27700)),
('5', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543210 180880 -0.87)', 27700),  ST_GeomFromText('POINT Z (543210 180880 -8.07)', 27700)),
('6', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543246 180856 4.32)', 27700),  ST_GeomFromText('POINT Z (543246 180856 0.72)', 27700)),
('6', 'Late Holocene Alluvial System', 'true', 'true', 'Soft to firm grey brown and black mottled slightly organic silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543246 180856 0.72)', 27700),  ST_GeomFromText('POINT Z (543246 180856 0.02)', 27700)),
('6', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm dark brown clayey PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543246 180856 0.02)', 27700),  ST_GeomFromText('POINT Z (543246 180856 -0.78)', 27700)),
('6', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft green grey sandy CLAY peat traces', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543246 180856 -0.78)', 27700),  ST_GeomFromText('POINT Z (543246 180856 -1.48)', 27700)),
('6', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543246 180856 -1.48)', 27700),  ST_GeomFromText('POINT Z (543246 180856 -5.68)', 27700)),
('7', 'Late Holocene Alluvial System', 'true', 'true', 'Soft grey brown silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (542887 180762 2.33)', 27700),  ST_GeomFromText('POINT Z (542887 180762 -0.17)', 27700)),
('7', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm dark brown PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (542887 180762 -0.17)', 27700),  ST_GeomFromText('POINT Z (542887 180762 -0.47)', 27700)),
('7', 'Early Holocene Fluvial System', 'false', 'true', 'Loose very clayey medium fine SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (542887 180762 -0.47)', 27700),  ST_GeomFromText('POINT Z (542887 180762 -1.97)', 27700)),
('7', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (542887 180762 -1.97)', 27700),  ST_GeomFromText('POINT Z (542887 180762 -7.57)', 27700)),
('7', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (542887 180762 4.63)', 27700),  ST_GeomFromText('POINT Z (542887 180762 2.33)', 27700)),
('8', 'Mid-Holocene Floodplain', 'false', 'true', 'Medium dense grey brown silty medium fine SAND with peat traces', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (542944 180760 -0.21)', 27700),  ST_GeomFromText('POINT Z (542944 180760 -1.81)', 27700)),
('8', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (542944 180760 -1.81)', 27700),  ST_GeomFromText('POINT Z (542944 180760 -7.51)', 27700)),
('8', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (542944 180760 4.69)', 27700),  ST_GeomFromText('POINT Z (542944 180760 1.79)', 27700)),
('8', 'Late Holocene Alluvial System', 'true', 'true', 'Soft to firm grey silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (542944 180760 1.79)', 27700),  ST_GeomFromText('POINT Z (542944 180760 0.29)', 27700)),
('8', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm dark brown PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (542944 180760 0.29)', 27700),  ST_GeomFromText('POINT Z (542944 180760 -0.21)', 27700)),
('9', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543054 180757 4.61)', 27700),  ST_GeomFromText('POINT Z (543054 180757 1.01)', 27700)),
('9', 'Late Holocene Alluvial System', 'true', 'true', 'Firm grey and black organic mottled silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543054 180757 1.01)', 27700),  ST_GeomFromText('POINT Z (543054 180757 0.11)', 27700)),
('9', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm brown mottles clayey PEAT more clayey at depth', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543054 180757 0.11)', 27700),  ST_GeomFromText('POINT Z (543054 180757 -0.59)', 27700)),
('9', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543054 180757 -0.59)', 27700),  ST_GeomFromText('POINT Z (543054 180757 -7.29)', 27700)),
('10', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543100 180750 4.62)', 27700),  ST_GeomFromText('POINT Z (543100 180750 1.62)', 27700)),
('10', 'Late Holocene Alluvial System', 'true', 'true', 'Soft to firm grey and black mottled slightly organic silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543100 180750 1.62)', 27700),  ST_GeomFromText('POINT Z (543100 180750 0.72)', 27700)),
('10', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm grey brown clayey PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543100 180750 0.72)', 27700),  ST_GeomFromText('POINT Z (543100 180750 0.12)', 27700)),
('10', 'Early Holocene Fluvial System', 'false', 'true', 'Medium dense grey silty medium fien SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (543100 180750 0.12)', 27700),  ST_GeomFromText('POINT Z (543100 180750 -1.78)', 27700)),
('10', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543100 180750 -1.78)', 27700),  ST_GeomFromText('POINT Z (543100 180750 -7.38)', 27700)),
('11', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543045 180702 -1.1)', 27700),  ST_GeomFromText('POINT Z (543045 180702 -6.8)', 27700)),
('11', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543045 180702 5.3)', 27700),  ST_GeomFromText('POINT Z (543045 180702 0.7)', 27700)),
('11', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft grey mottled silty CLAY occasional peat traces. Becoming more peaty with depth', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543045 180702 0.7)', 27700),  ST_GeomFromText('POINT Z (543045 180702 -1.1)', 27700)),
('12', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543200 180700 5)', 27700),  ST_GeomFromText('POINT Z (543200 180700 0.7)', 27700)),
('12', 'Late Holocene Alluvial System', 'true', 'true', 'Brown mottled light grey and blueish grey silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543200 180700 0.7)', 27700),  ST_GeomFromText('POINT Z (543200 180700 -1)', 27700)),
('12', 'Mid-Holocene Floodplain', 'false', 'true', 'Light grey brown clayey fine to medium SAND with a little PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543200 180700 -1)', 27700),  ST_GeomFromText('POINT Z (543200 180700 -1.6)', 27700)),
('12', 'Shepperton Gravels', 'false', 'false', 'SAND AND GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543200 180700 -1.6)', 27700),  ST_GeomFromText('POINT Z (543200 180700 -7)', 27700)),
('13', 'Late Holocene Alluvial System', 'true', 'true', 'Firm becoming soft grey and black mottled slightly organic silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543195 180752 2.79)', 27700),  ST_GeomFromText('POINT Z (543195 180752 0.09)', 27700)),
('13', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft dark brown PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543195 180752 0.09)', 27700),  ST_GeomFromText('POINT Z (543195 180752 -0.21)', 27700)),
('13', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543195 180752 -0.21)', 27700),  ST_GeomFromText('POINT Z (543195 180752 -8.71)', 27700)),
('13', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543195 180752 4.69)', 27700),  ST_GeomFromText('POINT Z (543195 180752 2.79)', 27700)),
('14', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543197 180798 -0.72)', 27700),  ST_GeomFromText('POINT Z (543197 180798 -7.62)', 27700)),
('14', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543197 180798 5.08)', 27700),  ST_GeomFromText('POINT Z (543197 180798 1.28)', 27700)),
('14', 'Late Holocene Alluvial System', 'true', 'true', 'Soft grey mottled silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543197 180798 1.28)', 27700),  ST_GeomFromText('POINT Z (543197 180798 0.08)', 27700)),
('14', 'Mid-Holocene Floodplain', 'false', 'true', 'Firm dark brown very clayey PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543197 180798 0.08)', 27700),  ST_GeomFromText('POINT Z (543197 180798 -0.72)', 27700)),
('15', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543230 180810 4.9)', 27700),  ST_GeomFromText('POINT Z (543230 180810 0.9)', 27700)),
('15', 'Late Holocene Alluvial System', 'true', 'true', 'Soft firm light grey mottled black silty CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543230 180810 0.9)', 27700),  ST_GeomFromText('POINT Z (543230 180810 -0.5)', 27700)),
('15', 'Mid-Holocene Floodplain', 'false', 'true', 'Soft dark brown clayey silty PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543230 180810 -0.5)', 27700),  ST_GeomFromText('POINT Z (543230 180810 -0.7)', 27700)),
('15', 'Late Holocene Alluvial System', 'true', 'true', 'Light grey clayey fine to medium SAND with thin soft brown or grey seams of CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543230 180810 -0.7)', 27700),  ST_GeomFromText('POINT Z (543230 180810 -2)', 27700)),
('15', 'Shepperton Gravels', 'false', 'false', 'GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543230 180810 -2)', 27700),  ST_GeomFromText('POINT Z (543230 180810 -7.2)', 27700)),
('16', 'Modern Made Ground', 'false', 'true', 'Modern fill', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543045.5 180836.3 4.53)', 27700),  ST_GeomFromText('POINT Z (543045.5 180836.3 -0.02)', 27700)),
('16', 'Mid-Holocene Floodplain', 'false', 'true', 'Peat', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543045.5 180836.3 -0.52)', 27700),  ST_GeomFromText('POINT Z (543045.5 180836.3 -1.37)', 27700)),
('16', 'Late Holocene Alluvial System', 'true', 'true', 'Soft, greenish grey SILT/CLAY. Occasional small to medium dark grey silt patches. SILT/CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543045.5 180836.3 -0.02)', 27700),  ST_GeomFromText('POINT Z (543045.5 180836.3 -0.52)', 27700)),
('16', 'Early Holocene Fluvial System', 'false', 'true', 'Soft, grey, fine to medium SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (543045.5 180836.3 -1.37)', 27700),  ST_GeomFromText('POINT Z (543045.5 180836.3 -2.72)', 27700)),
('16', 'Shepperton Gravels', 'false', 'false', 'SAND and GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543045.5 180836.3 -2.72)', 27700),  ST_GeomFromText('POINT Z (543045.5 180836.3 -2.92)', 27700)),
('16', 'Modern Made Ground', 'false', 'true', 'Tarmac', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543045.5 180836.3 4.63)', 27700),  ST_GeomFromText('POINT Z (543045.5 180836.3 4.53)', 27700)),
('17', 'Mid-Holocene Floodplain', 'false', 'true', 'PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543092.7 180836.7 -1.27)', 27700),  ST_GeomFromText('POINT Z (543092.7 180836.7 -1.47)', 27700)),
('17', 'Early Holocene Fluvial System', 'false', 'true', 'Loose, greenish grey, well sorted medium SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (543092.7 180836.7 -1.47)', 27700),  ST_GeomFromText('POINT Z (543092.7 180836.7 -3.04)', 27700)),
('17', 'Shepperton Gravels', 'false', 'false', 'Sandy GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543092.7 180836.7 -3.04)', 27700),  ST_GeomFromText('POINT Z (543092.7 180836.7 -3.14)', 27700)),
('17', 'Modern Made Ground', 'false', 'true', 'Tarmac', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543092.7 180836.7 4.71)', 27700),  ST_GeomFromText('POINT Z (543092.7 180836.7 4.66)', 27700)),
('17', 'Modern Made Ground', 'false', 'true', 'Modern fill', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543092.7 180836.7 4.66)', 27700),  ST_GeomFromText('POINT Z (543092.7 180836.7 -1.19)', 27700)),
('18', 'Early Holocene Fluvial System', 'false', 'true', 'SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (543076.5 180795.2 -1.12)', 27700),  ST_GeomFromText('POINT Z (543076.5 180795.2 -2.47)', 27700)),
('18', 'Shepperton Gravels', 'false', 'false', 'Gravelly SAND', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543076.5 180795.2 -2.47)', 27700),  ST_GeomFromText('POINT Z (543076.5 180795.2 -2.57)', 27700)),
('18', 'Shepperton Gravels', 'false', 'false', 'Sandy GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543076.5 180795.2 -2.57)', 27700),  ST_GeomFromText('POINT Z (543076.5 180795.2 -2.67)', 27700)),
('18', 'Modern Made Ground', 'false', 'true', 'Tarmac', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543076.5 180795.2 4.68)', 27700),  ST_GeomFromText('POINT Z (543076.5 180795.2 4.58)', 27700)),
('18', 'Modern Made Ground', 'false', 'true', 'Modern fil', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543076.5 180795.2 4.58)', 27700),  ST_GeomFromText('POINT Z (543076.5 180795.2 0.43)', 27700)),
('18', 'Late Holocene Alluvial System', 'true', 'true', 'Soft, grey and black mottled SILT/CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543076.5 180795.2 0.43)', 27700),  ST_GeomFromText('POINT Z (543076.5 180795.2 -0.57)', 27700)),
('18', 'Mid-Holocene Floodplain', 'false', 'true', 'PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543076.5 180795.2 -0.57)', 27700),  ST_GeomFromText('POINT Z (543076.5 180795.2 -1.12)', 27700)),
('19', 'Early Holocene Fluvial System', 'false', 'true', 'Loose, greenish grey, fine to medium SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (543055.2 180736.5 -0.74)', 27700),  ST_GeomFromText('POINT Z (543055.2 180736.5 -2.49)', 27700)),
('19', 'Shepperton Gravels', 'false', 'false', 'SAND and GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543055.2 180736.5 -2.49)', 27700),  ST_GeomFromText('POINT Z (543055.2 180736.5 -2.69)', 27700)),
('19', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543055.2 180736.5 5.41)', 27700),  ST_GeomFromText('POINT Z (543055.2 180736.5 4.91)', 27700)),
('19', 'Modern Made Ground', 'false', 'true', 'Modern fill', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543055.2 180736.5 4.91)', 27700),  ST_GeomFromText('POINT Z (543055.2 180736.5 0.81)', 27700)),
('19', 'NA', 'false', 'false', 'Lost', 'NA', 'NA', ST_GeomFromText('POINT Z (543055.2 180736.5 -0.34)', 27700),  ST_GeomFromText('POINT Z (543055.2 180736.5 -0.59)', 27700)),
('19', 'Late Holocene Alluvial System', 'true', 'true', 'Firm, dark grey CLAY. Medium to coarse sand-sized black clay mottles (20%). Gradual boundary with unit below. CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543055.2 180736.5 0.81)', 27700),  ST_GeomFromText('POINT Z (543055.2 180736.5 -0.34)', 27700)),
('19', 'Mid-Holocene Floodplain', 'false', 'true', 'PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543055.2 180736.5 -0.59)', 27700),  ST_GeomFromText('POINT Z (543055.2 180736.5 -0.74)', 27700)),
('20', 'Early Holocene Fluvial System', 'false', 'true', 'SAND', 'Fluvial Sand and Silt', 'Braidplain', ST_GeomFromText('POINT Z (543122 180751.4 -1.64)', 27700),  ST_GeomFromText('POINT Z (543122 180751.4 -3.17)', 27700)),
('20', 'Shepperton Gravels', 'false', 'false', 'SAND and GRAVEL', 'Terrace Gravel', 'Mass Wastage/Braidplain', ST_GeomFromText('POINT Z (543122 180751.4 -3.17)', 27700),  ST_GeomFromText('POINT Z (543122 180751.4 -3.22)', 27700)),
('20', 'Modern Made Ground', 'false', 'true', 'Made ground', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543122 180751.4 4.48)', 27700),  ST_GeomFromText('POINT Z (543122 180751.4 4.38)', 27700)),
('20', 'Modern Made Ground', 'false', 'true', 'Modern fill', 'Modern', 'Made Ground', ST_GeomFromText('POINT Z (543122 180751.4 4.38)', 27700),  ST_GeomFromText('POINT Z (543122 180751.4 0.68)', 27700)),
('20', 'Late Holocene Alluvial System', 'true', 'true', 'SILT/CLAY', 'Estuarine Clay', 'Estuary', ST_GeomFromText('POINT Z (543122 180751.4 0.68)', 27700),  ST_GeomFromText('POINT Z (543122 180751.4 -0.62)', 27700)),
('20', 'Mid-Holocene Floodplain', 'false', 'true', 'PEAT', 'Peat', 'Wetland', ST_GeomFromText('POINT Z (543122 180751.4 -0.62)', 27700),  ST_GeomFromText('POINT Z (543122 180751.4 -1.64)', 27700)),
('21', 'Modern Made Ground', 'true', 'true', 'Made ground', 'Made Ground', 'Modern', ST_GeomFromText('LINESTRING Z (543168 180752 4.8,543169 180781 4.8)', 27700),  ST_GeomFromText('LINESTRING Z (543168 180752 1.5,543169 180781 1.5)', 27700)),
('21', 'Late Holocene Alluvial System', 'false', 'true', 'Greyish-green/greenish-grey mottled v slightly silty organic-rich CLAY', 'Estuary', 'Estuarine Clay', ST_GeomFromText('LINESTRING Z (543168 180752 1.5,543169 180781 1.5)', 27700),  ST_GeomFromText('LINESTRING Z (543168 180752 0.1,543169 180781 0.1)', 27700)),
('21', 'Mid-Holocene Floodplain', 'false', 'true', 'Dark brown friable slightly clayey PEAT', 'Wetland', 'Peat', ST_GeomFromText('LINESTRING Z (543168 180752 0.1,543169 180781 0.1)', 27700),  ST_GeomFromText('LINESTRING Z (543168 180752 -0.4,543169 180781 -0.4)', 27700)),
('21', 'Shepperton Gravels', 'false', 'true', 'GRAVEL', 'Mass Wastage/Braidplain', 'Terrace Gravel', ST_GeomFromText('LINESTRING Z (543168 180752 -0.4,543169 180781 -0.4)', 27700),  ST_GeomFromText('LINESTRING Z (543168 180752 -0.5,543169 180781 -0.5)', 27700)),
('22', 'Modern Made Ground', 'true', 'true', 'Made ground', 'Made Ground', 'Modern', ST_GeomFromText('LINESTRING Z (543219 180797 5,543219 180805 5)', 27700),  ST_GeomFromText('LINESTRING Z (543219 180797 1,543219 180805 1)', 27700)),
('22', 'Late Holocene Alluvial System', 'false', 'true', 'Greyish-green/greenish-grey mottled v slightly silty organic-rich CLAY', 'Estuary', 'Estuarine Clay', ST_GeomFromText('LINESTRING Z (543219 180797 1,543219 180805 1)', 27700),  ST_GeomFromText('LINESTRING Z (543219 180797 -0.5,543219 180805 -0.5)', 27700)),
('25', 'Modern Made Ground', 'true', 'true', 'Made ground', 'Made Ground', 'Modern', ST_GeomFromText('LINESTRING Z (542972 180807 4,543017 180807 4)', 27700),  ST_GeomFromText('LINESTRING Z (542972 180797 0.5,543017 180805 0.5)', 27700)),
('23', 'Modern Made Ground', 'true', 'true', 'Made ground', 'Made Ground', 'Modern', ST_GeomFromText('LINESTRING Z (543255 180797 5,543255 180805 5)', 27700),  ST_GeomFromText('LINESTRING Z (543255 180797 1,543255 180805 1)', 27700)),
('24', 'Modern Made Ground', 'true', 'true', 'Made ground', 'Made Ground', 'Modern', ST_GeomFromText('LINESTRING Z (542972 180827 4,543017 180827 4)', 27700),  ST_GeomFromText('LINESTRING Z (542972 180797 0.5,543017 180805 0.5)', 27700)),
('24', 'Late Holocene Alluvial System', 'false', 'true', 'Greyish-green/greenish-grey mottled v slightly silty organic-rich CLAY', 'Estuary', 'Estuarine Clay', ST_GeomFromText('LINESTRING Z (543219 180827 0.5,543219 180827 0.5)', 27700),  ST_GeomFromText('LINESTRING Z (543219 180827 0,543219 180827 0)', 27700)),
('24', 'Mid-Holocene Floodplain', 'false', 'true', 'Dark brown friable slightly clayey PEAT', 'Wetland', 'Peat', ST_GeomFromText('LINESTRING Z (543219 180827 0,543219 180827 0)', 27700),  ST_GeomFromText('LINESTRING Z (543219 180827 -1,543219 180827 -1)', 27700)),
('23', 'Late Holocene Alluvial System', 'false', 'true', 'Greyish-green/greenish-grey mottled v slightly silty organic-rich CLAY', 'Estuary', 'Estuarine Clay', ST_GeomFromText('LINESTRING Z (543255 180797 1,543255 180805 1)', 27700),  ST_GeomFromText('LINESTRING Z (543255 180797 -0.5,543255 180805 -0.5)', 27700)),
('25', 'Late Holocene Alluvial System', 'false', 'true', 'Greyish-green/greenish-grey mottled v slightly silty organic-rich CLAY', 'Estuary', 'Estuarine Clay', ST_GeomFromText('LINESTRING Z (543219 180807 0.5,543219 180807 0.5)', 27700),  ST_GeomFromText('LINESTRING Z (543219 180807 0,543219 180807 0)', 27700)),
('25', 'Mid-Holocene Floodplain', 'false', 'true', 'Dark brown friable slightly clayey PEAT', 'Wetland', 'Peat', ST_GeomFromText('LINESTRING Z (543219 180807 0,543219 180807 0)', 27700),  ST_GeomFromText('LINESTRING Z (543219 180807 -1,543219 180807 -1)', 27700));

---------------------------------------------------------------------------------------------------
