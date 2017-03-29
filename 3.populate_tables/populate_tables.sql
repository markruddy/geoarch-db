--****************************************************************
--
-- INSERT SQL statements used to populate the Superficial Geology \\
-- database. Assumes that all Postgres tables referred to in \\
-- Readme.md have been created.
-- 
-- Mark Ruddy
-- March 18, 2015
--
--****************************************************************


---------------------------------------------------------------------------------------------------
-- Populate site table
-- All data aside from 'Royal Albert Dock' are fabricated
INSERT INTO site (code, name, client_name, boundary, start_date, end_date) VALUES ('RYA13', 'Royal Albert Dock', 'University of East London', st_GeomFromText('POLYGON((543140.959 180846.918, 543141.002 180694.151, 543033.918 180694.462, 543038.263 180848.725, 543140.959 180846.918))',27700), '2013-06-01',NULL); -- site ongoing

INSERT INTO site (code, name, client_name, boundary, start_date, end_date) VALUES ('RYA10', 'Royal Albert Hotel', 'Premier Inns', st_GeomFromText('POLYGON ((542875.928342624101788 180845.671494847279973,543024.075063996482641 180843.303252398909535,543019.864855218445882 180695.945945172919892,542874.08637628343422 180698.051049573463388,542875.928342624101788 180845.671494847279973))',27700), '2010/02/15','2012/09/30');

INSERT INTO site (code, name, client_name, boundary, start_date, end_date) VALUES ('RYA11', 'University of East London, Docklands Campus', 'University of East London', st_GeomFromText('POLYGON ((543158.538606841000728 180829.620073861558922,543259.583617510739714 180829.093797756591812,543260.109893607906997 180772.255979256471619,543244.05847264197655 180751.204935369198211,543159.064882937935181 180750.941797326435335,543158.538606841000728 180829.620073861558922))',27700), '2011/11/05', '2015/02/26');

INSERT INTO site (code, name, client_name, boundary, start_date, end_date) VALUES ('RYA15', 'Royal Albert Sportshall', 'Oriental Investments', st_GeomFromText('POLYGON ((542828 180698,543105 180694,543105 180766,542828 180766,542828 180698))',27700), '2015/03/15',NULL); -- site ongoing
---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
-- Populate borehole table
-- Please refer to file populate_bh.sql
-- All these data are either copyright British Geological Survey or L-P:Archaeology LLP (for Royal Albert Dock (RYA13) site).
---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
-- Populate trench table
-- All fabricated data

INSERT INTO trench (name, start_date, end_date, m_id, m_type, tr_geom) VALUES 
	('Trench1','2012-05-10','2012-05-28','1','t', st_GeomFromText('POLYHEDRALSURFACE(
		((543168 180781 4.8, 543174 180781 4.8, 543174 180781 -0.5, 543168 180781 -0.5, 543168 180781 4.8)),
		((543174 180752 4.8, 543174 180781 4.8, 543174 180781 -0.5, 543174 180752 -0.5, 543174 180752 4.8)),
		((543174 180752 4.8, 543168 180752 4.8, 543168 180752 -0.5, 543174 180752 -0.5, 543174 180752 4.8)),
		((543168 180752 4.8, 543168 180781 4.8, 543168 180781 -0.5, 543168 180752 -0.5, 543168 180752 4.8)),
		((543168 180752 4.8, 543168 180781 4.8, 543174 180781 4.8, 543174 180752 4.8, 543168 180752 4.8)),
		((543168 180752 -0.5, 543168 180781 -0.5, 543174 180781 -0.5, 543174 180752 -0.5, 543168 180752 -0.5))
		)', 27700)),

	('Trench2','2012-06-02','2012-06-16','2','t', st_GeomFromText('POLYHEDRALSURFACE(
		((543219 180805 5.0, 543255 180805 5.0, 543255 180805 -0.5, 543219 180805 -0.5, 543219 180805 5.0)),
		((543255 180805 5.0, 543255 180797 5.0, 543255 180797 -0.5, 543255 180805 -0.5, 543255 180805 5.0)),
		((543255 180797 5.0, 543219 180797 5.0, 543219 180797 -0.5, 543255 180797 -0.5, 543255 180797 5.0)),
		((543219 180797 5.0, 543219 180805 5.0, 543219 180805 -0.5, 543219 180797 -0.5, 543219 180797 5.0)),
		((543219 180797 5.0, 543219 180805 5.0, 543255 180805 5.0, 543255 180797 5.0, 543219 180797 5.0)),
		((543219 180797 -0.5, 543219 180805 -0.5, 543255 180805 -0.5, 543255 180797 -0.5, 543219 180797 -0.5))
		)', 27700)),
	
	('Trench1','2010-11-09','2010-12-22','3','t', st_GeomFromText('POLYHEDRALSURFACE(
		((542972 180807 4.0, 542972 180827 4.0, 543017 180827 4.0, 543017 180807 4.0, 542972 180807 4.0)),
		((542972 180807 4.0, 542972 180827 4.0, 542972 180827 -1.0, 542972 180807 -1.0, 542972 180807 4.0)), 
		((542972 180827 4.0, 543017 180827 4.0, 543017 180827 -1.0, 542972 180827 -1.0, 542972 180827 4.0)),
		((543017 180827 4.0, 543017 180807 4.0, 543017 180807 -1.0, 543017 180827 -1.0, 543017 180827 4.0)),
		((542972 180807 4.0, 543017 180807 4.0, 543017 180807 -1.0, 542972 180807 -1.0, 542972 180807 4.0)),
		((542972 180807 -1.0, 542972 180827 -1.0, 543017 180827 -1.0, 543017 180807 -1.0, 542972 180807 -1.0))
		)', 27700));

---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
-- Populate method table
-- Foreign Key values for method table are taken from trench and borehole tables
INSERT INTO method(m_id, m_type) SELECT m_id, m_type FROM trench;
INSERT INTO method(m_id, m_type) SELECT m_id, m_type FROM borehole;
---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
-- Populate site_method table with links between site.st_id and method.mm_id
-- It is necessary to specify which boreholes/trenches are linked to a site as there may not be simple geographic relationship, eg a borehole may fall within the boundaries of two temporally overlapping sites but is only associated with one site.

-- Royal Albert Dock (RYA13)
INSERT INTO site_method  
SELECT 1 as st_id, m.mm_id FROM method m INNER JOIN borehole b ON (b.m_id = m.m_id AND b.m_type = m.m_type) WHERE b.name = ANY('{GBH1, GBH2, GBH3, GBH4, GBH5}'::text[]); -- borehole names in array structure

-- Royal Albert Hotel (RYA10)
INSERT INTO site_method  
SELECT 2 as st_id, m.mm_id FROM method m INNER JOIN borehole b ON (b.m_id = m.m_id AND b.m_type = m.m_type) WHERE b.name = ANY('{A93, A96}'::text[]);

-- University of East London, Docklands Campus (RYA11)
INSERT INTO site_method  
SELECT 3 as st_id, m.mm_id FROM method m INNER JOIN borehole b ON (b.m_id = m.m_id AND b.m_type = m.m_type) WHERE b.name = ANY('{BH1, A111A}'::text[]);

-- Royal Albert Hotel (RYA10)
INSERT INTO site_method  
SELECT 2 as st_id, m.mm_id FROM method m INNER JOIN trench t ON (t.m_id = m.m_id AND t.m_type = m.m_type) WHERE t.tr_id = 3;

-- University of East London, Docklands Campus (RYA11)
INSERT INTO site_method  
SELECT 3 as st_id, m.mm_id FROM method m INNER JOIN trench t ON (t.m_id = m.m_id AND t.m_type = m.m_type) WHERE t.tr_id IN (1,2);
---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
-- Populate table record with borehole records
-- These data are fabricated
-- selection from original tables
--SELECT '(''' || mm_id || ''', ''' || name || ''', ''' || desc_by || ''', ''' || desc_date || ''', ''' || source || '''),' FROM record;


INSERT INTO record (mm_id, name, desc_by, desc_date, source) VALUES

('4', 'C5_log', 'William Smith', '1988-10-11', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/13660514'),
('5', 'B24_log', 'William Smith', '1987-01-14', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/14270506'),
('6', 'B26_log', 'William Smith', '1987-01-21', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/14270512'),
('7', 'B27_log', 'William Smith', '1987-01-20', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/14270515'),
('8', 'B28_log', 'William Smith', '1987-01-13', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/14270519'),
('9', 'A113_log', 'William Smith', '1986-06-11', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/947284'),
('10', 'A93_log', 'William Smith', '1986-05-31', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/947275'),
('11', 'A96_log', 'William Smith', '1986-06-03', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/947276'),
('12', 'A104_log', 'William Smith', '1986-05-31', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/947278'),
('13', 'A106_log', 'William Smith', '1986-06-03', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/14270802'),
('14', 'A164_log', 'William Smith', '1986-07-15', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/947320'),
('15', 'BH2_log', 'William Smith', '1996-10-09', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/14095369'),
('16', 'A112_log', 'William Smith', '1986-05-13', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/947283'),
('17', 'A111A_log', 'William Smith', '1986-05-30', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/947282'),
('18', 'BH1_log', 'William Smith', '1996-10-04', 'BGS http://scans.bgs.ac.uk/sobi_scans/boreholes/14091618'),
('19', 'GBH1_log', 'Mark Ruddy', '2013-12-03', 'LPArchaeology '),
('20', 'GBH2_log', 'Mark Ruddy', '2013-11-29', 'LPArchaeology '),
('21', 'GBH3_log', 'Mark Ruddy', '2013-12-03', 'LPArchaeology '),
('22', 'GBH4_log', 'Mark Ruddy', '2013-12-05', 'LPArchaeology '),
('23', 'GBH5_log', 'Mark Ruddy', '2013-12-04', 'LPArchaeology '),
('1', 'Trench1_Section1', 'William Smith', '2012-05-10', 'Archive'),
('2', 'Trench2_Section1', 'William Smith', '2012-06-02', 'Archive'),
('2', 'Trench2_Section2', 'William Smith', '2012-06-02', 'Archive'),
('3', 'T1_north', 'Charles Lyell', '2010-11-09', 'Archive'),
('3', 'T1_south', 'Charles Lyell', '2010-11-09', 'Archive');


---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
-- Populate table deposit with borehole and trench derived deposits
-- Please refer to file populate_deposit.sql
-- All borehole-derived data are either copyright British Geological Survey or L-P:Archaeology LLP (for Royal Albert Dock (RYA13) site).
-- All trench-related data are fabricated.
---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
-- Populate sample table
-- All these data are fabricated

--CREATE TABLE sample_bak AS TABLE sample;

INSERT INTO sample (d_id, samp_geom, name, type, s_date, taken_by) VALUES 

('105',st_GeomFromText('POINT(543169 180781 -0.1)', 27700), 'P1', 'Bulk', '2013-12-10', 'D Peters'),

('108',st_GeomFromText('POINT(543219 180800 -0.3)', 27700), 'S1', 'Bulk', '2013-12-10', 'D Peters'),

('110',st_GeomFromText('POINT(543255 180802 -0.4)', 27700), 'S2', 'Bulk', '2013-12-10', 'M Nuttall'),

('113',st_GeomFromText('POINT(543000 180827 -0.6)', 27700), 'S1', 'Monolith', '2011-07-28', 'M Nuttall'),

('116',st_GeomFromText('POINT(543010 180807 -0.05)', 27700), 'S2', 'Monolith', '2011-07-28', 'M Nuttall');

--DROP TABLE IF EXISTS sample_bak;


---------------------------------------------------------------------------------------------------
-- Populate lab sample table
-- All these data are fabricated

--CREATE TABLE lsample_bak AS TABLE lsample;

INSERT INTO lsample (samp_id, name, type, lss_date, taken_by) VALUES

(4, 'P1', 'Radiocarbon', '2011-08-08','M Nuttall'),

(5, 'P1', 'Radiocarbon', '2011-08-08','M Nuttall'),

(5, 'P2', 'Pollen', '2011-08-08','M Nuttall');

--DROP TABLE IF EXISTS lsample_bak;





















