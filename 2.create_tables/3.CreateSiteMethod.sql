--****************************************************************
--
-- Tables for Superficial Geology database
-- Mark Ruddy
-- March 12, 2015
--
--****************************************************************

CREATE TABLE site_method (
st_id integer REFERENCES site,
mm_id integer REFERENCES method,
PRIMARY KEY (st_id, mm_id)
);



