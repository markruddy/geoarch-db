--****************************************************************
--
-- Tables for Superficial Geology database
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE tr_seq;
-- integer sequence for surrogate Primary Keys
-- CREATE SEQUENCE trm_seq;

-- Create trench table
CREATE TABLE trench (
tr_id integer DEFAULT NEXTVAL('tr_seq') PRIMARY KEY,
name varchar(100) NOT NULL CHECK (name <> ''),
start_date date NOT NULL,
end_date date NOT NULL,
m_id integer NOT NULL, -- Forms part of Foreign Key to methods table
m_type char(1) DEFAULT 't' CHECK (m_type = 't') -- Forms part of Foreign Key to methods table
);
SELECT AddGeometryColumn('trench', 'tr_geom', 27700, 'POLYHEDRALSURFACE',3); -- ref http://postgis.net/docs/manual-1.3/ch03.html#id434793
ALTER TABLE trench ADD CONSTRAINT trench_unq UNIQUE (tr_geom); -- Natural Key
CREATE INDEX trench_tr_geom_gidx ON trench USING GIST(tr_geom); -- spatial index on tr_geom





