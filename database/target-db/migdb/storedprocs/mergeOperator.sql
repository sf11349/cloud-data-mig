CREATE PROCEDURE migdb.mergeOperator
@SourceTable migdb.OperatorTableType READONLY
AS
  SET XACT_ABORT, NOCOUNT ON;
  BEGIN TRY
    BEGIN TRAN

      SET IDENTITY_INSERT dbo.Operator ON;

      MERGE INTO dbo.Operator AS TRGT
      USING @SourceTable AS SRC
        ON TRGT.Id = SRC.Id
      WHEN NOT MATCHED THEN
        INSERT (Id,Code,Name,Address)
        VALUES (SRC.Id,SRC.Code,SRC.Name,SRC.Address)
      WHEN MATCHED
        AND (CONCAT(TRGT.Code,'-',TRGT.Name,'-',TRGT.Address)
             <>
            CONCAT(SRC.Code,'-',SRC.Name,'-',SRC.Address) ) THEN
        UPDATE
            SET TRGT.Code = SRC.Code,
                TRGT.Name = SRC.Name,
                TRGT.Address = SRC.Address;

      SET IDENTITY_INSERT dbo.Operator OFF;

    COMMIT TRAN
  END TRY
  BEGIN CATCH 
    IF(@@TRANCOUNT >0) ROLLBACK TRANSACTION;
    THROW;
    RETURN 55555;
  END CATCH 
