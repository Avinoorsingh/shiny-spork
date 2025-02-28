if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[checkmail]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[checkmail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[clientdetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[clientdetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[contactus]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[contactus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[emp]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[emp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[projectdetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[projectdetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[projectstatus]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[projectstatus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[registration]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[registration]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[task]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[task]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[timesheet]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[timesheet]
GO

CREATE TABLE [dbo].[checkmail] (
	[frmid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[toaddr] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[subject] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[message] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dt] [smalldatetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[clientdetails] (
	[clientid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[clientpassword] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[clientname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [int] NULL ,
	[gender] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phoneno] [numeric](18, 0) NULL ,
	[emailid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projectid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projectdesc] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[contactus] (
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[emailid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[contactno] [numeric](18, 0) NULL ,
	[comments] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[emp] (
	[empid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[empname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gender] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[qualification] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp] [int] NULL ,
	[salary] [numeric](18, 0) NULL ,
	[keyskills] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[emailid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phoneno] [numeric](18, 0) NULL ,
	[dateofjoin] [smalldatetime] NULL ,
	[age] [int] NULL ,
	[address] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[projectdetails] (
	[projectid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[projectname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[clientid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projectdesc] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projectstartdate] [smalldatetime] NULL ,
	[projectenddate] [smalldatetime] NULL ,
	[projectstatus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[teamid] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[teamsize] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[moduleid] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[modulename] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[developername] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[projectstatus] (
	[projid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projectname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[startdate] [smalldatetime] NULL ,
	[enddate] [smalldatetime] NULL ,
	[projectduration] [int] NULL ,
	[frontend] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[backend] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projectcost] [numeric](18, 0) NULL ,
	[noofmodules] [int] NULL ,
	[pmname] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[registration] (
	[userid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[password] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[firstname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lastname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gender] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dateofbirth] [smalldatetime] NULL ,
	[address] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phoneno] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mobileno] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[emailid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[companyname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[country] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[state] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[designation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[task] (
	[projid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[moduleid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[modulename] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projdesc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[noofdevelopers] [int] NULL ,
	[teamid] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devid1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devid2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devid3] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devid4] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devid5] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devname1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devname2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devname3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devname4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[devname5] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[timesheet] (
	[dt] [smalldatetime] NULL ,
	[developerid] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[developername] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[projname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[modulename] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[startdate] [smalldatetime] NULL ,
	[enddate] [smalldatetime] NULL ,
	[status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

