--****************************************************************
--
-- Tables for Superficial Geology database
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE st_seq;

-- Create site table
CREATE TABLE site (
st_id integer DEFAULT NEXTVAL('st_seq') PRIMARY KEY, --same as NOT NULL UNIQUE
code varchar(6) NOT NULL CHECK (code = upper(code)), -- codes must be upper case
name varchar(100) NOT NULL CHECK (name <> ''),
client_name varchar(100) NOT NULL,
start_date date NOT NULL,
end_date date CHECK (end_date > start_date) --end_date can be NULL, allowing site details to be entered before site work ends
);
SELECT AddGeometryColumn('site', 'boundary', 27700, 'POLYGON',2); -- add polygon for site boundary referenced to OS BNG spatial reference grid in 2D. (ref http://postgis.net/docs/manual-1.3/ch03.html#id434793)
ALTER TABLE site ADD CONSTRAINT site_unq UNIQUE (boundary); -- Natural Key
CREATE INDEX site_boundary_gidx ON site USING GIST(boundary); -- spatial index on boundary


