CREATE OR REPLACE FUNCTION fn_auto_close_previous_salary_rate()
    RETURNS TRIGGER AS $$
BEGIN
    UPDATE table_salary_rates
    SET rate_action_ends_date = NEW.rate_action_begins_date - INTERVAL '1 day'
    WHERE employee_id = NEW.employee_id
      AND rate_action_ends_date IS NULL
      AND id != NEW.id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;



CREATE TRIGGER trg_auto_close_previous_salary_rate
    AFTER INSERT
    ON table_salary_rates
    FOR EACH ROW
EXECUTE FUNCTION fn_auto_close_previous_salary_rate()