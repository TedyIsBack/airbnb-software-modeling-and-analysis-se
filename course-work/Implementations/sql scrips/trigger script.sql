CREATE TRIGGER trg_CreatePayment_AfterReservation
ON RESERVATION
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO PAYMENT (Reservation_ID, Amount, Status, TimeStamp)
    SELECT ID, Amount, 'Pending', GETDATE()
    FROM INSERTED;
END;
GO


INSERT INTO RESERVATION
    (User_ID, Property_ID, Status, Amount, GuestsNumber, Check_In_Time, Check_Out_Time)
VALUES
    (1, 2, 'Pending', 200, 2, '2024-11-25', '2024-11-28');


SELECT TOP 1 * FROM RESERVATION
ORDER BY ID DESC;

SELECT TOP 1 * FROM PAYMENT
ORDER BY ID DESC;
