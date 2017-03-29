--****************************************************************
--
-- Tables for Superficial Geology database
-- Create method table
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

-- integer sequence for surrogate Primary Keys
CREATE SEQUENCE m_seq;

-- Create method table
CREATE TABLE method (
mm_id integer DEFAULT NEXTVAL('m_seq') PRIMARY KEY,
m_id integer NOT NULL, --same as NOT NULL UNIQUE
m_type char(1) NOT NULL DEFAULT 'b' CHECK (m_type = 'b' OR m_type = 't'), -- method of investigation is either 'b' borehole or 't' trench
CONSTRAINT method_unq UNIQUE (m_id, m_type) -- Natural Key
);



