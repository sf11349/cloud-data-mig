CREATE TABLE extract.passangers_count
(
	count_id BIGINT PRIMARY KEY,
	operator_code NVARCHAR(10),
	station_code NVARCHAR(10),
	train_code NVARCHAR(10),
	service_code NVARCHAR(10),
	count_date DATE,
	count_time TIME,
	passangers_count INT

)
