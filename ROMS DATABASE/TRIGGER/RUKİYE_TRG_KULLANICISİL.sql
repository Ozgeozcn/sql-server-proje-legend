CREATE TRIGGER trg_KullaniciSil
ON USERS
AFTER DELETE
AS
BEGIN
SELECT deleted.FIRST_NAME + ' kullan�c� ad�na ve ' + deleted.EMAIL +
' email adresine sahip kullan�c� silindi.' FROM deleted;
END;