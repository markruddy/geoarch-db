--****************************************************************
--
-- Tables for Superficial Geology database
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE lsamp_seq;

-- Create lsamnple table - sub-samples of sample
CREATE TABLE lsample (
lsamp_id integer DEFAULT NEXTVAL('lsamp_seq') PRIMARY KEY,
samp_id integer REFERENCES sample, -- Foreign Key to sample
name varchar(100) NOT NULL,
type varchar(250) NOT NULL,
lss_date date NOT NULL, -- sub-sample date
taken_by varchar(100) NOT NULL,
CONSTRAINT lsample_unq UNIQUE (samp_id, type, lss_date)
); -- Natural Key