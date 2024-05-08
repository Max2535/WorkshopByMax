/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 16004120 (16.00.4120)
 Source Host           : localhost:1433
 Source Catalog        : AdaShopeOnLine.MDB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004120 (16.00.4120)
 File Encoding         : 65001

 Date: 08/05/2024 09:05:29
*/


-- ----------------------------
-- Table structure for TSOLMProduct
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TSOLMProduct]') AND type IN ('U'))
	DROP TABLE [dbo].[TSOLMProduct]
GO

CREATE TABLE [dbo].[TSOLMProduct] (
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTPdtName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FNPdtQty] int  NULL,
  [FNPdtCnfVat] int  NULL,
  [FCPdtPri] decimal(18,4)  NULL,
  [FBPdtAct] bit  NULL
)
GO

ALTER TABLE [dbo].[TSOLMProduct] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TSOLMProduct
-- ----------------------------
INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00001', N'ปากกา', N'10', N'1', N'100.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00002', N'ไม้บรรทัด', N'10', N'1', N'20.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00003', N'ดินสอ', N'10', N'0', N'30.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00004', N'ยางลบ', N'10', N'1', N'40.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00005', N'หนังสือ', N'50', N'1', N'13.0000', N'1')
GO


-- ----------------------------
-- Table structure for TSOLPdtPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TSOLPdtPrice]') AND type IN ('U'))
	DROP TABLE [dbo].[TSOLPdtPrice]
GO

CREATE TABLE [dbo].[TSOLPdtPrice] (
  [FTPriCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FDPriStart] date  NULL,
  [FDPriStop] date  NULL,
  [FCPdtPrice] decimal(18,4)  NULL
)
GO

ALTER TABLE [dbo].[TSOLPdtPrice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TSOLPdtPrice
-- ----------------------------
INSERT INTO [dbo].[TSOLPdtPrice] ([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice]) VALUES (N'00002', N'00001', N'2024-05-10', N'2024-05-15', N'40.0000')
GO

INSERT INTO [dbo].[TSOLPdtPrice] ([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice]) VALUES (N'00002', N'00002', N'2024-05-06', N'2024-05-10', N'80.0000')
GO

INSERT INTO [dbo].[TSOLPdtPrice] ([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice]) VALUES (N'00001', N'00001', N'2024-05-01', N'2024-05-05', N'10.0000')
GO


-- ----------------------------
-- Table structure for TSOLSConfig
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TSOLSConfig]') AND type IN ('U'))
	DROP TABLE [dbo].[TSOLSConfig]
GO

CREATE TABLE [dbo].[TSOLSConfig] (
  [FTCnfCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTCnfName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FTCnfValue] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FNCnfType] int  NULL
)
GO

ALTER TABLE [dbo].[TSOLSConfig] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TSOLSConfig
-- ----------------------------
INSERT INTO [dbo].[TSOLSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00001', N'VAT', N'CAL_VAT', N'1')
GO

INSERT INTO [dbo].[TSOLSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00002', N'INVENT', N'ADD_PRODUCT', N'1')
GO

INSERT INTO [dbo].[TSOLSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00003', N'INVENT', N'SALE_PRODUCT', N'0')
GO

INSERT INTO [dbo].[TSOLSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00004', N'INVENT', N'INVOID_PRODUCT', N'1')
GO

INSERT INTO [dbo].[TSOLSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00005', N'INVENT', N'ADJ_PRODUCT', N'1')
GO


-- ----------------------------
-- Table structure for TSOLTOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TSOLTOrder]') AND type IN ('U'))
	DROP TABLE [dbo].[TSOLTOrder]
GO

CREATE TABLE [dbo].[TSOLTOrder] (
  [FTOrdCode] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTOrdCusName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FDOrdDate] datetime  NULL,
  [FCOrdAmt] decimal(18,4)  NULL
)
GO

ALTER TABLE [dbo].[TSOLTOrder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TSOLTOrder
-- ----------------------------
INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'   1', N'test test    1', N'2024-05-07 15:25:34.517', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00001', N'test test', N'2024-05-06 22:07:56.000', N'10.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'0001', N'test test 0001', N'2024-05-07 15:28:39.663', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00011', N'test test 00011', N'2024-05-07 15:29:25.793', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00012', N'test test 00012', N'2024-05-07 15:29:58.290', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00013', N'test test 00013', N'2024-05-07 16:14:05.090', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00014', N'test test 00014', N'2024-05-07 16:14:05.750', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00015', N'test test 00015', N'2024-05-07 16:14:06.357', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00016', N'test test 00016', N'2024-05-07 16:14:06.957', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00017', N'test test 00017', N'2024-05-07 16:14:07.543', N'500.0000')
GO

INSERT INTO [dbo].[TSOLTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00018', N'test test 00018', N'2024-05-07 16:14:08.117', N'500.0000')
GO


-- ----------------------------
-- Table structure for TSOLTOrderDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TSOLTOrderDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[TSOLTOrderDetails]
GO

CREATE TABLE [dbo].[TSOLTOrderDetails] (
  [FTOrdCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FNOrdDtQty] int  NULL,
  [FCOrdDtPri] decimal(18,4)  NULL
)
GO

ALTER TABLE [dbo].[TSOLTOrderDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TSOLTOrderDetails
-- ----------------------------
INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'   1', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'   1', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00001', N'00001', N'2', N'10.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'0001', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'0001', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00011', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00011', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00012', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00012', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00013', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00013', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00014', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00014', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00015', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00015', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00016', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00016', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00017', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00017', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00018', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TSOLTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00018', N'00002', N'1', N'200.0000')
GO


-- ----------------------------
-- Table structure for TSOLTStk
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TSOLTStk]') AND type IN ('U'))
	DROP TABLE [dbo].[TSOLTStk]
GO

CREATE TABLE [dbo].[TSOLTStk] (
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTOrdCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FNInvQty] int  NOT NULL,
  [FDInvDate] datetime  NOT NULL,
  [FTInvCnfTypeCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TSOLTStk] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'เฉพาะขาย',
'SCHEMA', N'dbo',
'TABLE', N'TSOLTStk',
'COLUMN', N'FTOrdCode'
GO


-- ----------------------------
-- Records of TSOLTStk
-- ----------------------------
INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00001', NULL, N'10', N'2024-05-06 22:05:05.000', N'00002')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00001', N'00001', N'-2', N'2024-05-07 13:57:51.160', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00001', NULL, N'10', N'2024-05-06 16:44:36.943', N'00002')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00006', NULL, N'10', N'2024-05-07 08:15:35.160', N'00002')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00006', NULL, N'10', N'2024-05-07 09:12:32.953', N'00002')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00005', NULL, N'50', N'2024-05-07 09:42:36.850', N'00002')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'   1', N'-1', N'2024-05-07 15:25:34.517', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'   1', N'-1', N'2024-05-07 15:25:34.517', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'0001', N'-1', N'2024-05-07 15:28:39.663', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'0001', N'-1', N'2024-05-07 15:28:39.663', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00011', N'-1', N'2024-05-07 15:29:25.793', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00011', N'-1', N'2024-05-07 15:29:25.793', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00012', N'-1', N'2024-05-07 15:29:58.290', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00012', N'-1', N'2024-05-07 15:29:58.290', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00013', N'-1', N'2024-05-07 16:14:05.087', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00013', N'-1', N'2024-05-07 16:14:05.090', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00014', N'-1', N'2024-05-07 16:14:05.750', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00014', N'-1', N'2024-05-07 16:14:05.750', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00015', N'-1', N'2024-05-07 16:14:06.357', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00015', N'-1', N'2024-05-07 16:14:06.357', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00016', N'-1', N'2024-05-07 16:14:06.957', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00016', N'-1', N'2024-05-07 16:14:06.957', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00017', N'-1', N'2024-05-07 16:14:07.543', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00017', N'-1', N'2024-05-07 16:14:07.543', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00018', N'-1', N'2024-05-07 16:14:08.117', N'00003')
GO

INSERT INTO [dbo].[TSOLTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00018', N'-1', N'2024-05-07 16:14:08.117', N'00003')
GO


-- ----------------------------
-- View structure for VSOLTOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VSOLTOrder]') AND type IN ('V'))
	DROP VIEW [dbo].[VSOLTOrder]
GO

CREATE VIEW [dbo].[VSOLTOrder] AS SELECT
	ord.FTOrdCode,
	CAST(ord.FDOrdDate AS DATE) AS FDOrdDate,
	ord.FTOrdCusName,
	(SELECT SUM(FCOrdDtPri) FROM TSOLTOrderDetails ordt WHERE ord.FTOrdCode=ordt.FTOrdCode ) AS FCTotalPri
FROM
	TSOLTOrder ord
GO


-- ----------------------------
-- View structure for VSOLTStock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VSOLTStock]') AND type IN ('V'))
	DROP VIEW [dbo].[VSOLTStock]
GO

CREATE VIEW [dbo].[VSOLTStock] AS SELECT
	TSOLTStk.FTPdtCode, 
	TSOLTStk.FTOrdCode, 
	TSOLTStk.FNInvQty, 
	CAST(TSOLTStk.FDInvDate AS DATE) AS FDInvDate
FROM
	dbo.TSOLTStk
	INNER JOIN
	dbo.TSOLMProduct
	ON 
		TSOLTStk.FTPdtCode = TSOLMProduct.FTPdtCode
GO


-- ----------------------------
-- procedure structure for STP_PRCxPdtPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_PRCxPdtPrice]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[STP_PRCxPdtPrice]
GO

CREATE PROCEDURE [dbo].[STP_PRCxPdtPrice]
@ptPriCode NVARCHAR(5),
@ptPdtCode NVARCHAR(5),
@pdStartDate DATETIME,
@pdStopDate DATETIME,
@pnRate INT,
@FNResult INT OUTPUT AS
DECLARE @cStdPri DECIMAL(18,4)
DECLARE @tTrans VARCHAR(20)
/*---------------------------------------------------------------------
Document History
  Date			User	Remark
1.06/05/2024	Max		create  
----------------------------------------------------------------------*/
SET @tTrans = 'PrcBchTnf'
BEGIN TRY
	BEGIN TRANSACTION @tTrans  
	SET @cStdPri = (SELECT FCPdtPri FROM TSOLMProduct WHERE FTPdtCode=@ptPriCode);
	PRINT @cStdPri
  INSERT INTO TSOLPdtPrice([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice])         VALUES (@ptPriCode,@ptPdtCode,@pdStartDate, @pdStopDate, @cStdPri*@pnRate);
	COMMIT TRANSACTION @tTrans  
	SET @FNResult= 0
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION @tTrans  
    SET @FNResult= -1
	SELECT ERROR_MESSAGE()
END CATCH
GO


-- ----------------------------
-- Triggers structure for table TSOLMProduct
-- ----------------------------
CREATE TRIGGER [dbo].[update stock add product]
ON [dbo].[TSOLMProduct]
WITH EXECUTE AS CALLER
FOR INSERT, UPDATE
AS
BEGIN
	PRINT 'run update stock add product';
INSERT INTO TSOLTStk(
FTPdtCode,
FNInvQty,
FDInvDate, 
FTInvCnfTypeCode) 
SELECT 
FTPdtCode AS FTPdtCode, 
FNPdtQty AS FNInvQty,
GETDATE(),
 N'00002' AS FTInvCnfTypeCode 
FROM INSERTED
END
GO


-- ----------------------------
-- Primary Key structure for table TSOLMProduct
-- ----------------------------
ALTER TABLE [dbo].[TSOLMProduct] ADD CONSTRAINT [PK__TSOLMPro__83E11850CFCCE7DA] PRIMARY KEY CLUSTERED ([FTPdtCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TSOLPdtPrice
-- ----------------------------
ALTER TABLE [dbo].[TSOLPdtPrice] ADD CONSTRAINT [PK__TPSTPdtP__FA1CA6A8CE66552C] PRIMARY KEY CLUSTERED ([FTPriCode] DESC, [FTPdtCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TSOLSConfig
-- ----------------------------
ALTER TABLE [dbo].[TSOLSConfig] ADD CONSTRAINT [PK__TSOLSCon__BC9D5A1DEE1EC902] PRIMARY KEY CLUSTERED ([FTCnfCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TSOLTOrder
-- ----------------------------
ALTER TABLE [dbo].[TSOLTOrder] ADD CONSTRAINT [PK__TSOLTOrd__98E14B962F28DEB8] PRIMARY KEY CLUSTERED ([FTOrdCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Triggers structure for table TSOLTOrderDetails
-- ----------------------------
CREATE TRIGGER [dbo].[update stock sale product]
ON [dbo].[TSOLTOrderDetails]
WITH EXECUTE AS CALLER
FOR INSERT, UPDATE
AS
BEGIN
	PRINT 'run update stock sale product';
INSERT INTO TSOLTStk(
FTPdtCode,
FTOrdCode,
FNInvQty,
FDInvDate, 
FTInvCnfTypeCode) 
SELECT 
FTPdtCode AS FTPdtCode,
FTOrdCode AS FTOrdCode, 
(FNOrdDtQty*-1) AS FNInvQty,
GETDATE(),
 N'00003' AS FTInvCnfTypeCode 
FROM INSERTED
END
GO


-- ----------------------------
-- Primary Key structure for table TSOLTOrderDetails
-- ----------------------------
ALTER TABLE [dbo].[TSOLTOrderDetails] ADD CONSTRAINT [PK__TSOLTOrd__7F20A5ECF8415756] PRIMARY KEY CLUSTERED ([FTOrdCode], [FTPdtCode] DESC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

