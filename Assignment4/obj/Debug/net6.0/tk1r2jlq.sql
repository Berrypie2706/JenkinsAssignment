IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Movies] (
    [MovieId] int NOT NULL IDENTITY,
    [MovieName] nvarchar(max) NOT NULL,
    [MovieDescription] nvarchar(max) NOT NULL,
    [MovieGenre] nvarchar(max) NOT NULL,
    [MovieReleaseDate] datetime2 NOT NULL,
    CONSTRAINT [PK_Movies] PRIMARY KEY ([MovieId])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230914101934_Moviesmig', N'7.0.11');
GO

COMMIT;
GO

