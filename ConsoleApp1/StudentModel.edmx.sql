
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/25/2019 14:45:02
-- Generated from EDMX file: D:\Users\dat\Source\Repos\ConsoleApp1\ConsoleApp1\StudentModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MyApp];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SchoolStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_SchoolStudent];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Students]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Students];
GO
IF OBJECT_ID(N'[dbo].[Classes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Classes];
GO
IF OBJECT_ID(N'[dbo].[Schools]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Schools];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [SchoolId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Classes'
CREATE TABLE [dbo].[Classes] (
    [Id] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Schools'
CREATE TABLE [dbo].[Schools] (
    [Id] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [PK_Classes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Schools'
ALTER TABLE [dbo].[Schools]
ADD CONSTRAINT [PK_Schools]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SchoolId] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_SchoolStudent]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[Schools]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolStudent'
CREATE INDEX [IX_FK_SchoolStudent]
ON [dbo].[Students]
    ([SchoolId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------