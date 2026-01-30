CREATE TABLE [TBLFICHIERS] (
  [FicType] VARCHAR (8),
  [FicCode] VARCHAR (50),
  [FicValeur] VARCHAR (200),
  [FicValide] BIT,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([FicType], [FicCode])
)
