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

 Date: 05/05/2024 21:41:53
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
INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00001', N'ปากกา', N'10', N'1', N'20.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00002', N'ไม้บรรทัด', N'10', N'1', N'20.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00003', N'ดินสอ', N'10', N'1', N'20.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00004', N'ยางลบ', N'10', N'1', N'20.0000', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'00005', N'สมุด', N'10', N'1', N'20.0000', N'1')
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
  [FNCnfType] int  NULL
)
GO

ALTER TABLE [dbo].[TSOLSConfig] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TSOLSConfig
-- ----------------------------

-- ----------------------------
-- Table structure for TSOLTInv
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TSOLTInv]') AND type IN ('U'))
	DROP TABLE [dbo].[TSOLTInv]
GO

CREATE TABLE [dbo].[TSOLTInv] (
  [FTOrdCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FTPdtCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FNInvQty] int  NULL,
  [FDInvDate] datetime  NULL,
  [FTInvCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TSOLTInv] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TSOLTInv
-- ----------------------------

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

-- ----------------------------
-- Primary Key structure for table TSOLMProduct
-- ----------------------------
ALTER TABLE [dbo].[TSOLMProduct] ADD CONSTRAINT [PK__TSOLMPro__83E11850CFCCE7DA] PRIMARY KEY CLUSTERED ([FTPdtCode])
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
-- Primary Key structure for table TSOLTInv
-- ----------------------------
ALTER TABLE [dbo].[TSOLTInv] ADD CONSTRAINT [PK__TSOLTInv__80DF5A1334DB9C16] PRIMARY KEY CLUSTERED ([FTPdtCode], [FTInvCode])
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
-- Primary Key structure for table TSOLTOrderDetails
-- ----------------------------
ALTER TABLE [dbo].[TSOLTOrderDetails] ADD CONSTRAINT [PK__TSOLTOrd__7F20A5ECF8415756] PRIMARY KEY CLUSTERED ([FTOrdCode], [FTPdtCode] DESC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

