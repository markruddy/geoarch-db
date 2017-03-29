--****************************************************************
--
-- Create Superficial Geology Postgres database with PostGIS
-- Mark Ruddy
-- March 12, 2015
-- 
--****************************************************************


CREATE DATABASE SuperficialGeology;

CREATE EXTENSION postgis;

SELECT postgis_full_version();

