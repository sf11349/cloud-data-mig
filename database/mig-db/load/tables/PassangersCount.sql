CREATE TABLE load.PassangersCount
(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	OperatorId INT,
	StationId INT,
	TrainId INT,
	ServiceId INT,
	DateId INT,
	TimeId INT,
	Count INT
)
