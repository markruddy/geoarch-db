--****************************************************************
--
-- Tables for Superficial Geology database
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE d_seq;

-- Create deposit table
CREATE TABLE deposit (
d_id integer DEFAULT NEXTVAL('d_seq') PRIMARY KEY,
r_id integer REFERENCES record, 
strat_unit varchar(100) NOT NULL, -- Stratigraphic Unit name e.g., 'Taplow Gravel'. Beneficial to link this to reference class of Stratigraphic Unit names.
truncation boolean NOT NULL, -- is the deposit truncated? TRUE = yes, FALSE = no
base boolean NOT NULL, -- does bottom_geom represent the base of the deposit? TRUE = yes; FALSE = no, the depth of the deposit wasn't measured
description varchar(250) NOT NULL, -- sediment description
sed_pac varchar(100) NOT NULL, -- the Sediment Package e.g., 'Terrace Gravels'. Beneficial to link this to reference class of Sediment Package names.
facies varchar(100) NOT NULL -- the Facies type e.g., 'Floodplain alluvial deposits'. Beneficial to link this to reference class of Facies names.
);
SELECT AddGeometryColumn('deposit', 'top_geom', 27700, 'GEOMETRY',3); -- Using GEOMETRY for mixed geometry types ref http://postgis.net/docs/using_postgis_dbmanagement.html
SELECT AddGeometryColumn('deposit', 'bottom_geom', 27700, 'GEOMETRY',3); -- 
CREATE INDEX deposit_top_geom_gidx ON deposit USING GIST(top_geom); -- spatial index on top_geom
CREATE INDEX deposit_bottom_geom_gidx ON deposit USING GIST(bottom_geom); -- spatial index on bottom_geom
ALTER TABLE deposit ADD CONSTRAINT deposit_top_geom_chk CHECK (ST_ZMax(top_geom) > ST_ZMax(bottom_geom)); -- top must be higher than bottom
-- ALTER TABLE deposit ADD CONSTRAINT deposit_unq UNIQUE (top_geom, bottom_geom); -- The Natural Key here would be the geometries of both top_geom and bottom_geom. However, PostGIS does not support unique comparisons between geometries in this way for mixed geometry data types (at present) <http://stackoverflow.com/questions/29144383/identical-3d-point-wkb-geometries-but-different-z-values-in-postgis>.


