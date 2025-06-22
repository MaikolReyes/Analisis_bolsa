-- 1. Ver todos los tickers y empresas listadas
SELECT *
FROM acciones;

-- 2. Ver el historial completo de precios
SELECT *
FROM precios;

-- 3. Ver el historial de precios de una acción específica
SELECT *
FROM precios
WHERE Ticker = 'AAPL';

