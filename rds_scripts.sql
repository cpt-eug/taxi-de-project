CREATE EXTENSION aws_s3 CASCADE;

SELECT aws_s3.table_import_from_s3(
 'fact_table', '', '(format csv)',
 'emf-de-bucket','csvdata/taxi.csv','us-east-1', '<access_key>', '<secret_key>');

CREATE TABLE if not exists public.fact_table (
	vendor_id int4 NULL,
	pickup_datetime timestamp NULL,
	dropoff_datetime timestamp NULL,
	passenger_count float8 NULL,
	trip_distance float8 NULL,
	rate_code_id float8 NULL,
	store_and_fwd_flag varchar(10) NULL,
	pickup_location_id int4 NULL,
	dropoff_location_id int4 NULL,
	payment_type int4 NULL,
	fare_amount float8 NULL,
	extra float8 NULL,
	mta_tax float8 NULL,
	tip_amount float8 NULL,
	tolls_amount float8 NULL,
	improvement_surcharge float8 NULL,
	total_amount float8 NULL,
	congestion_surcharge float8 NULL,
	airport_fee text null);