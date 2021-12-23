CREATE TABLE extract.trains_list
(
	 train_code NVARCHAR(10) PRIMARY KEY,
	 train_category NVARCHAR(20),
	 train_description NVARCHAR(100),
	 no_carriages int 
)
