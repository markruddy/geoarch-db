--****************************************************************
--
-- Tables for Superficial Geology database
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE bh_seq;
--CREATE SEQUENCE bhm_seq;

-- Create borehole table
CREATE TABLE borehole (
bh_id integer DEFAULT NEXTVAL('bh_seq') PRIMARY KEY,
name varchar(100) NOT NULL CHECK (name <> ''),
type varchar(100) NOT NULL, -- borehole type e.g., 'Cable Percussion', 'Power auger window sample', 'Hand auger' etc. Beneficial to link this to reference class of borehole types.
start_date date NOT NULL,
end_date date NOT NULL,
m_id integer NOT NULL, -- Forms part of Foreign Key to methods table
m_type char(1) DEFAULT 'b' CHECK (m_type = 'b') -- Forms part of Foreign Key to methods table
--, FOREIGN KEY (m_id, m_type) REFERENCES method (m_id, m_type)
);
SELECT AddGeometryColumn('borehole', 'bh_geom', 27700, 'POINT',3); -- ref http://postgis.net/docs/manual-1.3/ch03.html#id434793
ALTER TABLE borehole ADD CONSTRAINT borehole_unq UNIQUE (bh_geom); -- Natural Key
CREATE INDEX borehole_bh_geom_gidx ON borehole USING GIST(bh_geom); -- spatial index on tr_geom



-- DROP TABLE IF EXISTS bh_temp;



