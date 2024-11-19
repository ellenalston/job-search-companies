-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER job_search_owner
WITH PASSWORD 'finalcapstone';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO job_search_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO job_search_owner;

CREATE USER job_search_appuser
WITH PASSWORD 'finalcapstone';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO job_search_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO job_search_appuser;
