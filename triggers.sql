CREATE OR REPLACE FUNCTION update_post_activity()
RETURNS TRIGGER AS $$
BEGIN
UPDATE Posts SET post_date = CURRENT_DATE WHERE post_id = NEW.post_id;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_activity_trigger
AFTER INSERT ON Likes
FOR EACH ROW EXECUTE FUNCTION update_post_activity();
