CREATE OR REPLACE FUNCTION fn_calculate_total_payment()
    RETURNS TRIGGER AS
$$
BEGIN
    NEW.total_payment := COALESCE(NEW.payment_for_hours, 0) +
                         COALESCE(New.commission_earned, 0);
    RETURN NEW;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_calculate_total
    BEFORE INSERT OR UPDATE
    ON table_monthly_payments
    FOR EACH ROW
EXECUTE FUNCTION fn_calculate_total_payment();