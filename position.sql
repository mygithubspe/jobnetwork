USE [sss]
GO

/****** Object:  Table [dbo].[position]    Script Date: 06/28/2016 14:24:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[position](
	[pos_id] [int] IDENTITY(1,1) NOT NULL,
	[com_name] [nvarchar](max) NOT NULL,
	[pos_name] [nvarchar](50) NOT NULL,
	[pos_type] [nvarchar](50) NOT NULL,
	[section] [nvarchar](50) NOT NULL,
	[property] [nvarchar](50) NOT NULL,
	[salary] [nvarchar](50) NOT NULL,
	[experience] [nvarchar](50) NOT NULL,
	[education] [nvarchar](50) NOT NULL,
	[area] [nvarchar](50) NOT NULL,
	[pos_des] [nvarchar](max) NOT NULL,
	[pos_demand] [nvarchar](max) NOT NULL,
	[linkman] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[time] [date] NOT NULL,
 CONSTRAINT [PK_position] PRIMARY KEY CLUSTERED 
(
	[pos_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

