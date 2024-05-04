/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 16004120 (16.00.4120)
 Source Host           : localhost:1433
 Source Catalog        : AdaShpoeOnline.MDB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004120 (16.00.4120)
 File Encoding         : 65001

 Date: 04/05/2024 22:54:21
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
INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'1', N'Yokoyama Seiko', N'87', N'1', N'375.6154', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'10', N'Lok Kwok Ming', N'736', N'1', N'758.1830', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'100', N'Nishimura Seiko', N'136', N'1', N'430.7729', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'1000', N'Xue Lu', N'512', N'1', N'790.1148', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'101', N'Kobayashi Shino', N'487', N'1', N'72.8277', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'102', N'Edna Fernandez', N'622', N'1', N'840.3688', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'103', N'Ng Tak Wah', N'754', N'1', N'17.2568', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'104', N'Mui Tsz Ching', N'843', N'1', N'973.1101', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'105', N'Lois Foster', N'478', N'1', N'66.2754', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'106', N'Amanda Ryan', N'700', N'1', N'781.1484', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'107', N'Lori Gutierrez', N'158', N'1', N'560.8406', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'108', N'Ryan Bryant', N'497', N'1', N'317.8760', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'109', N'Ueda Aoshi', N'459', N'1', N'135.0040', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'11', N'Duan Ziyi', N'667', N'1', N'276.7155', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'110', N'Lam Sau Man', N'91', N'1', N'82.8910', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'111', N'Peng Yunxi', N'487', N'1', N'18.1053', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'112', N'Andrew Meyer', N'258', N'1', N'287.6083', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'113', N'Abe Daisuke', N'867', N'1', N'450.3451', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'114', N'Pak Kwok Wing', N'190', N'1', N'285.0567', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'115', N'Dai Hui Mei', N'494', N'1', N'3.3486', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'116', N'Ma Wing Fat', N'671', N'1', N'902.2856', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'117', N'Saito Daisuke', N'235', N'1', N'496.6658', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'118', N'Florence Ford', N'331', N'1', N'716.9200', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'119', N'Tan Jialun', N'708', N'1', N'800.8994', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'12', N'Diana Chavez', N'607', N'1', N'565.2814', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'120', N'Takada Daisuke', N'477', N'1', N'798.9580', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'121', N'Maria Gonzalez', N'113', N'1', N'882.3565', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'122', N'Ma Ming Sze', N'891', N'1', N'697.1234', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'123', N'Tse Wing Sze', N'936', N'1', N'238.4321', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'124', N'Sugiyama Yuto', N'37', N'1', N'705.7178', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'125', N'Tong Ka Man', N'652', N'1', N'806.2021', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'126', N'Alfred Guzman', N'905', N'1', N'579.2619', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'127', N'Lo Chi Ming', N'454', N'1', N'799.8193', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'128', N'Wong Tsz Hin', N'248', N'1', N'127.8312', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'129', N'Arimura Itsuki', N'368', N'1', N'492.6520', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'13', N'Su Xiuying', N'948', N'1', N'110.3136', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'130', N'Yao Xiaoming', N'926', N'1', N'559.5755', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'131', N'Wu Chieh Lun', N'995', N'1', N'478.2390', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'132', N'Chic Lai Yan', N'290', N'1', N'318.1950', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'133', N'Shi Zitao', N'953', N'1', N'881.4684', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'134', N'Yue Ling Ling', N'380', N'1', N'846.6505', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'135', N'Annie Myers', N'27', N'1', N'463.9814', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'136', N'Kono Aoi', N'416', N'1', N'621.3887', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'137', N'Lee Ka Man', N'268', N'1', N'625.3824', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'138', N'Cheng Zhennan', N'258', N'1', N'171.9302', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'139', N'Ono Shino', N'831', N'1', N'497.2894', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'14', N'Iwasaki Takuya', N'488', N'1', N'24.6515', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'140', N'Shibata Rena', N'545', N'1', N'975.6378', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'141', N'Ku Kwok Yin', N'78', N'1', N'472.9445', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'142', N'Thelma Kelly', N'926', N'1', N'660.9082', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'143', N'Leung Fat', N'220', N'1', N'424.3281', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'144', N'Tsang Ka Fai', N'616', N'1', N'49.4617', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'145', N'Sakai Miu', N'821', N'1', N'908.8955', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'146', N'Duan Yuning', N'756', N'1', N'776.0753', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'147', N'Lau Kwok Wing', N'920', N'1', N'897.4721', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'148', N'Shi Zhiyuan', N'214', N'1', N'945.0030', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'149', N'Okada Seiko', N'783', N'1', N'584.3336', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'15', N'Miyamoto Tsubasa', N'59', N'1', N'255.9329', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'150', N'Patricia Parker', N'822', N'1', N'774.6174', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'151', N'Otsuka Momoka', N'320', N'1', N'626.0920', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'152', N'Benjamin Wood', N'843', N'1', N'579.4704', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'153', N'Au Hiu Tung', N'427', N'1', N'386.0188', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'154', N'Takeuchi Yamato', N'678', N'1', N'957.5594', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'155', N'Ku Ming Sze', N'184', N'1', N'48.5002', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'156', N'Hu Zhiyuan', N'541', N'1', N'71.6531', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'157', N'Yeung Wing Kuen', N'177', N'1', N'388.5792', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'158', N'Lui Ka Man', N'596', N'1', N'193.3075', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'159', N'Aoki Seiko', N'907', N'1', N'297.7796', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'16', N'Manuel Moreno', N'952', N'1', N'329.2520', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'160', N'Mao Lu', N'538', N'1', N'515.4376', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'161', N'Nakayama Akina', N'797', N'1', N'717.5793', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'162', N'Ikeda Yamato', N'42', N'1', N'142.4247', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'163', N'Liao Lai Yan', N'476', N'1', N'978.3306', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'164', N'Iwasaki Akina', N'212', N'1', N'613.5309', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'165', N'Shao Xiaoming', N'309', N'1', N'783.0336', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'166', N'Hao Jiehong', N'99', N'1', N'317.2001', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'167', N'Xu Lan', N'846', N'1', N'227.5542', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'168', N'Kong Xiaoming', N'979', N'1', N'684.2428', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'169', N'Pang Wai San', N'718', N'1', N'436.5437', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'17', N'Sean Freeman', N'765', N'1', N'296.5665', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'170', N'Yamashita Hina', N'501', N'1', N'793.4853', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'171', N'Melvin Martinez', N'1', N'1', N'726.7674', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'172', N'Fong Sau Man', N'490', N'1', N'501.9599', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'173', N'Wang Rui', N'888', N'1', N'737.6498', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'174', N'Antonio Wells', N'501', N'1', N'44.1259', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'175', N'Sheh Wing Suen', N'779', N'1', N'964.3247', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'176', N'Taniguchi Momoka', N'935', N'1', N'169.6212', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'177', N'Nakayama Airi', N'690', N'1', N'555.9708', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'178', N'Shirley Gonzales', N'895', N'1', N'646.4931', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'179', N'Tang Yu Ling', N'787', N'1', N'614.8403', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'18', N'Lee Sze Kwan', N'867', N'1', N'753.9655', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'180', N'Barbara Taylor', N'952', N'1', N'124.4432', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'181', N'Brandon Clark', N'718', N'1', N'109.6372', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'182', N'Stephen Robinson', N'302', N'1', N'692.0474', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'183', N'Yamada Ryota', N'638', N'1', N'393.7827', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'184', N'Ichikawa Minato', N'776', N'1', N'312.9942', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'185', N'Watanabe Yuna', N'870', N'1', N'926.7361', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'186', N'Kelly Spencer', N'987', N'1', N'353.2146', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'187', N'Jin Zitao', N'48', N'1', N'913.8536', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'188', N'Brandon Tran', N'692', N'1', N'655.3726', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'189', N'Chic Fu Shing', N'943', N'1', N'258.0224', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'19', N'Micheal Cruz', N'947', N'1', N'662.4598', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'190', N'Okada Aoi', N'91', N'1', N'450.0143', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'191', N'Duan Zhiyuan', N'805', N'1', N'470.2948', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'192', N'Norma Rose', N'647', N'1', N'749.4479', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'193', N'Wu Hiu Tung', N'829', N'1', N'721.4868', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'194', N'Man Hok Yau', N'957', N'1', N'548.8265', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'195', N'Chung Ling Ling', N'737', N'1', N'186.2693', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'196', N'Ding Zhiyuan', N'993', N'1', N'134.6795', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'197', N'Nathan Shaw', N'662', N'1', N'644.6757', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'198', N'Yao Ziyi', N'663', N'1', N'824.8090', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'199', N'Chic Hiu Tung', N'107', N'1', N'720.0549', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'2', N'Christine Alvarez', N'696', N'1', N'118.3623', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'20', N'Peng Ziyi', N'715', N'1', N'763.2196', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'200', N'Jia Rui', N'753', N'1', N'689.1019', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'201', N'Fan Shihan', N'843', N'1', N'164.2819', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'202', N'Yokoyama Kaito', N'286', N'1', N'425.1765', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'203', N'Takagi Sara', N'954', N'1', N'365.7841', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'204', N'Ng Chiu Wai', N'472', N'1', N'181.1254', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'205', N'Gu Zhiyuan', N'893', N'1', N'921.8166', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'206', N'Margaret Marshall', N'713', N'1', N'790.7274', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'207', N'Wang Rui', N'917', N'1', N'572.1490', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'208', N'Mark Jones', N'648', N'1', N'317.9353', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'209', N'Barry Jones', N'205', N'1', N'75.8958', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'21', N'Ikeda Nanami', N'849', N'1', N'746.3195', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'210', N'Lin Yunxi', N'157', N'1', N'245.6375', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'211', N'Donald Wood', N'440', N'1', N'421.2716', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'212', N'Feng Anqi', N'189', N'1', N'24.5246', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'213', N'Yamazaki Momoe', N'560', N'1', N'27.6983', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'214', N'Yamaguchi Ayano', N'956', N'1', N'68.8906', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'215', N'Lo Yun Fat', N'337', N'1', N'342.7099', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'216', N'Fong Wing Kuen', N'138', N'1', N'715.4117', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'217', N'Zou Zhennan', N'315', N'1', N'83.4677', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'218', N'Nakayama Daisuke', N'579', N'1', N'107.0915', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'219', N'Lo Wai Man', N'450', N'1', N'131.2841', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'22', N'Eleanor Scott', N'828', N'1', N'11.4138', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'220', N'Tang Jiehong', N'795', N'1', N'500.8243', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'221', N'Liang Lan', N'602', N'1', N'268.5668', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'222', N'Fujita Shino', N'978', N'1', N'916.5827', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'223', N'Sheh Tin Lok', N'44', N'1', N'614.5216', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'224', N'Christopher Walker', N'908', N'1', N'981.5039', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'225', N'Wan Wing Fat', N'132', N'1', N'823.7096', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'226', N'Doris Hunt', N'52', N'1', N'83.8561', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'227', N'Sugawara Kenta', N'970', N'1', N'719.5122', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'228', N'Song Xiuying', N'453', N'1', N'113.9231', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'229', N'Nancy Cox', N'152', N'1', N'103.6972', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'23', N'Pang Ting Fung', N'987', N'1', N'747.9375', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'230', N'Xie Yuning', N'461', N'1', N'444.8824', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'231', N'Ma Kwok Ming', N'949', N'1', N'963.6497', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'232', N'Pan Jiehong', N'769', N'1', N'539.4099', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'233', N'Luo Ziyi', N'530', N'1', N'177.3889', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'234', N'Choi Fu Shing', N'300', N'1', N'308.1534', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'235', N'Diane Collins', N'480', N'1', N'937.3933', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'236', N'Lau Chi Yuen', N'930', N'1', N'467.4753', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'237', N'Lui Sau Man', N'627', N'1', N'661.8266', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'238', N'Chiba Daichi', N'265', N'1', N'867.6293', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'239', N'Shi Ziyi', N'744', N'1', N'709.6352', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'24', N'Hao Jiehong', N'805', N'1', N'786.7909', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'240', N'Noguchi Akina', N'619', N'1', N'859.8245', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'241', N'Huang Yuning', N'20', N'1', N'996.8929', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'242', N'Li Rui', N'966', N'1', N'550.4106', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'243', N'Shing Ka Fai', N'714', N'1', N'745.4703', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'244', N'Carol Soto', N'118', N'1', N'214.7113', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'245', N'Lu Lu', N'296', N'1', N'386.5356', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'246', N'Jacob Salazar', N'178', N'1', N'903.8394', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'247', N'Diane Moore', N'978', N'1', N'816.1802', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'248', N'Joseph Walker', N'715', N'1', N'296.2951', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'249', N'Koyama Ayato', N'937', N'1', N'576.2482', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'25', N'Xiao Xiaoming', N'529', N'1', N'977.5237', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'250', N'Valerie Fernandez', N'701', N'1', N'259.4228', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'251', N'Marcus Hayes', N'736', N'1', N'931.9585', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'252', N'Murakami Miu', N'330', N'1', N'592.4693', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'253', N'Tamura Kaito', N'18', N'1', N'307.0961', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'254', N'Siu Ho Yin', N'273', N'1', N'745.3314', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'255', N'Ruby Perez', N'560', N'1', N'500.7414', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'256', N'Ding Yunxi', N'294', N'1', N'505.3999', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'257', N'Ann Butler', N'118', N'1', N'270.8154', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'258', N'Lok Sze Yu', N'854', N'1', N'226.2293', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'259', N'Okamoto Minato', N'492', N'1', N'126.2658', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'26', N'Taniguchi Hikari', N'932', N'1', N'309.0519', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'260', N'Tong Wai Man', N'548', N'1', N'651.2770', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'261', N'Otsuka Yuna', N'415', N'1', N'559.2933', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'262', N'Alice Shaw', N'872', N'1', N'556.2898', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'263', N'Duan Lan', N'726', N'1', N'473.4830', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'264', N'Cui Shihan', N'916', N'1', N'428.2877', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'265', N'He Zitao', N'320', N'1', N'966.7361', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'266', N'Hu Rui', N'714', N'1', N'409.7682', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'267', N'Han Yunxi', N'829', N'1', N'980.7429', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'268', N'Fujita Ryota', N'377', N'1', N'192.6159', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'269', N'Nishimura Minato', N'480', N'1', N'932.9968', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'27', N'Ryan Murphy', N'909', N'1', N'498.6732', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'270', N'Patricia Nichols', N'618', N'1', N'675.8328', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'271', N'Peter Burns', N'784', N'1', N'93.9339', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'272', N'Charles Hunt', N'477', N'1', N'556.3962', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'273', N'Morita Takuya', N'609', N'1', N'712.8899', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'274', N'Teresa Ward', N'443', N'1', N'656.0272', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'275', N'Yuen Wai San', N'808', N'1', N'480.6131', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'276', N'Kato Sakura', N'825', N'1', N'197.1680', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'277', N'Fung Chun Yu', N'802', N'1', N'756.5348', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'278', N'Huang Anqi', N'414', N'1', N'310.1678', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'279', N'Arai Mio', N'485', N'1', N'74.5089', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'28', N'Ricky Ellis', N'851', N'1', N'443.8392', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'280', N'Kevin Gutierrez', N'238', N'1', N'487.4417', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'281', N'Hsuan Ka Ming', N'874', N'1', N'159.1908', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'282', N'Yan Zhiyuan', N'473', N'1', N'746.2639', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'283', N'Beverly Davis', N'697', N'1', N'977.3035', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'284', N'Yuen Chun Yu', N'967', N'1', N'458.1936', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'285', N'Kojima Sara', N'285', N'1', N'129.9656', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'286', N'Inoue Rena', N'743', N'1', N'820.2347', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'287', N'James Simmons', N'240', N'1', N'846.4205', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'288', N'Zeng Rui', N'487', N'1', N'121.5937', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'289', N'Mike Moore', N'623', N'1', N'529.4253', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'29', N'Koon Hiu Tung', N'832', N'1', N'663.5324', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'290', N'Uchida Momoe', N'836', N'1', N'830.5375', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'291', N'Kobayashi Nanami', N'289', N'1', N'171.7680', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'292', N'Choi Siu Wai', N'130', N'1', N'627.8531', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'293', N'Zhou Zitao', N'419', N'1', N'876.4209', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'294', N'Cui Zhiyuan', N'529', N'1', N'229.4991', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'295', N'Kwok Wai San', N'655', N'1', N'415.3625', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'296', N'Nakayama Hikari', N'526', N'1', N'659.0400', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'297', N'Kondo Akina', N'922', N'1', N'265.8040', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'298', N'Fang Lan', N'333', N'1', N'413.3827', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'299', N'Carolyn Reyes', N'176', N'1', N'36.2981', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'3', N'Yeung Tin Wing', N'316', N'1', N'820.4801', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'30', N'Nathan Nguyen', N'65', N'1', N'543.9399', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'300', N'Tam Wing Fat', N'766', N'1', N'460.3824', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'301', N'Tong Ming', N'139', N'1', N'137.0984', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'302', N'Chung Sau Man', N'496', N'1', N'226.9684', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'303', N'Chung Ho Yin', N'700', N'1', N'705.0672', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'304', N'Bobby Morris', N'685', N'1', N'305.4021', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'305', N'Man Sau Man', N'286', N'1', N'877.5614', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'306', N'Ren Zhiyuan', N'609', N'1', N'712.6196', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'307', N'Hashimoto Sara', N'684', N'1', N'150.4602', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'308', N'Tang Xiuying', N'565', N'1', N'662.0894', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'309', N'Cindy Owens', N'614', N'1', N'983.0816', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'31', N'Zou Lu', N'912', N'1', N'257.4378', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'310', N'Kinoshita Kenta', N'162', N'1', N'48.1954', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'311', N'Ding Shihan', N'828', N'1', N'276.4054', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'312', N'Pang Wing Sze', N'980', N'1', N'366.3940', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'313', N'Kondo Ren', N'377', N'1', N'948.7292', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'314', N'Fujita Kaito', N'303', N'1', N'120.7629', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'315', N'Sean Wright', N'328', N'1', N'555.8470', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'316', N'Jacob Foster', N'37', N'1', N'916.4817', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'317', N'Cynthia Porter', N'895', N'1', N'854.5336', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'318', N'Suzuki Ayano', N'8', N'1', N'267.4546', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'319', N'Fong Hiu Tung', N'945', N'1', N'780.2871', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'32', N'Paula Vargas', N'469', N'1', N'877.7603', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'320', N'Long Xiaoming', N'375', N'1', N'786.6723', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'321', N'Dai Zhennan', N'897', N'1', N'823.7991', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'322', N'Endo Sara', N'492', N'1', N'811.9366', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'323', N'Saito Riku', N'447', N'1', N'2.9726', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'324', N'Martha Rose', N'296', N'1', N'283.7041', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'325', N'Roy Harris', N'19', N'1', N'611.6449', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'326', N'Lu Rui', N'272', N'1', N'128.0004', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'327', N'Dorothy Cox', N'62', N'1', N'952.3258', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'328', N'Suzuki Yamato', N'440', N'1', N'816.3868', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'329', N'Shao Ziyi', N'799', N'1', N'961.3119', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'33', N'Mui Wai San', N'139', N'1', N'959.5971', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'330', N'Charlotte Sanders', N'480', N'1', N'594.6030', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'331', N'Liao Xiaoming', N'800', N'1', N'749.8024', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'332', N'Tamura Kenta', N'335', N'1', N'192.3286', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'333', N'Leung Ching Wan', N'127', N'1', N'857.3785', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'334', N'Takeda Aoi', N'94', N'1', N'98.3190', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'335', N'Shen Jiehong', N'846', N'1', N'286.6657', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'336', N'Uchida Rena', N'618', N'1', N'21.4910', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'337', N'Takahashi Aoi', N'271', N'1', N'249.8418', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'338', N'Ng Fu Shing', N'270', N'1', N'462.3641', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'339', N'Fukuda Ikki', N'611', N'1', N'854.8772', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'34', N'Janice Vargas', N'937', N'1', N'141.1412', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'340', N'Su Xiuying', N'999', N'1', N'992.7639', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'341', N'Nishimura Rin', N'620', N'1', N'780.8331', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'342', N'Koon Yun Fat', N'148', N'1', N'882.5823', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'343', N'Ye Zhiyuan', N'665', N'1', N'347.6975', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'344', N'Sun Rui', N'572', N'1', N'256.6074', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'345', N'Xu Lan', N'614', N'1', N'986.8528', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'346', N'Uchida Rin', N'907', N'1', N'37.6317', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'347', N'Chang Anqi', N'6', N'1', N'195.7041', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'348', N'Kono Daichi', N'550', N'1', N'248.1444', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'349', N'Charles Ramirez', N'797', N'1', N'901.2476', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'35', N'Meng Anqi', N'186', N'1', N'711.3169', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'350', N'Fujiwara Ayano', N'778', N'1', N'232.8674', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'351', N'Morita Kazuma', N'848', N'1', N'510.6733', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'352', N'Ikeda Hazuki', N'425', N'1', N'0.4335', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'353', N'Qian Shihan', N'841', N'1', N'742.6563', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'354', N'Lin Zhiyuan', N'854', N'1', N'277.5717', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'355', N'Nakamori Rin', N'342', N'1', N'602.6857', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'356', N'Nakano Eita', N'222', N'1', N'451.9779', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'357', N'Theresa Mendez', N'120', N'1', N'176.5382', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'358', N'Tiffany Hunter', N'63', N'1', N'963.8984', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'359', N'Ng Hui Mei', N'860', N'1', N'903.6364', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'36', N'Goto Ayato', N'824', N'1', N'884.0537', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'360', N'Pang Wing Fat', N'523', N'1', N'134.5778', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'361', N'Guo Xiuying', N'978', N'1', N'556.2204', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'362', N'Yokoyama Hazuki', N'208', N'1', N'520.6612', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'363', N'Feng Jiehong', N'632', N'1', N'22.7135', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'364', N'Nakajima Mai', N'571', N'1', N'983.6401', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'365', N'Emily Rogers', N'221', N'1', N'485.5305', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'366', N'Beverly Nelson', N'640', N'1', N'657.9435', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'367', N'Murata Yota', N'911', N'1', N'845.2299', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'368', N'To Sai Wing', N'226', N'1', N'191.8549', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'369', N'Yan Xiaoming', N'407', N'1', N'726.2078', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'37', N'Joyce Woods', N'447', N'1', N'840.5557', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'370', N'Shimada Eita', N'896', N'1', N'180.4945', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'371', N'Kong Wing Kuen', N'576', N'1', N'956.5683', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'372', N'Richard Wood', N'618', N'1', N'185.0609', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'373', N'Wada Itsuki', N'84', N'1', N'794.5364', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'374', N'Dai Yu Ling', N'493', N'1', N'429.1355', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'375', N'Lau Hok Yau', N'116', N'1', N'262.2644', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'376', N'Huang Anqi', N'949', N'1', N'567.3131', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'377', N'Lok Cho Yee', N'63', N'1', N'337.5340', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'378', N'Ye Anqi', N'456', N'1', N'767.5071', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'379', N'Cao Zhiyuan', N'623', N'1', N'977.3664', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'38', N'Frank Perez', N'157', N'1', N'25.5338', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'380', N'Aoki Kenta', N'555', N'1', N'41.2418', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'381', N'Heung Chiu Wai', N'525', N'1', N'839.1584', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'382', N'Yuen Chun Yu', N'235', N'1', N'142.6497', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'383', N'Siu Sum Wing', N'478', N'1', N'168.2191', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'384', N'Yin Lai Yan', N'82', N'1', N'284.9050', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'385', N'Wei Rui', N'934', N'1', N'990.7900', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'386', N'Shirley Peterson', N'449', N'1', N'110.5558', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'387', N'Jose Ramos', N'306', N'1', N'686.3796', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'388', N'Takahashi Takuya', N'333', N'1', N'128.4009', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'389', N'Kudo Kaito', N'524', N'1', N'169.0642', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'39', N'Morita Eita', N'855', N'1', N'37.1008', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'390', N'Matsumoto Eita', N'278', N'1', N'285.4857', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'391', N'Nakajima Ikki', N'121', N'1', N'914.4776', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'392', N'Ueno Momoe', N'706', N'1', N'102.5584', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'393', N'Qian Zitao', N'150', N'1', N'712.3620', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'394', N'Qin Yuning', N'149', N'1', N'111.9641', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'395', N'Li Zhennan', N'276', N'1', N'369.4697', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'396', N'Lillian Roberts', N'386', N'1', N'886.5426', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'397', N'Miu Tsz Ching', N'115', N'1', N'200.1663', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'398', N'Yoshida Yuto', N'527', N'1', N'661.5426', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'399', N'Tang Wai Yee', N'226', N'1', N'825.1465', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'4', N'Fong Chun Yu', N'212', N'1', N'844.8000', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'40', N'Ann Perez', N'377', N'1', N'21.5535', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'400', N'Ikeda Yamato', N'809', N'1', N'705.2431', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'401', N'Ando Yamato', N'851', N'1', N'186.3531', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'402', N'Carlos Baker', N'880', N'1', N'370.9129', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'403', N'Qin Shihan', N'594', N'1', N'515.4058', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'404', N'Tanaka Daisuke', N'192', N'1', N'482.4664', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'405', N'Rose Brown', N'183', N'1', N'937.4792', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'406', N'Shibata Kasumi', N'599', N'1', N'633.2565', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'407', N'Fong Wing Sze', N'493', N'1', N'529.8850', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'408', N'Ando Takuya', N'992', N'1', N'447.3181', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'409', N'Carl Nguyen', N'170', N'1', N'345.1979', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'41', N'Wan Tsz Ching', N'177', N'1', N'15.1187', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'410', N'Alice Tucker', N'382', N'1', N'307.7446', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'411', N'Chiang Siu Wai', N'26', N'1', N'943.9760', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'412', N'Chin Wing Fat', N'499', N'1', N'298.8282', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'413', N'Ueno Yuito', N'58', N'1', N'920.0001', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'414', N'Zhao Xiuying', N'661', N'1', N'971.6427', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'415', N'Benjamin Hall', N'982', N'1', N'628.0456', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'416', N'Tao Zhiyuan', N'833', N'1', N'132.8101', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'417', N'Lok Wai Yee', N'511', N'1', N'839.1868', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'418', N'Chic Siu Wai', N'581', N'1', N'595.9757', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'419', N'Cui Jialun', N'762', N'1', N'705.0262', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'42', N'Ng Ka Fai', N'592', N'1', N'564.6614', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'420', N'Kong Xiuying', N'769', N'1', N'928.0425', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'421', N'Inoue Yuto', N'986', N'1', N'882.2940', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'422', N'Koon Wing Sze', N'7', N'1', N'261.3811', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'423', N'Nishimura Daichi', N'705', N'1', N'992.6585', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'424', N'Norman Mitchell', N'109', N'1', N'102.7102', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'425', N'Roger Cook', N'240', N'1', N'642.1933', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'426', N'Fung Cho Yee', N'337', N'1', N'331.6316', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'427', N'Peng Zhennan', N'941', N'1', N'32.9578', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'428', N'Fujii Hazuki', N'923', N'1', N'473.3184', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'429', N'Sato Hina', N'263', N'1', N'913.1830', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'43', N'Judy Holmes', N'887', N'1', N'917.0292', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'430', N'Cheng Zitao', N'731', N'1', N'539.3404', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'431', N'Zou Ziyi', N'20', N'1', N'841.8137', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'432', N'Murakami Ayano', N'465', N'1', N'432.8425', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'433', N'Fujii Yota', N'594', N'1', N'585.6109', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'434', N'John King', N'104', N'1', N'470.1644', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'435', N'Choi Kar Yan', N'83', N'1', N'710.0582', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'436', N'Elaine Cole', N'890', N'1', N'47.5117', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'437', N'Jerry Robertson', N'122', N'1', N'809.2747', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'438', N'Bonnie Medina', N'672', N'1', N'793.9936', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'439', N'Chin Ka Man', N'952', N'1', N'297.5896', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'44', N'Miu Sai Wing', N'457', N'1', N'179.7271', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'440', N'Xiong Zitao', N'145', N'1', N'232.3542', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'441', N'Nakagawa Rin', N'167', N'1', N'541.6360', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'442', N'Ogawa Miu', N'728', N'1', N'5.9824', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'443', N'Irene Foster', N'821', N'1', N'36.4474', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'444', N'Kobayashi Kasumi', N'671', N'1', N'983.1432', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'445', N'Nakamori Tsubasa', N'569', N'1', N'482.9354', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'446', N'Crystal Gonzales', N'797', N'1', N'472.6977', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'447', N'Yao Anqi', N'706', N'1', N'767.6617', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'448', N'Ikeda Ryota', N'259', N'1', N'175.1054', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'449', N'Mildred Marshall', N'200', N'1', N'489.2297', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'45', N'Ti Yun Fat', N'23', N'1', N'420.3274', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'450', N'Tony Spencer', N'382', N'1', N'163.3872', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'451', N'Lee Suk Yee', N'365', N'1', N'823.7660', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'452', N'Tao Kwok Ming', N'513', N'1', N'661.2575', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'453', N'Hu Ziyi', N'50', N'1', N'384.0425', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'454', N'Lui Lik Sun', N'29', N'1', N'183.4963', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'455', N'Yan Zhiyuan', N'458', N'1', N'445.1490', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'456', N'Carrie Bailey', N'295', N'1', N'557.4167', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'457', N'Ishii Kaito', N'505', N'1', N'24.8163', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'458', N'Zhao Yunxi', N'433', N'1', N'866.6632', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'459', N'Kao Sze Yu', N'602', N'1', N'815.3008', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'46', N'Lu Anqi', N'110', N'1', N'387.5276', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'460', N'Guo Zhiyuan', N'113', N'1', N'442.8671', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'461', N'Ota Shino', N'947', N'1', N'412.9792', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'462', N'Gu Jiehong', N'958', N'1', N'193.8195', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'463', N'Okamoto Kasumi', N'235', N'1', N'794.3576', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'464', N'Fu Kwok Ming', N'190', N'1', N'823.8021', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'465', N'Lo Kwok Kuen', N'690', N'1', N'936.4400', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'466', N'Ying Ka Ling', N'364', N'1', N'43.9430', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'467', N'Ng Chi Ming', N'99', N'1', N'713.8009', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'468', N'Okamoto Mio', N'900', N'1', N'855.8905', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'469', N'Shi Lu', N'111', N'1', N'286.5375', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'47', N'Xiao Lan', N'662', N'1', N'809.2516', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'470', N'Yuen Chi Ming', N'657', N'1', N'571.5247', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'471', N'Au Wai Lam', N'904', N'1', N'543.8039', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'472', N'Bradley Romero', N'108', N'1', N'276.6416', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'473', N'Hsuan Chiu Wai', N'395', N'1', N'9.5918', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'474', N'Yamashita Kazuma', N'468', N'1', N'240.8194', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'475', N'Bryan Sanchez', N'82', N'1', N'959.8990', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'476', N'Dong Shihan', N'175', N'1', N'417.1699', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'477', N'Ethel Lopez', N'115', N'1', N'756.9519', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'478', N'Fujita Yuna', N'137', N'1', N'943.3421', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'479', N'Alexander Reed', N'886', N'1', N'927.7166', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'48', N'Zhu Lu', N'472', N'1', N'442.5531', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'480', N'Takagi Kazuma', N'613', N'1', N'626.5789', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'481', N'Huang Lan', N'733', N'1', N'759.3458', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'482', N'Fujita Ren', N'192', N'1', N'388.1574', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'483', N'Tsui Kar Yan', N'200', N'1', N'139.5569', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'484', N'Cheryl Robinson', N'470', N'1', N'600.7647', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'485', N'Qiu Anqi', N'360', N'1', N'557.8279', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'486', N'Ying Ming', N'467', N'1', N'100.3237', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'487', N'Troy Sanders', N'298', N'1', N'106.9320', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'488', N'Charles Thomas', N'487', N'1', N'229.1572', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'489', N'Chan Wing Suen', N'882', N'1', N'146.2922', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'49', N'Lori Henry', N'622', N'1', N'975.5221', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'490', N'Patrick Simpson', N'343', N'1', N'84.4573', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'491', N'Hirano Minato', N'291', N'1', N'948.6600', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'492', N'Qiu Rui', N'269', N'1', N'321.1509', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'493', N'Meng Yun Fat', N'232', N'1', N'157.5916', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'494', N'He Zhennan', N'299', N'1', N'541.9627', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'495', N'Takahashi Aoi', N'892', N'1', N'244.2599', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'496', N'Helen Chavez', N'285', N'1', N'524.4141', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'497', N'Mok Kwok Yin', N'196', N'1', N'221.6056', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'498', N'Tao Anqi', N'805', N'1', N'247.8860', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'499', N'Kong Chiu Wai', N'567', N'1', N'155.0174', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'5', N'Suzuki Kazuma', N'869', N'1', N'510.0157', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'50', N'Ono Sara', N'104', N'1', N'751.2770', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'500', N'Zhou Ziyi', N'609', N'1', N'539.7440', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'501', N'Abe Momoka', N'15', N'1', N'526.5551', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'502', N'Kam Wai Man', N'120', N'1', N'8.8952', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'503', N'Shao Yuning', N'183', N'1', N'154.0690', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'504', N'Debbie Hicks', N'552', N'1', N'265.8255', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'505', N'Ren Zhennan', N'49', N'1', N'907.9705', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'506', N'Fu Yuning', N'544', N'1', N'384.8214', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'507', N'Dawn White', N'363', N'1', N'298.1343', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'508', N'Huang Xiaoming', N'152', N'1', N'846.6475', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'509', N'Dawn Hill', N'88', N'1', N'906.3821', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'51', N'Richard Edwards', N'210', N'1', N'164.5686', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'510', N'Ishida Akina', N'994', N'1', N'456.0368', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'511', N'Tang Ziyi', N'121', N'1', N'575.0574', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'512', N'Fong Lik Sun', N'70', N'1', N'174.7412', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'513', N'Yan Rui', N'775', N'1', N'780.4340', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'514', N'Florence Stephens', N'13', N'1', N'248.9111', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'515', N'Nomura Eita', N'660', N'1', N'108.2994', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'516', N'Aoki Seiko', N'134', N'1', N'426.5716', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'517', N'Sugawara Rin', N'383', N'1', N'812.4042', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'518', N'Wada Rena', N'10', N'1', N'613.7330', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'519', N'Wei Xiuying', N'898', N'1', N'597.3160', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'52', N'Lok Hok Yau', N'416', N'1', N'357.6731', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'520', N'Sakurai Eita', N'773', N'1', N'914.9167', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'521', N'Otsuka Daichi', N'46', N'1', N'471.5265', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'522', N'Wada Kazuma', N'888', N'1', N'728.7681', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'523', N'Ishida Momoe', N'483', N'1', N'780.6371', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'524', N'Sato Momoe', N'624', N'1', N'859.5322', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'525', N'Yeow Hok Yau', N'513', N'1', N'214.8529', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'526', N'Yamamoto Yuto', N'556', N'1', N'314.5639', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'527', N'Koyama Yota', N'31', N'1', N'207.2425', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'528', N'Evelyn Reed', N'39', N'1', N'224.7051', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'529', N'Lam Tsz Hin', N'756', N'1', N'94.0452', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'53', N'Sato Yamato', N'598', N'1', N'589.1502', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'530', N'Saito Shino', N'64', N'1', N'33.3255', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'531', N'Amanda Wells', N'921', N'1', N'24.6208', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'532', N'Yip Fu Shing', N'645', N'1', N'132.9206', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'533', N'Yung Wing Kuen', N'465', N'1', N'214.5119', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'534', N'Qian Zhiyuan', N'163', N'1', N'223.0973', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'535', N'Yamada Hina', N'155', N'1', N'213.6664', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'536', N'Yung Hui Mei', N'284', N'1', N'714.7296', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'537', N'Hung Ting Fung', N'747', N'1', N'623.7904', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'538', N'Fang Yuning', N'798', N'1', N'578.0698', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'539', N'Fu Rui', N'27', N'1', N'826.1833', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'54', N'Margaret Cole', N'174', N'1', N'717.1487', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'540', N'Morita Hazuki', N'515', N'1', N'502.3670', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'541', N'Ho Siu Wai', N'489', N'1', N'433.6073', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'542', N'Kikuchi Akina', N'631', N'1', N'909.9465', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'543', N'Man Tin Wing', N'269', N'1', N'992.6275', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'544', N'To Chun Yu', N'368', N'1', N'45.4889', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'545', N'Gladys Richardson', N'351', N'1', N'575.5655', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'546', N'Hao Shihan', N'374', N'1', N'853.9497', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'547', N'Tse Wai Man', N'186', N'1', N'393.5716', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'548', N'Nakagawa Kazuma', N'673', N'1', N'257.5922', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'549', N'Sun Lan', N'139', N'1', N'828.7515', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'55', N'Chiang Lik Sun', N'594', N'1', N'1.3765', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'550', N'Sato Ren', N'680', N'1', N'839.9499', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'551', N'Fan Jiehong', N'227', N'1', N'971.6742', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'552', N'Yuen Hok Yau', N'541', N'1', N'277.2279', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'553', N'Yokoyama Minato', N'160', N'1', N'137.2916', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'554', N'Ho Wing Kuen', N'884', N'1', N'627.0206', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'555', N'Edwin Peterson', N'679', N'1', N'851.0255', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'556', N'Feng Shihan', N'309', N'1', N'192.8556', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'557', N'Yeung Hui Mei', N'226', N'1', N'975.3157', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'558', N'Okamoto Ren', N'650', N'1', N'806.6085', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'559', N'Shimada Hazuki', N'634', N'1', N'737.6389', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'56', N'Okada Yuna', N'594', N'1', N'349.4048', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'560', N'Ando Aoshi', N'980', N'1', N'519.0691', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'561', N'Carolyn Patterson', N'981', N'1', N'739.5086', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'562', N'Hao Xiuying', N'999', N'1', N'908.2897', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'563', N'Chic Ching Wan', N'405', N'1', N'62.0243', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'564', N'Nakagawa Ren', N'653', N'1', N'621.1720', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'565', N'Yao Zitao', N'821', N'1', N'22.3859', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'566', N'Du Jiehong', N'367', N'1', N'517.4720', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'567', N'Cui Jiehong', N'428', N'1', N'105.3600', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'568', N'Su Anqi', N'482', N'1', N'433.2848', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'569', N'Hasegawa Sara', N'628', N'1', N'252.6552', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'57', N'Tsang Ho Yin', N'288', N'1', N'598.5565', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'570', N'Zhou Anqi', N'908', N'1', N'954.0605', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'571', N'Ueno Shino', N'984', N'1', N'330.2062', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'572', N'Du Yuning', N'139', N'1', N'544.7854', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'573', N'Kinoshita Kazuma', N'940', N'1', N'856.4044', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'574', N'Ueda Takuya', N'627', N'1', N'426.1876', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'575', N'Ying Wai Yee', N'710', N'1', N'639.4881', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'576', N'Fan Jiehong', N'371', N'1', N'580.0859', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'577', N'Dawn Reynolds', N'326', N'1', N'88.3713', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'578', N'Wan Sau Man', N'466', N'1', N'300.5217', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'579', N'Fujita Shino', N'273', N'1', N'9.0310', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'58', N'Tian Jiehong', N'564', N'1', N'652.3862', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'580', N'Koon Chiu Wai', N'210', N'1', N'92.3611', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'581', N'Dai Zhiyuan', N'592', N'1', N'188.5289', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'582', N'Yue Tsz Hin', N'831', N'1', N'3.3195', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'583', N'Kinoshita Ayato', N'605', N'1', N'999.4365', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'584', N'Ellen Rogers', N'331', N'1', N'306.0735', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'585', N'Fujita Ayano', N'628', N'1', N'610.0385', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'586', N'Deng Zitao', N'905', N'1', N'528.3754', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'587', N'Fu Zitao', N'323', N'1', N'507.5122', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'588', N'Su Zhennan', N'314', N'1', N'775.4559', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'589', N'Kwan Chieh Lun', N'384', N'1', N'170.4369', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'59', N'Fu On Na', N'666', N'1', N'334.2716', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'590', N'Rodney Garza', N'728', N'1', N'596.6605', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'591', N'Tang Rui', N'743', N'1', N'47.7446', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'592', N'Dai Hok Yau', N'532', N'1', N'891.4899', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'593', N'Mui Tsz Hin', N'819', N'1', N'467.7254', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'594', N'Yamamoto Nanami', N'695', N'1', N'873.0263', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'595', N'Morita Kaito', N'598', N'1', N'652.2315', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'596', N'Chic Wing Fat', N'923', N'1', N'277.0019', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'597', N'Kikuchi Mitsuki', N'955', N'1', N'388.1026', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'598', N'Imai Mio', N'57', N'1', N'874.2450', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'599', N'Lui Ting Fung', N'727', N'1', N'303.6571', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'6', N'Yin Yun Fat', N'119', N'1', N'520.6737', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'60', N'Lee Olson', N'92', N'1', N'538.9025', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'600', N'Choi Kwok Yin', N'588', N'1', N'583.5242', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'601', N'Yip Tsz Hin', N'280', N'1', N'9.9552', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'602', N'Mo Ming', N'637', N'1', N'797.5173', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'603', N'So Fu Shing', N'708', N'1', N'409.9441', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'604', N'Liao Rui', N'923', N'1', N'744.4099', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'605', N'Ishikawa Momoe', N'990', N'1', N'478.0734', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'606', N'Amy Mitchell', N'429', N'1', N'160.7584', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'607', N'Qin Yuning', N'792', N'1', N'466.6519', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'608', N'Tao Kwok Ming', N'29', N'1', N'421.9762', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'609', N'Lok Fat', N'955', N'1', N'564.1712', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'61', N'Sano Ayato', N'44', N'1', N'571.2183', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'610', N'Sato Yuito', N'562', N'1', N'924.4689', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'611', N'Arimura Sakura', N'560', N'1', N'277.5286', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'612', N'Takeuchi Airi', N'451', N'1', N'36.8077', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'613', N'Harold Webb', N'772', N'1', N'740.6975', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'614', N'Zeng Jialun', N'355', N'1', N'139.9024', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'615', N'Rebecca Taylor', N'71', N'1', N'185.5591', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'616', N'Ogawa Misaki', N'518', N'1', N'431.8049', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'617', N'Hsuan Kar Yan', N'773', N'1', N'673.2447', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'618', N'Sakai Yuto', N'411', N'1', N'615.7955', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'619', N'Herbert Myers', N'249', N'1', N'824.8064', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'62', N'Richard Wagner', N'413', N'1', N'192.7164', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'620', N'Hung Ming', N'674', N'1', N'96.1506', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'621', N'Kathy Weaver', N'52', N'1', N'287.8520', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'622', N'Shi Zitao', N'422', N'1', N'906.3437', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'623', N'Lo Suk Yee', N'338', N'1', N'707.0414', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'624', N'Fujii Ren', N'975', N'1', N'652.3547', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'625', N'Wong Chi Ming', N'675', N'1', N'168.7859', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'626', N'Patricia Fox', N'937', N'1', N'742.7973', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'627', N'Jack Henderson', N'562', N'1', N'607.6228', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'628', N'Kono Sara', N'111', N'1', N'653.3019', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'629', N'Jiang Ziyi', N'460', N'1', N'992.7080', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'63', N'Tammy Howard', N'893', N'1', N'983.8002', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'630', N'Iwasaki Rena', N'111', N'1', N'912.0135', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'631', N'Ralph Edwards', N'382', N'1', N'322.3010', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'632', N'Dai Yunxi', N'198', N'1', N'224.3374', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'633', N'Sato Misaki', N'119', N'1', N'152.5071', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'634', N'Meng Xiuying', N'380', N'1', N'807.8615', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'635', N'Chang Yu Ling', N'611', N'1', N'980.4892', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'636', N'Choi Kwok Kuen', N'725', N'1', N'755.4865', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'637', N'Yamada Rin', N'200', N'1', N'505.7214', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'638', N'Pak Fu Shing', N'814', N'1', N'496.6077', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'639', N'Christina Woods', N'731', N'1', N'987.2322', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'64', N'Wei Ziyi', N'177', N'1', N'99.3775', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'640', N'Shen Xiuying', N'188', N'1', N'722.0476', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'641', N'Pan Lan', N'672', N'1', N'859.6131', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'642', N'Huang Yuning', N'143', N'1', N'207.1570', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'643', N'Wang Xiaoming', N'956', N'1', N'710.9921', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'644', N'Ueda Miu', N'758', N'1', N'125.5248', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'645', N'Jiang Ziyi', N'719', N'1', N'422.7720', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'646', N'Miu Hui Mei', N'69', N'1', N'732.0110', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'647', N'Chris Ward', N'772', N'1', N'143.1899', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'648', N'Nishimura Rena', N'513', N'1', N'968.5803', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'649', N'Duan Anqi', N'99', N'1', N'17.8899', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'65', N'Yu Zitao', N'210', N'1', N'966.1045', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'650', N'Zhou Shihan', N'118', N'1', N'401.7012', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'651', N'Ying Hok Yau', N'689', N'1', N'764.3463', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'652', N'Guo Ziyi', N'193', N'1', N'589.9142', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'653', N'Chan Fu Shing', N'309', N'1', N'700.1910', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'654', N'Chen Zhennan', N'362', N'1', N'517.4012', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'655', N'Sato Seiko', N'487', N'1', N'92.7480', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'656', N'Chris Cruz', N'150', N'1', N'452.5428', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'657', N'Miyazaki Eita', N'835', N'1', N'553.6275', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'658', N'Kwok Chung Yin', N'341', N'1', N'784.4193', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'659', N'Aoki Kasumi', N'924', N'1', N'2.0268', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'66', N'So Sai Wing', N'236', N'1', N'248.2039', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'660', N'Lam Wai Man', N'597', N'1', N'439.8893', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'661', N'Adam Mendoza', N'901', N'1', N'275.7449', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'662', N'Marcus Gutierrez', N'801', N'1', N'32.7133', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'663', N'Tang Rui', N'39', N'1', N'103.2968', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'664', N'Mao Zitao', N'735', N'1', N'195.2676', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'665', N'Feng Lu', N'161', N'1', N'159.3905', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'666', N'Tang Tin Lok', N'425', N'1', N'920.6672', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'667', N'Hui Wing Fat', N'427', N'1', N'124.3151', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'668', N'Koo Ming Sze', N'213', N'1', N'548.6645', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'669', N'Qiu Xiuying', N'481', N'1', N'112.2959', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'67', N'Siu Fu Shing', N'108', N'1', N'566.3173', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'670', N'Fan Jialun', N'375', N'1', N'311.8344', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'671', N'Lui Ming', N'643', N'1', N'823.2756', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'672', N'Jeffrey Hunt', N'290', N'1', N'764.7751', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'673', N'Yuan Yunxi', N'949', N'1', N'134.5482', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'674', N'Joyce Ellis', N'257', N'1', N'551.0162', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'675', N'Saito Mitsuki', N'217', N'1', N'889.7949', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'676', N'David Graham', N'871', N'1', N'40.5178', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'677', N'Hazel Nichols', N'447', N'1', N'833.1159', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'678', N'Zeng Shihan', N'295', N'1', N'267.8538', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'679', N'Fukuda Daichi', N'95', N'1', N'62.7003', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'68', N'Chris Allen', N'411', N'1', N'931.5489', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'680', N'Gary Green', N'891', N'1', N'714.5447', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'681', N'Ma Yunxi', N'602', N'1', N'622.9699', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'682', N'Yin Anqi', N'227', N'1', N'39.0821', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'683', N'Peng Jialun', N'105', N'1', N'131.5815', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'684', N'Che Tak Wah', N'555', N'1', N'213.7902', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'685', N'Ma Wing Suen', N'786', N'1', N'784.4622', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'686', N'Xiao Ziyi', N'748', N'1', N'534.7707', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'687', N'Endo Riku', N'32', N'1', N'609.3534', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'688', N'Frederick Sullivan', N'246', N'1', N'444.2571', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'689', N'Chiang Hok Yau', N'259', N'1', N'366.6738', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'69', N'Leslie Hill', N'622', N'1', N'915.3191', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'690', N'Yeung Siu Wai', N'523', N'1', N'914.4918', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'691', N'Maria Howard', N'167', N'1', N'624.9757', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'692', N'Paul Gray', N'739', N'1', N'249.6687', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'693', N'Steven Watson', N'132', N'1', N'936.0931', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'694', N'He Zhiyuan', N'255', N'1', N'887.8184', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'695', N'Sano Hikari', N'891', N'1', N'695.0752', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'696', N'Wanda Evans', N'309', N'1', N'133.4475', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'697', N'Zhong Xiuying', N'715', N'1', N'642.7043', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'698', N'Yuan Anqi', N'320', N'1', N'508.2230', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'699', N'Kikuchi Ikki', N'956', N'1', N'804.9248', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'7', N'Shirley Bryant', N'528', N'1', N'403.5879', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'70', N'Xie Xiuying', N'315', N'1', N'930.5029', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'700', N'Okamoto Riku', N'225', N'1', N'202.8446', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'701', N'Takahashi Itsuki', N'101', N'1', N'867.8616', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'702', N'Russell Lopez', N'661', N'1', N'814.7161', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'703', N'Yau Wai Han', N'917', N'1', N'555.5099', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'704', N'Kwong Ching Wan', N'831', N'1', N'37.9745', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'705', N'Lu Rui', N'285', N'1', N'103.2169', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'706', N'Yan Anqi', N'438', N'1', N'839.1624', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'707', N'Dale James', N'299', N'1', N'288.6201', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'708', N'Curtis Gonzales', N'113', N'1', N'18.2310', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'709', N'Wong Ka Man', N'14', N'1', N'827.6781', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'71', N'Lok Chieh Lun', N'475', N'1', N'333.6683', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'710', N'Fong Sze Yu', N'784', N'1', N'895.2265', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'711', N'Sakamoto Ayano', N'65', N'1', N'79.5793', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'712', N'Chic Tsz Ching', N'960', N'1', N'414.8545', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'713', N'Chin Kar Yan', N'358', N'1', N'920.1547', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'714', N'Pak Cho Yee', N'169', N'1', N'843.4348', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'715', N'Kimberly Bell', N'932', N'1', N'600.4722', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'716', N'Ogawa Ryota', N'876', N'1', N'263.3953', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'717', N'Peggy Rivera', N'912', N'1', N'422.4982', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'718', N'Hui Ling Ling', N'229', N'1', N'610.4891', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'719', N'Sakurai Hazuki', N'101', N'1', N'749.6116', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'72', N'Yue Ka Ming', N'800', N'1', N'988.5491', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'720', N'Guo Yuning', N'643', N'1', N'590.2762', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'721', N'Wu Yunxi', N'140', N'1', N'236.4912', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'722', N'Yin Zhiyuan', N'813', N'1', N'942.5082', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'723', N'Ashley Flores', N'186', N'1', N'52.6756', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'724', N'Tanaka Airi', N'226', N'1', N'373.2213', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'725', N'Okada Nanami', N'692', N'1', N'279.5596', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'726', N'Hsuan Lai Yan', N'229', N'1', N'489.6044', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'727', N'Juanita Fox', N'606', N'1', N'91.0513', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'728', N'Wu Hiu Tung', N'454', N'1', N'338.0523', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'729', N'Otsuka Hikari', N'553', N'1', N'831.2754', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'73', N'Lu Rui', N'450', N'1', N'221.3306', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'730', N'Fu Zhennan', N'148', N'1', N'735.6281', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'731', N'Tsui Kwok Wing', N'962', N'1', N'499.8147', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'732', N'Li Shihan', N'795', N'1', N'443.4755', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'733', N'Yuan Lu', N'764', N'1', N'142.1695', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'734', N'Fujiwara Hana', N'230', N'1', N'501.7211', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'735', N'Dong Zhiyuan', N'414', N'1', N'871.4062', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'736', N'Yuen Tak Wah', N'421', N'1', N'822.5870', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'737', N'Koyama Aoi', N'765', N'1', N'21.7873', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'738', N'Juan Sanders', N'365', N'1', N'122.1813', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'739', N'Matsumoto Rin', N'894', N'1', N'594.2432', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'74', N'Matthew Herrera', N'442', N'1', N'560.7345', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'740', N'Lam Ka Fai', N'986', N'1', N'688.6255', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'741', N'Tao Tin Lok', N'538', N'1', N'242.6018', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'742', N'Zheng Lan', N'998', N'1', N'788.8107', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'743', N'Ray Scott', N'120', N'1', N'91.7908', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'744', N'To Ka Ming', N'687', N'1', N'460.8307', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'745', N'Ueno Takuya', N'141', N'1', N'49.7226', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'746', N'Song Shihan', N'598', N'1', N'685.9567', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'747', N'Lois Jordan', N'145', N'1', N'612.7977', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'748', N'Yip Tsz Hin', N'271', N'1', N'477.0577', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'749', N'Koon Ching Wan', N'655', N'1', N'99.3074', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'75', N'Cao Anqi', N'945', N'1', N'501.7300', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'750', N'Yamazaki Airi', N'523', N'1', N'312.2353', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'751', N'Miyamoto Hina', N'33', N'1', N'225.8046', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'752', N'Zhang Lu', N'835', N'1', N'373.9128', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'753', N'Fred Garza', N'74', N'1', N'932.7410', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'754', N'Pang Kwok Ming', N'577', N'1', N'577.2779', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'755', N'Yue Chi Yuen', N'975', N'1', N'744.1030', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'756', N'Grace Graham', N'950', N'1', N'400.4473', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'757', N'Takeuchi Kenta', N'9', N'1', N'958.8889', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'758', N'Inoue Yota', N'462', N'1', N'486.7760', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'759', N'Charlotte Hall', N'7', N'1', N'556.9373', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'76', N'Kao Tak Wah', N'615', N'1', N'942.5815', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'760', N'Yokoyama Itsuki', N'320', N'1', N'552.8122', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'761', N'Kimura Ren', N'982', N'1', N'239.0871', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'762', N'Miyamoto Hana', N'480', N'1', N'142.9833', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'763', N'Ye Anqi', N'799', N'1', N'912.7279', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'764', N'Kojima Kenta', N'532', N'1', N'893.0376', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'765', N'He Xiaoming', N'564', N'1', N'794.0230', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'766', N'Cai Zitao', N'363', N'1', N'936.2661', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'767', N'Sato Daichi', N'336', N'1', N'591.2077', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'768', N'Marvin Warren', N'731', N'1', N'451.9632', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'769', N'Fung Wing Fat', N'878', N'1', N'498.8878', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'77', N'Xue Ziyi', N'928', N'1', N'13.8668', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'770', N'Wang Xiuying', N'706', N'1', N'593.0573', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'771', N'Craig Jordan', N'836', N'1', N'256.4874', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'772', N'Luo Jialun', N'597', N'1', N'182.0755', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'773', N'Eleanor Thomas', N'891', N'1', N'850.4446', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'774', N'Mo Shihan', N'472', N'1', N'467.3961', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'775', N'Ryan Flores', N'79', N'1', N'847.5713', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'776', N'Kinoshita Ren', N'738', N'1', N'763.7370', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'777', N'Sheila Clark', N'739', N'1', N'379.4559', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'778', N'Shibata Yuna', N'942', N'1', N'521.9872', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'779', N'Tang Jiehong', N'539', N'1', N'258.1599', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'78', N'Denise Alvarez', N'354', N'1', N'700.5724', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'780', N'Mak Kwok Wing', N'621', N'1', N'245.8547', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'781', N'Sasaki Misaki', N'643', N'1', N'691.8871', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'782', N'Nakamura Yamato', N'405', N'1', N'855.2445', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'783', N'Meng Xiuying', N'583', N'1', N'955.5714', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'784', N'Shi Zhiyuan', N'977', N'1', N'440.9094', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'785', N'Alexander Alvarez', N'12', N'1', N'916.7522', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'786', N'Liang Shihan', N'922', N'1', N'781.8786', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'787', N'Xie Yunxi', N'428', N'1', N'351.6594', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'788', N'Yan Xiaoming', N'913', N'1', N'250.9278', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'789', N'Fukuda Yamato', N'704', N'1', N'92.0719', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'79', N'Juanita Anderson', N'25', N'1', N'423.2457', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'790', N'Han Suk Yee', N'114', N'1', N'488.9246', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'791', N'Ying Wai Lam', N'830', N'1', N'206.3035', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'792', N'Lok Ka Keung', N'651', N'1', N'439.9077', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'793', N'Cao Zitao', N'678', N'1', N'38.0418', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'794', N'Cui Lu', N'106', N'1', N'141.4679', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'795', N'Chin Fu Shing', N'319', N'1', N'186.3865', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'796', N'Martin White', N'210', N'1', N'504.6072', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'797', N'Xia Ziyi', N'818', N'1', N'932.3759', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'798', N'Hasegawa Kazuma', N'180', N'1', N'543.7054', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'799', N'Xiang Xiaoming', N'315', N'1', N'510.9571', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'8', N'Iwasaki Rin', N'267', N'1', N'413.3824', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'80', N'Kudo Ikki', N'737', N'1', N'97.3703', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'800', N'Robert Rivera', N'336', N'1', N'467.6372', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'801', N'Kim Richardson', N'962', N'1', N'978.0419', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'802', N'Yokoyama Minato', N'82', N'1', N'115.3094', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'803', N'Mui Sau Man', N'867', N'1', N'892.2166', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'804', N'Jiang Zhiyuan', N'881', N'1', N'624.5393', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'805', N'Pak Kwok Ming', N'124', N'1', N'534.1839', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'806', N'Ti Chun Yu', N'648', N'1', N'249.4139', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'807', N'Tan Shihan', N'553', N'1', N'993.3108', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'808', N'Ti Sai Wing', N'438', N'1', N'501.2484', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'809', N'Ellen Nelson', N'271', N'1', N'28.9238', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'81', N'Judy Hill', N'959', N'1', N'845.5719', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'810', N'Fu On Na', N'223', N'1', N'863.8368', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'811', N'Xiang Xiuying', N'888', N'1', N'643.5530', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'812', N'Kudo Kazuma', N'772', N'1', N'16.8966', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'813', N'April Palmer', N'517', N'1', N'107.3823', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'814', N'Mao Zhiyuan', N'423', N'1', N'789.7265', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'815', N'Adam White', N'935', N'1', N'33.8036', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'816', N'Siu Chi Ming', N'995', N'1', N'739.3368', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'817', N'Lai Lai Yan', N'822', N'1', N'917.6109', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'818', N'Thelma Martinez', N'167', N'1', N'362.7819', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'819', N'Fong Sze Kwan', N'301', N'1', N'689.8240', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'82', N'Qiu Lan', N'683', N'1', N'356.0533', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'820', N'Shen Lan', N'855', N'1', N'414.1948', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'821', N'Rachel Meyer', N'242', N'1', N'620.5734', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'822', N'Ren Zhiyuan', N'43', N'1', N'362.9795', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'823', N'Marilyn Johnson', N'52', N'1', N'559.4570', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'824', N'Lillian Reyes', N'728', N'1', N'97.9303', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'825', N'Fang Anqi', N'230', N'1', N'833.8107', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'826', N'Lau Wai San', N'137', N'1', N'310.9999', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'827', N'Takada Ren', N'467', N'1', N'49.0907', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'828', N'Lori Schmidt', N'25', N'1', N'191.8508', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'829', N'Au Kwok Wing', N'143', N'1', N'769.5618', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'83', N'Samuel Snyder', N'662', N'1', N'197.4202', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'830', N'George Patterson', N'313', N'1', N'612.5100', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'831', N'Ying Lai Yan', N'184', N'1', N'262.8167', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'832', N'Nishimura Shino', N'802', N'1', N'266.0166', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'833', N'Ti Chung Yin', N'31', N'1', N'318.3911', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'834', N'Douglas Stone', N'39', N'1', N'807.1037', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'835', N'Lu Yunxi', N'212', N'1', N'607.3014', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'836', N'Tin Tin Wing', N'839', N'1', N'223.0189', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'837', N'Miura Tsubasa', N'295', N'1', N'940.0329', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'838', N'Wan Fu Shing', N'6', N'1', N'479.5942', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'839', N'Hasegawa Yuito', N'165', N'1', N'488.1131', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'84', N'Sugiyama Yuto', N'970', N'1', N'129.7320', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'840', N'Sit Ho Yin', N'410', N'1', N'969.0863', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'841', N'Kimberly Kelly', N'680', N'1', N'376.6426', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'842', N'Kinoshita Ren', N'590', N'1', N'790.0405', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'843', N'Florence Jordan', N'951', N'1', N'924.9725', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'844', N'Michelle Sanders', N'523', N'1', N'58.4405', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'845', N'Ku On Kay', N'8', N'1', N'608.9205', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'846', N'Chen Xiuying', N'85', N'1', N'396.2603', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'847', N'Ku Cho Yee', N'890', N'1', N'542.2436', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'848', N'Kao Kar Yan', N'803', N'1', N'929.4548', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'849', N'Donna Cox', N'876', N'1', N'473.2119', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'85', N'Ku Kar Yan', N'448', N'1', N'850.6083', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'850', N'Yeow Hui Mei', N'764', N'1', N'243.3443', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'851', N'Kwok Wai Yee', N'10', N'1', N'553.9522', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'852', N'Curtis Robinson', N'274', N'1', N'537.7603', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'853', N'Jacqueline Butler', N'683', N'1', N'655.0488', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'854', N'Wei Zhennan', N'955', N'1', N'849.4736', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'855', N'Kimberly Collins', N'777', N'1', N'930.3522', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'856', N'Hu Yunxi', N'161', N'1', N'76.8087', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'857', N'Randall Smith', N'116', N'1', N'377.0461', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'858', N'Yan Ziyi', N'724', N'1', N'894.5156', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'859', N'Kinoshita Riku', N'98', N'1', N'237.0453', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'86', N'Hasegawa Kenta', N'515', N'1', N'467.6625', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'860', N'Noguchi Miu', N'15', N'1', N'818.1900', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'861', N'Yuen Wai Man', N'524', N'1', N'356.4288', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'862', N'Patricia Anderson', N'33', N'1', N'779.6053', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'863', N'Manuel Alvarez', N'834', N'1', N'503.2103', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'864', N'Ueda Sakura', N'721', N'1', N'674.6770', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'865', N'Chad Nichols', N'954', N'1', N'894.3131', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'866', N'Lok Sau Man', N'919', N'1', N'845.8988', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'867', N'Glenn Jones', N'347', N'1', N'68.3343', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'868', N'Aoki Aoshi', N'337', N'1', N'484.1670', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'869', N'Kudo Kaito', N'213', N'1', N'764.5699', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'87', N'Jack Williams', N'88', N'1', N'873.0393', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'870', N'Wang Anqi', N'929', N'1', N'508.4431', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'871', N'Tin Wai Lam', N'758', N'1', N'601.9411', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'872', N'Liao Wai San', N'821', N'1', N'367.0784', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'873', N'Han Kwok Wing', N'220', N'1', N'905.1055', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'874', N'Hui Chung Yin', N'950', N'1', N'892.8898', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'875', N'Miu On Kay', N'116', N'1', N'633.4085', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'876', N'Kimberly Hayes', N'826', N'1', N'308.0509', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'877', N'Miura Rena', N'953', N'1', N'300.1087', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'878', N'Allen Daniels', N'6', N'1', N'529.9042', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'879', N'Chu Kwok Ming', N'694', N'1', N'296.8734', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'88', N'Matsuda Eita', N'961', N'1', N'322.2467', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'880', N'Lisa Jimenez', N'589', N'1', N'30.1216', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'881', N'Choi Sau Man', N'85', N'1', N'589.0025', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'882', N'Theodore Hunter', N'953', N'1', N'873.3224', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'883', N'Takagi Ikki', N'365', N'1', N'265.9994', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'884', N'Tong Wing Sze', N'902', N'1', N'806.9470', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'885', N'Kimura Kaito', N'566', N'1', N'100.2476', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'886', N'Dai Shihan', N'399', N'1', N'544.6991', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'887', N'Liang Jiehong', N'355', N'1', N'575.8156', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'888', N'Kwan Chi Ming', N'91', N'1', N'507.3417', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'889', N'Hsuan Wai San', N'925', N'1', N'306.7768', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'89', N'Lok Lik Sun', N'329', N'1', N'318.8428', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'890', N'Hsuan Wai Man', N'666', N'1', N'433.0368', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'891', N'Koo Tsz Hin', N'336', N'1', N'109.5770', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'892', N'Yuen Wing Sze', N'991', N'1', N'641.5935', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'893', N'Kwong Wing Sze', N'128', N'1', N'960.5379', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'894', N'Kojima Hazuki', N'568', N'1', N'654.1509', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'895', N'Ku Ka Man', N'803', N'1', N'831.7992', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'896', N'Miura Yuto', N'739', N'1', N'95.5570', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'897', N'Loui Wing Fat', N'527', N'1', N'524.5090', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'898', N'Shimada Mio', N'927', N'1', N'197.5646', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'899', N'Cheung Fat', N'456', N'1', N'880.0105', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'9', N'Takeuchi Riku', N'62', N'1', N'11.0677', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'90', N'Charles Perry', N'626', N'1', N'758.6247', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'900', N'Tanaka Nanami', N'925', N'1', N'954.4085', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'901', N'Brenda Kelley', N'741', N'1', N'836.0929', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'902', N'Maeda Yuna', N'703', N'1', N'978.3016', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'903', N'Chow Hiu Tung', N'570', N'1', N'535.1944', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'904', N'Cheng Shihan', N'809', N'1', N'67.4627', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'905', N'Yu Shihan', N'139', N'1', N'94.3609', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'906', N'Shi Anqi', N'198', N'1', N'757.8146', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'907', N'Tse Chiu Wai', N'85', N'1', N'853.6464', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'908', N'Joan Price', N'49', N'1', N'850.8661', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'909', N'Tin Wing Kuen', N'822', N'1', N'426.7846', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'91', N'Shao Zitao', N'467', N'1', N'634.1486', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'910', N'Henry Fox', N'137', N'1', N'321.7076', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'911', N'Catherine Hill', N'794', N'1', N'209.1136', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'912', N'Chan Kar Yan', N'793', N'1', N'338.5623', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'913', N'He Yunxi', N'96', N'1', N'774.3755', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'914', N'Sasaki Kaito', N'339', N'1', N'414.7497', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'915', N'Melvin Roberts', N'834', N'1', N'203.5486', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'916', N'Cheung Wai Man', N'836', N'1', N'672.8658', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'917', N'Yip Lai Yan', N'451', N'1', N'517.7784', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'918', N'Juan Olson', N'781', N'1', N'842.5048', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'919', N'Yue Kwok Ming', N'434', N'1', N'751.0992', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'92', N'Abe Yuna', N'365', N'1', N'372.6919', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'920', N'Sugawara Hazuki', N'413', N'1', N'201.2406', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'921', N'Ding Anqi', N'746', N'1', N'206.9689', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'922', N'Sylvia Perez', N'972', N'1', N'686.4019', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'923', N'Miu Chung Yin', N'92', N'1', N'990.0043', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'924', N'Wu Rui', N'87', N'1', N'930.6516', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'925', N'Julie Gutierrez', N'567', N'1', N'554.6542', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'926', N'Fu Chiu Wai', N'744', N'1', N'91.1689', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'927', N'Pamela Fox', N'367', N'1', N'660.0611', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'928', N'Chow Wing Sze', N'905', N'1', N'242.6840', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'929', N'Yuen Wai Lam', N'866', N'1', N'432.0813', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'93', N'Yamamoto Kenta', N'484', N'1', N'816.3845', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'930', N'Mui Wing Kuen', N'358', N'1', N'719.1503', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'931', N'Dai Ming', N'405', N'1', N'258.3836', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'932', N'Jeffery Simpson', N'917', N'1', N'867.6663', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'933', N'Mario Clark', N'694', N'1', N'487.7203', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'934', N'Fu Jialun', N'231', N'1', N'634.1419', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'935', N'Mary Gonzales', N'607', N'1', N'391.7401', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'936', N'Xie Jiehong', N'231', N'1', N'647.7097', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'937', N'Cao Yuning', N'30', N'1', N'240.2873', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'938', N'Wang Shihan', N'362', N'1', N'505.0971', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'939', N'Hayashi Kazuma', N'586', N'1', N'108.2481', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'94', N'Chic Sum Wing', N'434', N'1', N'464.6813', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'940', N'Sherry Walker', N'714', N'1', N'367.6294', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'941', N'Rita Guzman', N'712', N'1', N'292.4326', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'942', N'Ren Lu', N'761', N'1', N'590.7762', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'943', N'Ogawa Kenta', N'934', N'1', N'589.9791', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'944', N'Jonathan Carter', N'180', N'1', N'160.6085', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'945', N'Su Ziyi', N'340', N'1', N'296.8023', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'946', N'Wang Ziyi', N'328', N'1', N'820.1068', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'947', N'Wong Kwok Ming', N'758', N'1', N'993.0722', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'948', N'Zhang Zitao', N'717', N'1', N'289.4952', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'949', N'Nakayama Tsubasa', N'780', N'1', N'77.8675', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'95', N'Allen Wright', N'509', N'1', N'203.8637', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'950', N'Du Yunxi', N'825', N'1', N'185.3227', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'951', N'Tang On Kay', N'355', N'1', N'842.0467', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'952', N'Koo Suk Yee', N'330', N'1', N'935.6138', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'953', N'Sherry Hughes', N'214', N'1', N'404.6156', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'954', N'Ho Ho Yin', N'680', N'1', N'421.3951', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'955', N'Tan Rui', N'831', N'1', N'437.8253', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'956', N'Kathryn Olson', N'801', N'1', N'268.2109', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'957', N'Zhao Jialun', N'442', N'1', N'523.1595', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'958', N'Edith Henry', N'847', N'1', N'795.1454', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'959', N'Shao Yuning', N'53', N'1', N'407.9503', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'96', N'Chang Zhiyuan', N'289', N'1', N'954.9770', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'960', N'Mo Xiaoming', N'105', N'1', N'282.7248', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'961', N'Hui Suk Yee', N'480', N'1', N'912.7722', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'962', N'Lei Lan', N'970', N'1', N'994.1426', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'963', N'Pang Yu Ling', N'874', N'1', N'90.2475', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'964', N'Cheung Hiu Tung', N'475', N'1', N'956.0152', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'965', N'Masuda Hikari', N'937', N'1', N'665.3098', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'966', N'Zhu Zhiyuan', N'811', N'1', N'798.8715', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'967', N'Inoue Daichi', N'225', N'1', N'782.7881', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'968', N'Ruby Cole', N'665', N'1', N'861.8323', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'969', N'Ng Wing Sze', N'159', N'1', N'701.0235', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'97', N'Lei Zhennan', N'883', N'1', N'379.6379', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'970', N'Bobby Ramos', N'792', N'1', N'265.6532', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'971', N'Ma Sau Man', N'245', N'1', N'111.4402', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'972', N'Suzuki Yuto', N'317', N'1', N'309.8998', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'973', N'Endo Itsuki', N'748', N'1', N'447.8368', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'974', N'Yuen Lik Sun', N'793', N'1', N'373.1062', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'975', N'Jin Anqi', N'815', N'1', N'949.7637', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'976', N'Tang Wai Man', N'688', N'1', N'926.6413', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'977', N'Lam Ling Ling', N'763', N'1', N'814.2102', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'978', N'Tong Yu Ling', N'733', N'1', N'891.7035', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'979', N'Hashimoto Hana', N'993', N'1', N'188.5848', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'98', N'Rachel Guzman', N'766', N'1', N'350.3044', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'980', N'Fujita Seiko', N'776', N'1', N'394.5120', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'981', N'Yin Sau Man', N'703', N'1', N'368.3681', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'982', N'Wu Wing Fat', N'97', N'1', N'45.4087', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'983', N'Johnny Morris', N'584', N'1', N'224.2807', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'984', N'Jeffery Chavez', N'92', N'1', N'970.2136', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'985', N'Ueno Misaki', N'293', N'1', N'723.2921', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'986', N'Okada Yuto', N'984', N'1', N'578.3582', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'987', N'Abe Sakura', N'976', N'1', N'650.4825', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'988', N'Wang Jialun', N'730', N'1', N'166.6332', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'989', N'Zeng Yunxi', N'792', N'1', N'169.0372', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'99', N'Tanaka Hazuki', N'276', N'1', N'471.4329', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'990', N'Shing Sau Man', N'452', N'1', N'159.8033', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'991', N'Grace Simmons', N'194', N'1', N'944.4875', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'992', N'Chang Tsz Hin', N'503', N'1', N'999.6282', N'1')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'993', N'Marie Hayes', N'464', N'1', N'868.8895', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'994', N'Qian Lan', N'75', N'1', N'467.9811', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'995', N'Ye Xiuying', N'738', N'1', N'858.9364', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'996', N'Shimada Kazuma', N'358', N'1', N'84.6360', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'997', N'Sasaki Miu', N'506', N'1', N'957.2840', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'998', N'Xie Xiaoming', N'8', N'1', N'779.2932', N'0')
GO

INSERT INTO [dbo].[TSOLMProduct] ([FTPdtCode], [FTPdtName], [FNPdtQty], [FNPdtCnfVat], [FCPdtPri], [FBPdtAct]) VALUES (N'999', N'Kondo Ayano', N'263', N'1', N'717.9797', N'0')
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
  [FDInvDate] datetime  NULL
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
ALTER TABLE [dbo].[TSOLTInv] ADD CONSTRAINT [PK__TSOLTInv__80DF5A1334DB9C16] PRIMARY KEY CLUSTERED ([FTOrdCode], [FTPdtCode])
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

