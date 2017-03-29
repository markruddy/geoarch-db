--****************************************************************
--
-- Foreign keys for Superficial Geology database
-- Mark Ruddy
-- March 18, 2015
--
-- To allow some of the tables to be populated the Foreign Keys \\
-- code below need to be added after population. 
--
--****************************************************************


-- borehole FK
-- add FK after populating table
ALTER TABLE borehole ADD CONSTRAINT borehole_fk FOREIGN KEY (m_id, m_type) REFERENCES method (m_id, m_type);

-- trench FK
-- add FK after populating method table
ALTER TABLE trench ADD CONSTRAINT trench_fk FOREIGN KEY (m_id, m_type) REFERENCES method (m_id, m_type);


