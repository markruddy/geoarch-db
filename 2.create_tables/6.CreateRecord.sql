--****************************************************************
--
-- Tables for Superficial Geology database
-- Create record table
--
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE r_seq;

-- Create record table
CREATE TABLE record (
r_id integer DEFAULT NEXTVAL('r_seq') PRIMARY KEY,
mm_id integer REFERENCES method, -- Foreign Key to method
name varchar(100) NOT NULL CHECK (name <> ''),
desc_by varchar(100) NOT NULL,
desc_date date NOT NULL,
source varchar(500) NOT NULL, -- source location: a doi, url, or conventional paper citation
CONSTRAINT record_unq UNIQUE (name, desc_by, desc_date) -- Natural Key
);