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

 Date: 09/05/2024 22:02:40
*/


-- ----------------------------
-- Table structure for TCNMProduct
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TCNMProduct]') AND type IN ('U'))
	DROP TABLE [dbo].[TCNMProduct]
GO

CREATE TABLE [dbo].[TCNMProduct] (
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTPdtName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FNPdtQty] int  NULL,
  [FNPdtCnfVat] int  NULL,
  [FCPdtPri] decimal(18,4)  NULL,
  [FBPdtAct] bit  NULL
)
GO

ALTER TABLE [dbo].[TCNMProduct] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TCNMProduct
-- ----------------------------
INSERT INTO [dbo].[TCNMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00001', N'ปากกา', N'10', N'1', N'100.0000', N'1')
GO

INSERT INTO [dbo].[TCNMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00002', N'ไม้บรรทัด', N'10', N'1', N'20.0000', N'1')
GO

INSERT INTO [dbo].[TCNMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00003', N'ดินสอ', N'10', N'0', N'30.0000', N'1')
GO

INSERT INTO [dbo].[TCNMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00004', N'ยางลบ', N'10', N'1', N'40.0000', N'1')
GO

INSERT INTO [dbo].[TCNMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00005', N'หนังสือ', N'50', N'1', N'13.0000', N'1')
GO


-- ----------------------------
-- Table structure for TCNPdtPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TCNPdtPrice]') AND type IN ('U'))
	DROP TABLE [dbo].[TCNPdtPrice]
GO

CREATE TABLE [dbo].[TCNPdtPrice] (
  [FTPriCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FDPriStart] date  NULL,
  [FDPriStop] date  NULL,
  [FCPdtPrice] decimal(18,4)  NULL
)
GO

ALTER TABLE [dbo].[TCNPdtPrice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TCNPdtPrice
-- ----------------------------
INSERT INTO [dbo].[TCNPdtPrice] ([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice]) VALUES (N'00003', N'00003', N'2024-05-10', N'2024-05-10', N'60.0000')
GO

INSERT INTO [dbo].[TCNPdtPrice] ([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice]) VALUES (N'00002', N'00001', N'2024-05-10', N'2024-05-15', N'40.0000')
GO

INSERT INTO [dbo].[TCNPdtPrice] ([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice]) VALUES (N'00002', N'00002', N'2024-05-06', N'2024-05-10', N'80.0000')
GO

INSERT INTO [dbo].[TCNPdtPrice] ([FTPriCode], [FTPdtCode], [FDPriStart], [FDPriStop], [FCPdtPrice]) VALUES (N'00001', N'00001', N'2024-05-01', N'2024-05-05', N'10.0000')
GO


-- ----------------------------
-- Table structure for TCNSConfig
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TCNSConfig]') AND type IN ('U'))
	DROP TABLE [dbo].[TCNSConfig]
GO

CREATE TABLE [dbo].[TCNSConfig] (
  [FTCnfCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTCnfName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FTCnfValue] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FNCnfType] int  NULL
)
GO

ALTER TABLE [dbo].[TCNSConfig] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TCNSConfig
-- ----------------------------
INSERT INTO [dbo].[TCNSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00001', N'VAT', N'CAL_VAT', N'1')
GO

INSERT INTO [dbo].[TCNSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00002', N'INVENT', N'ADD_PRODUCT', N'1')
GO

INSERT INTO [dbo].[TCNSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00003', N'INVENT', N'SALE_PRODUCT', N'0')
GO

INSERT INTO [dbo].[TCNSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00004', N'INVENT', N'INVOID_PRODUCT', N'1')
GO

INSERT INTO [dbo].[TCNSConfig] ([FTCnfCode], [FTCnfName], [FTCnfValue], [FNCnfType]) VALUES (N'00005', N'INVENT', N'ADJ_PRODUCT', N'1')
GO


-- ----------------------------
-- Table structure for TCNTStk
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TCNTStk]') AND type IN ('U'))
	DROP TABLE [dbo].[TCNTStk]
GO

CREATE TABLE [dbo].[TCNTStk] (
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTOrdCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FNInvQty] int  NOT NULL,
  [FDInvDate] datetime  NOT NULL,
  [FTInvCnfTypeCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TCNTStk] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'เฉพาะขาย',
'SCHEMA', N'dbo',
'TABLE', N'TCNTStk',
'COLUMN', N'FTOrdCode'
GO


-- ----------------------------
-- Records of TCNTStk
-- ----------------------------
INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00001', NULL, N'10', N'2024-05-06 22:05:05.000', N'00002')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00001', N'00001', N'-2', N'2024-05-07 13:57:51.160', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00001', NULL, N'10', N'2024-05-06 16:44:36.943', N'00002')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00006', NULL, N'10', N'2024-05-07 08:15:35.160', N'00002')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00006', NULL, N'10', N'2024-05-07 09:12:32.953', N'00002')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00005', NULL, N'50', N'2024-05-07 09:42:36.850', N'00002')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'   1', N'-1', N'2024-05-07 15:25:34.517', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'   1', N'-1', N'2024-05-07 15:25:34.517', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'0001', N'-1', N'2024-05-07 15:28:39.663', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'0001', N'-1', N'2024-05-07 15:28:39.663', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00011', N'-1', N'2024-05-07 15:29:25.793', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00011', N'-1', N'2024-05-07 15:29:25.793', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00012', N'-1', N'2024-05-07 15:29:58.290', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00012', N'-1', N'2024-05-07 15:29:58.290', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00013', N'-1', N'2024-05-07 16:14:05.087', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00013', N'-1', N'2024-05-07 16:14:05.090', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00014', N'-1', N'2024-05-07 16:14:05.750', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00014', N'-1', N'2024-05-07 16:14:05.750', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00015', N'-1', N'2024-05-07 16:14:06.357', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00015', N'-1', N'2024-05-07 16:14:06.357', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00016', N'-1', N'2024-05-07 16:14:06.957', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00016', N'-1', N'2024-05-07 16:14:06.957', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00017', N'-1', N'2024-05-07 16:14:07.543', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00017', N'-1', N'2024-05-07 16:14:07.543', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00002', N'00018', N'-1', N'2024-05-07 16:14:08.117', N'00003')
GO

INSERT INTO [dbo].[TCNTStk] ([FTPdtCode], [FTOrdCode], [FNInvQty], [FDInvDate], [FTInvCnfTypeCode]) VALUES (N'00003', N'00018', N'-1', N'2024-05-07 16:14:08.117', N'00003')
GO


-- ----------------------------
-- Table structure for TPSTOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TPSTOrder]') AND type IN ('U'))
	DROP TABLE [dbo].[TPSTOrder]
GO

CREATE TABLE [dbo].[TPSTOrder] (
  [FTOrdCode] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTOrdCusName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FDOrdDate] datetime  NULL,
  [FCOrdAmt] decimal(18,4)  NULL
)
GO

ALTER TABLE [dbo].[TPSTOrder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TPSTOrder
-- ----------------------------
INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'   1', N'test test', N'2024-05-07 15:25:34.517', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00001', N'test test', N'2024-05-06 22:07:56.000', N'10.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'0001', N'test test 0001', N'2024-05-07 15:28:39.663', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00011', N'test test 00011', N'2024-05-07 15:29:25.793', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00012', N'test test 00012', N'2024-05-07 15:29:58.290', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00013', N'test test 00013', N'2024-05-07 16:14:05.090', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00014', N'test test 00014', N'2024-05-07 16:14:05.750', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00015', N'test test 00015', N'2024-05-07 16:14:06.357', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00016', N'test test 00016', N'2024-05-07 16:14:06.957', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00017', N'test test 00017', N'2024-05-07 16:14:07.543', N'500.0000')
GO

INSERT INTO [dbo].[TPSTOrder] ([FTOrdCode], [FTOrdCusName], [FDOrdDate], [FCOrdAmt]) VALUES (N'00018', N'test test 00018', N'2024-05-07 16:14:08.117', N'500.0000')
GO


-- ----------------------------
-- Table structure for TPSTOrderDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TPSTOrderDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[TPSTOrderDetails]
GO

CREATE TABLE [dbo].[TPSTOrderDetails] (
  [FTOrdCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FNOrdDtQty] int  NULL,
  [FCOrdDtPri] decimal(18,4)  NULL
)
GO

ALTER TABLE [dbo].[TPSTOrderDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TPSTOrderDetails
-- ----------------------------
INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'   1', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'   1', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00001', N'00001', N'2', N'10.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'0001', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'0001', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00011', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00011', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00012', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00012', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00013', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00013', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00014', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00014', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00015', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00015', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00016', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00016', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00017', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00017', N'00002', N'1', N'200.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00018', N'00003', N'1', N'300.0000')
GO

INSERT INTO [dbo].[TPSTOrderDetails] ([FTOrdCode], [FTPdtCode], [FNOrdDtQty], [FCOrdDtPri]) VALUES (N'00018', N'00002', N'1', N'200.0000')
GO


-- ----------------------------
-- View structure for VCNTCountCus
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VCNTCountCus]') AND type IN ('V'))
	DROP VIEW [dbo].[VCNTCountCus]
GO

CREATE VIEW [dbo].[VCNTCountCus] AS SELECT
	FTOrdCusName,
	COUNT ( FTOrdCusName ) AS FNOrdCount 
FROM
	TPSTOrder 
GROUP BY
	FTOrdCusName
GO


-- ----------------------------
-- View structure for VCNTSale
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VCNTSale]') AND type IN ('V'))
	DROP VIEW [dbo].[VCNTSale]
GO

CREATE VIEW [dbo].[VCNTSale] AS SELECT
	FTPdtCode,
	MAX(FNOrdDtQty) AS FNOrdDtQty
FROM
	TPSTOrderDetails
GROUP BY FTPdtCode
GO


-- ----------------------------
-- View structure for VCNTStock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VCNTStock]') AND type IN ('V'))
	DROP VIEW [dbo].[VCNTStock]
GO

CREATE VIEW [dbo].[VCNTStock] AS SELECT
	TCNTStk.FTPdtCode, 
	TCNTStk.FTOrdCode, 
	TCNTStk.FNInvQty, 
	CAST(TCNTStk.FDInvDate AS DATE) AS FDInvDate
FROM
	TCNTStk
	INNER JOIN
	TCNMProduct
	ON 
		TCNTStk.FTPdtCode = TCNMProduct.FTPdtCode
GO


-- ----------------------------
-- View structure for VCNTSumAmt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VCNTSumAmt]') AND type IN ('V'))
	DROP VIEW [dbo].[VCNTSumAmt]
GO

CREATE VIEW [dbo].[VCNTSumAmt] AS SELECT
	FTOrdCusName,
	SUM ( FCOrdAmt ) AS FCOrdSumAmt 
FROM
	 TPSTOrder
GROUP BY
	FTOrdCusName
GO


-- ----------------------------
-- View structure for VPSTOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VPSTOrder]') AND type IN ('V'))
	DROP VIEW [dbo].[VPSTOrder]
GO

CREATE VIEW [dbo].[VPSTOrder] AS SELECT
	ord.FTOrdCode,
	CAST(ord.FDOrdDate AS DATE) AS FDOrdDate,
	ord.FTOrdCusName,
	(SELECT SUM(FCOrdDtPri) FROM TPSTOrderDetails ordt WHERE ord.FTOrdCode=ordt.FTOrdCode ) AS FCTotalPri
FROM
	TPSTOrder ord
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
2.09/05/2024	Max		edit 
----------------------------------------------------------------------*/
SET @tTrans = 'PrcUpdPriPdt'
BEGIN TRY
	BEGIN TRANSACTION @tTrans  
	SET @cStdPri = (SELECT FCPdtPri FROM TCNMProduct WHERE FTPdtCode=@ptPriCode);
	PRINT @cStdPri
  INSERT INTO TCNPdtPrice(FTPriCode, FTPdtCode,FDPriStart,FDPriStop,FCPdtPrice)         
  VALUES (@ptPriCode,@ptPdtCode,@pdStartDate, @pdStopDate, @cStdPri*@pnRate);
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
-- Triggers structure for table TCNMProduct
-- ----------------------------
CREATE TRIGGER [dbo].[TRG_INSxIncreasePdtStk]
ON [dbo].[TCNMProduct]
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
-- Primary Key structure for table TCNMProduct
-- ----------------------------
ALTER TABLE [dbo].[TCNMProduct] ADD CONSTRAINT [PK__TSOLMPro__83E11850CFCCE7DA] PRIMARY KEY CLUSTERED ([FTPdtCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TCNPdtPrice
-- ----------------------------
ALTER TABLE [dbo].[TCNPdtPrice] ADD CONSTRAINT [PK__TPSTPdtP__FA1CA6A8CE66552C] PRIMARY KEY CLUSTERED ([FTPriCode] DESC, [FTPdtCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TCNSConfig
-- ----------------------------
ALTER TABLE [dbo].[TCNSConfig] ADD CONSTRAINT [PK__TSOLSCon__BC9D5A1DEE1EC902] PRIMARY KEY CLUSTERED ([FTCnfCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TPSTOrder
-- ----------------------------
ALTER TABLE [dbo].[TPSTOrder] ADD CONSTRAINT [PK__TSOLTOrd__98E14B962F28DEB8] PRIMARY KEY CLUSTERED ([FTOrdCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Triggers structure for table TPSTOrderDetails
-- ----------------------------
CREATE TRIGGER [dbo].[TRG_INSxReducPdtStk]
ON [dbo].[TPSTOrderDetails]
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
-- Primary Key structure for table TPSTOrderDetails
-- ----------------------------
ALTER TABLE [dbo].[TPSTOrderDetails] ADD CONSTRAINT [PK__TSOLTOrd__7F20A5ECF8415756] PRIMARY KEY CLUSTERED ([FTOrdCode], [FTPdtCode] DESC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

