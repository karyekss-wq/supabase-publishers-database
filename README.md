# supabase-publishers-database
Relational database project using Supabase (PostgreSQL), focused on data quality, schema design, and SQL analysis.

# Supabase Publishers Database (PostgreSQL)

This project demonstrates building and querying a relational database in Supabase (PostgreSQL) using a small “Publishers” dataset. The focus was data quality, relational integrity, and writing SQL that produces reliable outputs.

## What I built
- Created relational tables for publishers, titles, stores, and sales
- Imported source data and resolved common ingestion issues (headers, formatting, foreign key constraints)
- Wrote SQL queries to validate the data and answer basic business questions

## Key learning
Clean inputs and correct relationships determine whether analysis is trustworthy. Seemingly small issues, like inconsistent headers or missing keys, can break queries or produce misleading results.

## Example queries included
- Basic retrieval and filtering
- Sorting by numeric fields
- Joins between titles and publishers
- Aggregations (counts by publisher and store)

## Tech stack
- Supabase  
- PostgreSQL  
- SQL  

## Files
- `schema.sql` – table definitions and constraints  
- `queries.sql` – representative queries (select, join, group by)  
- `data-import-notes.md` – notes on import issues and fixes  

## Notes
This is an academic project designed to mirror real-world challenges in data preparation and reporting reliability.
