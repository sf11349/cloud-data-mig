
CREATE PROCEDURE adf.mergePassangersCount
  AS 
  SET XACT_ABORT, NOCOUNT ON;
  BEGIN TRY 
    BEGIN TRANSACTION
        -- Start
         EXECUTE transform.mergePassangersCount
        -- Finish

    COMMIT TRANSACTION
  END TRY
  BEGIN CATCH
    IF(@@TRANCOUNT >0) ROLLBACK TRANSACTION;
    RETURN 55555
  END CATCH;
