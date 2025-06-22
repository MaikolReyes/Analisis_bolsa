-- 1. Variación diaria de precio
SELECT Fecha, Ticker,
    ROUND(((Cierre - Apertura) / Apertura) * 100, 2) AS Variacion_Porcentual
FROM precios
WHERE Ticker = 'TSLA'
ORDER BY Fecha DESC;

-- 2. Volumen promedio operado por acción
SELECT a.Empresa, AVG(p.Volumen) AS Promedio_Volumen
FROM precios p
    JOIN acciones a ON p.Ticker = a.Ticker
GROUP BY a.Empresa
ORDER BY Promedio_Volumen DESC;

-- 3. Detectar días con grandes variaciones (> 5%)
SELECT Fecha, Ticker, Apertura, Cierre,
    ROUND(((Cierre - Apertura) / Apertura) * 100, 2) AS Variacion_Porcentual
FROM precios
WHERE ABS((Cierre - Apertura) / Apertura) * 100 > 5
ORDER BY Fecha DESC;