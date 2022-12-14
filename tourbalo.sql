CREATE DATABASE [tourbalo]
USE [tourbalo]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 11/24/2022 11:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[tour_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[book_date] [datetime] NULL,
 CONSTRAINT [pk_booking] PRIMARY KEY CLUSTERED 
(
	[tour_id] ASC,
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 11/24/2022 11:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[phone] [nvarchar](20) NULL,
	[email] [nvarchar](150) NULL,
	[point] [int] NULL,
 CONSTRAINT [pk_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[places]    Script Date: 11/24/2022 11:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[places](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[place_name] [nvarchar](100) NULL,
	[address] [nvarchar](200) NULL,
 CONSTRAINT [pk_places] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tour]    Script Date: 11/24/2022 11:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[place_id] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[price] [float] NULL,
 CONSTRAINT [pk_tour] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customer] ADD  DEFAULT ((0)) FOR [point]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [fk_booking_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [fk_booking_customer]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [fk_booking_tour] FOREIGN KEY([tour_id])
REFERENCES [dbo].[tour] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [fk_booking_tour]
GO
ALTER TABLE [dbo].[tour]  WITH CHECK ADD  CONSTRAINT [fk_tour_places] FOREIGN KEY([place_id])
REFERENCES [dbo].[places] ([id])
GO
ALTER TABLE [dbo].[tour] CHECK CONSTRAINT [fk_tour_places]
GO
