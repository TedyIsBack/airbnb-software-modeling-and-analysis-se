CREATE FUNCTION dbo.GetAverageRating (@Property_ID INT)
RETURNS DECIMAL(4,2)
AS
BEGIN
    DECLARE @AvgRating DECIMAL(4,2);

    SELECT @AvgRating = AVG(CAST(R.Rating AS DECIMAL(4,2)))
    FROM REVIEW R
    INNER JOIN RESERVATION RS ON R.Reservation_ID = RS.ID
    WHERE RS.Property_ID = @Property_ID;

    RETURN ISNULL(@AvgRating, 0);
END;
GO

SELECT dbo.GetAverageRating(3) AS AverageRating;
