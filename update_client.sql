-- Add your SQL queries here.
-- See SQL documentation: https://docs.airplane.dev/creating-tasks/sql
UPDATE
    clients
SET
    FIRST_NAME = :first_name,
    LAST_NAME = :last_name
WHERE
    ID = :id;
