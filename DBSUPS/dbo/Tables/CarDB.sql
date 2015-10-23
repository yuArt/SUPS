﻿CREATE TABLE [dbo].[CarDB] (
    [CarNumber]        NVARCHAR (8)  NOT NULL,
    [Weight]           NVARCHAR (3)  NULL,
    [ArriveStation]    NVARCHAR (7)  NULL,
    [CargoCode]        NCHAR (5)     NULL,
    [ReceiverCode]     NVARCHAR (13) NULL,
    [CarType]          NVARCHAR (13) NULL,
    [DepartStation]    NVARCHAR (7)  NULL,
    [OperationCode]    NCHAR (2)     NULL,
    [OperationDate]    NVARCHAR (13) NULL,
    [OperationYear]    NVARCHAR (13) NULL,
    [OperationTime]    NVARCHAR (13) NULL,
    [OperationStation] NVARCHAR (7)  NULL,
    [DeliveryRoad]     NVARCHAR (13) NULL,
    [ReceiptRoad]      NVARCHAR (13) NULL,
    [TrainIndex]       NVARCHAR (13) NULL,
    [TrainNumber]      NVARCHAR (13) NULL,
    [OperationType]    TINYINT       NULL,
    CONSTRAINT [PK_CarNumber] PRIMARY KEY CLUSTERED ([CarNumber] ASC),
    FOREIGN KEY ([OperationType], [OperationCode]) REFERENCES [dbo].[CarOperation] ([OperationType], [Code]),
    CONSTRAINT [FK_CarDB_ArrStation] FOREIGN KEY ([ArriveStation]) REFERENCES [dbo].[Station] ([Code]),
    CONSTRAINT [FK_CarDB_DepStation] FOREIGN KEY ([DepartStation]) REFERENCES [dbo].[Station] ([Code]),
    CONSTRAINT [FK_CarDB_OpStation] FOREIGN KEY ([OperationStation]) REFERENCES [dbo].[Station] ([Code]),
    CONSTRAINT [FK_OperationStation] FOREIGN KEY ([OperationStation]) REFERENCES [dbo].[Station] ([Code])
);

