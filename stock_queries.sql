--create tables
CREATE TABLE stock_data (
	date DATE,
	open NUMERIC,
	close NUMERIC,
	volume INT,
	ticker_symbol TEXT
);

CREATE TABLE ticker_data (
	ticker_symbol TEXT PRIMARY KEY,
	company TEXT,
	exchange TEXT
);

SELECT * FROM stock_data;

SELECT * FROM ticker_data;

CREATE TABLE stock_ticker_data AS (
SELECT sd.date, sd.open, sd.close, sd.volume, td.ticker_symbol, td.company, td.exchange
FROM ticker_data AS td
INNER JOIN stock_data AS sd
ON td.ticker_symbol = sd.ticker_symbol
);

SELECT * FROM stock_ticker_data;