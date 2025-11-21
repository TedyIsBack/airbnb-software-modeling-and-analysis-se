CREATE PROCEDURE CreateReservation
    @User_ID INT,
    @Property_ID INT,
    @GuestsNumber INT,
    @Check_In_Time DATETIME,
    @Check_Out_Time DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @BasePrice DECIMAL(10,2);
    DECLARE @Nights INT;
    DECLARE @Amount DECIMAL(10,2);

    SELECT @BasePrice = Price
    FROM PROPERTY
    WHERE ID = @Property_ID;
    SET @Nights = DATEDIFF(DAY, @Check_In_Time, @Check_Out_Time);
    SET @Amount = @BasePrice * @Nights;

    INSERT INTO RESERVATION
        (User_ID, Property_ID, Status, Amount, GuestsNumber, Check_In_Time, Check_Out_Time)
    VALUES
        (@User_ID, @Property_ID, 'Pending', @Amount, @GuestsNumber, @Check_In_Time, @Check_Out_Time);

END;
GO
EXEC CreateReservation 1, 2, 3, '2024-11-25', '2024-11-28';

SELECT * FROM RESERVATION