# Geoarchaeological / Superficial Geology database design

This repo presents a high-level model for the types of data and data relationships significant to successful implementation of a database of superficial geology. The database provides geologists, geoarchaeologists and archaeologists with information concerning recent (superficial) geological deposits: their types, occurrence and extents (vertical and lateral). Other associated information on samples from deposits is also required if present.

Engineering geologists may require this information in order to understand the mechanical properties of sediments found on a construction site. Geoarchaeologists and archaeologists rely on geological data about their sites (which may also be related to construction projects) to make predictive models of the subsurface for heritage assessments, to plan excavations and to model past landscapes. 

Geological data come in the form of deposit records (logs) taken from investigative boreholes (such as those sourced from the BGS[#bgs]) or trenches. Boreholes are vertical samples of the sub-surface taken at point locations, with each borehole log recording the point depth at which boundaries between geological deposits correlated with different stratigraphic units are encountered. 

Trenches are near-surface three-dimensional excavations that only take place within and because of the existience of a site. Deposit records from trenches may, like boreholes, record deposit boundaries as points but they may also record boundaries as 3D lines observed in trench walls.

Both boreholes and trenches can yield samples of various types, which are later analysed in the laboratory and reported on.


## Overview of System Requirements

Users have identified a number of key questions that the database needs to be able to answer. These requirements can be summarised as:

1. Spatial - relating to a specified site boundary
    * Identify boreholes and trenches occurring within or near a site's boundary
    * Retrieve deposit logs associated with these boreholes/trenches
    * Filter for boreholes/trenches that extend to a specific depth or contain certain deposits
    * Identify samples occurring within a site's boundary
2. Spatial - not relating to a site
    * Find the lateral and vertical extents of a particular stratigraphic unit
3. Non-spatial
    * Find samples that correspond to a particular date range or deposit

The database was built using the following:

* Postgres: "PostgreSQL 9.3.1 on x86_64-apple-darwin12.5.0, compiled by i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.11.00), 64-bit"
* PostGIS: "POSTGIS="2.1.0 r11822" GEOS="3.3.8-CAPI-1.7.8" PROJ="Rel. 4.8.0, 6 March 2012" GDAL="GDAL 1.10.0, released 2013/04/24" LIBXML="2.9.1" LIBJSON="UNKNOWN" RASTER"

## The Entity-Relationship model

The data model presented is an overview referred to as a conceptual *Entity-Relationship (E-R) diagram*.[^ E-R diagrams are presented in UML (Unified Modeling Language) format following recommendations in Hay (2011).] Its purpose is to identify data groupings, and the relationships between them, that are essential to fulfilling the system requirements. This is a necessary step in developing a successful physical database implementation.

Distinct elements of the system are cast as ***entity classes*** (in the sense of Hay, 2011[#hay2011]). These share sets of common attributes - e.g., a **Site** has a 'Name', 'Boundary', 'Start Date' etc. - and are represented by boxes in the E-R diagram. Relationships between ***entity classes*** are represented by annotated lines. Each ***entity class*** will now be discussed in detail.[^ The E-R diagram is constructed using *StarUML* <http://staruml.io/>. In this software package attributes are led by a '+' sign and one-to-one relationships are represented as a '1' instead of the more conventional '1..1' notation.]

The **Site** ***entity class*** comprises information concerning construction or excavation projects that are the subject of geological interest. Each **Site** has a 'Name' and unique 'Site Code' (the latter assigned by a Local Authority) together with a 2D site boundary ('Location'), a 'Start Date' and 'End Date'. 

Within a **Site** boundary a **Trench** may be excavated. Each **Trench** possesses a 'Name', 'Start Date' and 'End Date' of excavation as well as a 'Location' defining its geometry and position. A **Site** may be the stage of one or more **Trenches** but a **Trench** must be a product of only one **Site**. A **Trench** must be within the locational limits of its parent **Site** and occur after its parent **Site's** 'Start Date'. 

**Boreholes** possess a 'Name', 'Location' (3D point), 'Start Date' and 'End Date'. Additionally, **Boreholes** may belong to one of a number of pre-defined 'Types'. A **Site** may be the stage of one or more **Boreholes** and a **Borehole** may be a product of only one **Site**. **Boreholes** may exist independently of a **Site** both notionally and locationally. Should a **Borehole** be the product of a **Site** investigation this **Site**-**Borehole** link needs to be recorded. Individual **Trenches** or **Boreholes** may potentially share the same attributes apart from 'Location'. 

A **Deposit Log** comprises the description of deposits from a **Borehole** or part of at **Trench** - because **Trenches** have multiple faces that are described separately, partially, or not at all. Each **Deposit Log** is 'Described By' an individual person on a particular 'Date', and can be found archived at a 'Source'. A **Deposit Log** must be derived from one **Trench** or **Borehole** and a **Trench** or **Borehole** must be a source for one or more **Deposit Logs**.

**Boreholes** and **Trenches** form an *exclusive or* (XOR) relationship with **Deposit Record**. This means that each **Deposit Log** must be either derived from exactly one **Borehole** or exactly one **Trench**. This is represented as a dotted line between **Trench**-**Deposit Log** and **Borehole**-**Deposit Log** relationships. Individual **Deposit Logs** may be identified through a combination of parent **Trench** or **Borehole** 'Name' and **Deposit Log** 'Date'.

A **Deposit** constitutes a single type of sediment identified from a **Deposit Log**. A **Deposit Log** must be a source for one or more **Deposits** and one **Deposit** must be derived from only one **Deposit Log**. Each record of a **Deposit** consists of the 'Top' and 'Bottom' location of the deposit (as points, lines or surfaces in 3D), a 'Description' of the sediment, whether the deposit has been 'Truncated', and whether the deposit represents the 'Base' of the **Deposit Log**. The 'Stratigraphic Unit', 'Sediment Package' and 'Facies' to which the deposit also need to be designated from lists of predefined values in order to constrain data entered into these attributes. Individual **Deposits** cannot be identified on their own within this ***entity class*** but through a combination of **Deposit Log** and 'Stratigraphic Unit'

A **Sample** is a sample of sediment or an object such as an artefact taken from the field. A **Sample** must be derived from only one **Deposit** and a **Deposit** may be the source for one or more **Samples**. **Samples** possess the attributes of 'Sample ID' (which is not unique), a 'Location' (which may be a point or volume located in 3D), the 'Date' the sample was taken and the person it was 'Taken By'. Each sample is of a pre-defined 'Type' in order to introduce integrity by constraining values entered to this attribute. A **Sample** must be within the locational limits of its parent **Deposit** and be dated after its **Deposit Log**.

**Laboratory Samples** are sub-samples taken from **Samples** in order to perform further analyses. **Laboratory Samples** must be taken from only one **Sample** and **Samples** may be the source for one or more **Laboratory Samples**. **Laboratory Samples** possess the attributes of 'Laboratory Sample ID' (which is not unique), a 'Location' (which is a point location in 3D), the 'Date' the laboratory sample was taken and the person it was 'Taken By'. Each laboratory sample is of a pre-defined 'Type' in order to introduce integrity by constraining values entered to this attribute. **Laboratory Samples** must always be within the locational limits of its parent **Sample** and occur after the date of its parent **Sample**.

Both **Samples** and **Laboratory Samples** need to be identified by reference to the **Deposit** and **Deposit Log** from which they originated.

## Comments on locational information

This system is intended intially at least for use within the geographical area covered by the Ordnance Survey (OS) British National Grid. Locational information are assumed to be recorded in OS Eastings and Northings and heights are assumed to be referenced to the OS height datum (Newlyn).

## Data origins

A test dataset is provided to populate the SGdb. The majority of this derives from part of an earlier MySQL database I previously developed. The structure and many of the data types used within the MySQL db are very different to that of the Postgres db. Most notably, the MySQL db was not spatially enabled: simple point data were stored as OS BNG (Ordnance Survey British National Grid) Eastings and Northings. Height data were a mixture of height above OS datum (Newlyn) and above ground level data. 

Borehole and deposit data relating to the site "Royal Albert Dock (RYA13)" are real world data and may not be reproduced or reused without permission of [L-P:Archaeology LLP](http://www.lparchaeology.com/). All other borehole data were obtained from the British Geological Survey (BGS)[#bgs] and are subject to the restrictions specified by the BGS.

All other site, trench, sample and report data have been fabricated for the purposes of testing.

## Build Instructions

1. If a Postgres/PostGIS database has not already been created run createDB.sql in directory 1.create_db.
2. From directory 2.create_tables, run create table sql files in numerical order: 1.CreateSite.sql > 2.CreateMethod.sql > ...
3. From directory 3.populate_tables, run sql snippets within populate_tables.sql making sure to run the separate populate_bh.sql and populate_deposit.sql files as well.
4. From directory 4.keys, run sql file additionalForeignKeys.sql

## Notes and References

[#bgs]: British Geological Survey: Borehole scans <http://www.bgs.ac.uk/data/boreholescans/home.html> 

[#hay2011]: Hay, D. C. (2011). *UML & Data Modeling: A Reconciliation*. Technics Publications, LLC.

