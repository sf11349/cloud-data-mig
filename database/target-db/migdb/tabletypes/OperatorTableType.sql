﻿CREATE TYPE migdb.OperatorTableType AS TABLE
(
	Id INT NOT NULL,
	Code NVARCHAR(10),
	Name NVARCHAR(250),
	Address NVARCHAR(250)
)
