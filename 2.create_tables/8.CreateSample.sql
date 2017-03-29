--****************************************************************
--
-- Tables for Superficial Geology database
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE samp_seq;

-- Create samnple table - samples of deposit
CREATE TABLE sample (
samp_id integer DEFAULT NEXTVAL('samp_seq') PRIMARY KEY,
d_id integer REFERENCES deposit, -- Foreign Key to deposit
name varchar(100) NOT NULL,
type varchar(250) NOT NULL,
s_date date NOT NULL, -- sampling date
taken_by varchar(100) NOT NULL
);
SELECT AddGeometryColumn('sample', 'samp_geom', 27700, 'POINT',3); -- Sample location accuracy is required to the nearest 0.01m height above ordnance datum Newlyn (AOD). This is relative positional accuracy with repsect to the logistically approximate deposit positions in table deposit. 
ALTER TABLE sample ADD CONSTRAINT sample_unq UNIQUE (samp_geom); -- Natural Key