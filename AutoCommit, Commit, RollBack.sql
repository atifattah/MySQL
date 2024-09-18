-- AUTO-COMMIT, COMMIT AND ROLLBACK COMMANDS

-- Auto-Commit Mode
-- Auto-commit is a feature that automatically commits every individual SQL statement immediately after it is executed.

-- COMMIT Command
-- The COMMIT command is used to explicitly save all the changes made in the current transaction to the database.

-- ROLLBACK Command
-- The ROLLBACK command is used to undo all changes made during the current transaction.

select * from employees;

-- By default AUTOCOMMIT is set to be on --
set autocommit = off;co

commit;

delete from employees;

rollback;

