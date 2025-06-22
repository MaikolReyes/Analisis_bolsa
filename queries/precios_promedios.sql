--  1. Máximo y mínimo histórico por acción
SELECT a.Empresa,
    MAX(p.Maximo) AS Max_Historico,
    MIN(p.Minimo) AS Min_Historico
FROM precios p
    JOIN acciones a ON p.Ticker = a.Ticker
GROUP BY a.Empresa;

-- 2. Último precio de cada acción
SELECT p.Ticker, a.Empresa, p.Fecha, p.Cierre
FROM precios p
    JOIN (
    SELECT Ticker, MAX(Fecha) AS UltimaFecha
    FROM precios
    GROUP BY Ticker
) ult ON p.Ticker = ult.Ticker AND p.Fecha = ult.UltimaFecha
    JOIN acciones a ON p.Ticker = a.Ticker;