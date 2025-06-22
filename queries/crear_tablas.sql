CREATE TABLE [acciones]
(
    [Id] int PRIMARY KEY IDENTITY(1, 1),
    [Ticker] varchar(10),
    [Empresa] varchar(100),
    [Mercado] varchar(100)
)
GO

CREATE TABLE [precios]
(
    [Id] int PRIMARY KEY IDENTITY(1, 1),
    [Ticker] varchar(10),
    [Fecha] date,
    [Apertura] DECIMAL(10,2),
    [Maximo] DECIMAL(10,2),
    [Minimo] DECIMAL(10,2),
    [Cierre] DECIMAL(10,2),
    [Volumen] BIGINT
)
GO

ALTER TABLE [precios] ADD FOREIGN KEY ([Ticker]) REFERENCES [acciones] ([Ticker])
GO