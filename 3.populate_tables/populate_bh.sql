--****************************************************************
--
-- INSERT SQL statements used to populate the Superficial Geology \\
-- database. Assumes that all Postgres tables referred to in \\
-- ReadMe.md have been created.
-- 
-- Mark Ruddy
-- March 18, 2015
--
-- these data selected from an original table
-- SELECT '(''' || name || ''', ''' || type || ''', ''' || start_date || ''', ''' || end_date || ''', ''' || m_id || ''', ''' || m_type || ''', ST_GeomFromText(''' || ST_AsText(bh_geom) || ''', 27700)),' FROM borehole;
--
-- RUN CREATE BOREHOLE TABLE SCRIPT FIRST! See ReadMe.md file
--
--****************************************************************



INSERT INTO borehole (name, type, start_date, end_date, m_id, m_type, bh_geom) VALUES

('C5', 'Cable percussion', '1988-10-10', '1988-10-11', '1', 'b', ST_GeomFromText('POINT Z (542945 180846 3.947)', 27700)),
('B24', 'Cable percussion', '1987-01-13', '1987-01-20', '2', 'b', ST_GeomFromText('POINT Z (542850 180850 4.02)', 27700)),
('B26', 'Cable percussion', '1987-01-20', '1987-01-21', '3', 'b', ST_GeomFromText('POINT Z (543020 180850 4.02)', 27700)),
('B27', 'Cable percussion', '1987-01-19', '1987-01-19', '4', 'b', ST_GeomFromText('POINT Z (543100 180880 1.96)', 27700)),
('B28', 'Cable percussion', '1987-01-12', '1987-01-13', '5', 'b', ST_GeomFromText('POINT Z (543210 180880 2.63)', 27700)),
('A113', 'Cable percussion', '1986-06-10', '1986-06-10', '6', 'b', ST_GeomFromText('POINT Z (543246 180856 4.32)', 27700)),
('A93', 'Cable percussion', '1986-05-30', '1986-05-30', '7', 'b', ST_GeomFromText('POINT Z (542887 180762 4.63)', 27700)),
('A96', 'Cable percussion', '1986-06-02', '1986-06-02', '8', 'b', ST_GeomFromText('POINT Z (542944 180760 4.69)', 27700)),
('A104', 'Cable percussion', '1986-05-30', '1986-05-30', '9', 'b', ST_GeomFromText('POINT Z (543054 180757 4.61)', 27700)),
('A106', 'Cable percussion', '1986-06-02', '1986-06-02', '10', 'b', ST_GeomFromText('POINT Z (543100 180750 4.62)', 27700)),
('A164', 'Cable percussion', '1986-07-14', '1986-07-15', '11', 'b', ST_GeomFromText('POINT Z (543045 180702 5.3)', 27700)),
('BH2', 'Cable percussion', '1996-10-08', '1996-10-09', '12', 'b', ST_GeomFromText('POINT Z (543200 180700 5)', 27700)),
('A112', 'Cable percussion', '1986-05-12', '1986-05-12', '13', 'b', ST_GeomFromText('POINT Z (543195 180752 4.69)', 27700)),
('A111A', 'Cable percussion', '1986-05-29', '1986-05-29', '14', 'b', ST_GeomFromText('POINT Z (543197 180798 5.08)', 27700)),
('BH1', 'Cable percussion', '1996-10-03', '1996-10-04', '15', 'b', ST_GeomFromText('POINT Z (543230 180810 4.9)', 27700)),
('GBH1', 'Cable percussion', '2013-12-02', '2013-12-02', '16', 'b', ST_GeomFromText('POINT Z (543045.5 180836.3 4.63)', 27700)),
('GBH2', 'Cable percussion', '2013-11-28', '2013-11-29', '17', 'b', ST_GeomFromText('POINT Z (543092.7 180836.7 4.71)', 27700)),
('GBH3', 'Cable percussion', '2013-12-02', '2013-12-03', '18', 'b', ST_GeomFromText('POINT Z (543076.5 180795.2 4.68)', 27700)),
('GBH4', 'Cable percussion', '2013-12-04', '2013-12-04', '19', 'b', ST_GeomFromText('POINT Z (543055.2 180736.5 5.41)', 27700)),
('GBH5', 'Cable percussion', '2013-12-03', '2013-12-03', '20', 'b', ST_GeomFromText('POINT Z (543122 180751.4 4.48)', 27700));
