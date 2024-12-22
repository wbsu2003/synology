-- Create table AspNetRoles
create table AspNetRoles
(
    Id               varchar(255) not null
        primary key,
    Name             varchar(256) null,
    NormalizedName   varchar(256) null,
    ConcurrencyStamp longtext     null,
    constraint RoleNameIndex
        unique (NormalizedName)
);


-- Create table AspNetUsers
create table AspNetUsers
(
    Id                             varchar(255)           not null
        primary key,
    FirstName                      varchar(40)            null,
    LastName                       varchar(50)            null,
    Name                           varchar(150)           null,
    Email                          varchar(256)           not null,
    ProductId                      longtext               null,
    CustomerId                     longtext               null,
    AccountCreation                datetime(6)            not null,
    ProfilePictureLastUpdated      datetime(6)            not null,
    AccountLastDowngraded          datetime(6)            not null,
    HasProfilePicture              tinyint(1)             not null,
    AiExplanationRequestsMadeToday int                    not null,
    RootFolderId                   char(36) charset ascii not null,
    UserName                       varchar(256)           null,
    NormalizedUserName             varchar(256)           null,
    NormalizedEmail                varchar(256)           null,
    EmailConfirmed                 tinyint(1)             not null,
    PasswordHash                   longtext               null,
    SecurityStamp                  longtext               null,
    ConcurrencyStamp               longtext               null,
    PhoneNumber                    longtext               null,
    PhoneNumberConfirmed           tinyint(1)             not null,
    TwoFactorEnabled               tinyint(1)             not null,
    LockoutEnd                     datetime(6)            null,
    LockoutEnabled                 tinyint(1)             not null,
    AccessFailedCount              int                    not null,
    constraint IX_AspNetUsers_Email
        unique (Email)
);


-- Create table AspNetRoleClaims
CREATE TABLE AspNetRoleClaims (
    Id INT NOT NULL AUTO_INCREMENT,
    RoleId VARCHAR(255) NOT NULL,
    ClaimType LONGTEXT NULL,
    ClaimValue LONGTEXT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (RoleId) REFERENCES AspNetRoles(Id) ON DELETE CASCADE

);


-- Create table AspNetUserClaims
CREATE TABLE AspNetUserClaims (
    Id INT NOT NULL AUTO_INCREMENT,
    UserId VARCHAR(255) NOT NULL,
    ClaimType LONGTEXT NULL,
    ClaimValue LONGTEXT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
);


-- Create table AspNetUserLogins
CREATE TABLE AspNetUserLogins (
    LoginProvider NVARCHAR(450) NOT NULL,
    ProviderKey NVARCHAR(450) NOT NULL,
    ProviderDisplayName LONGTEXT NULL,
    UserId VARCHAR(255) NOT NULL,
    PRIMARY KEY (LoginProvider, ProviderKey),
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
);


-- Create table AspNetUserRoles
CREATE TABLE AspNetUserRoles (
    UserId VARCHAR(255) NOT NULL,
    RoleId VARCHAR(255) NOT NULL,
    PRIMARY KEY (UserId, RoleId),
    FOREIGN KEY (RoleId) REFERENCES AspNetRoles(Id) ON DELETE CASCADE,
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
);


-- Create table AspNetUserTokens
CREATE TABLE AspNetUserTokens (
    UserId VARCHAR(255) NOT NULL,
    LoginProvider VARCHAR(255) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Value LONGTEXT NULL,
    PRIMARY KEY (UserId, LoginProvider, Name),
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
);


-- Create table Folders
CREATE TABLE Folders (
    FolderId VARCHAR(255) NOT NULL PRIMARY KEY,
    Name VARCHAR(5000) NOT NULL,
    Color VARCHAR(500) NOT NULL,
    Icon VARCHAR(500) NOT NULL,
    Description LONGTEXT NULL,
    LastModified VARCHAR(500) NOT NULL,
    IndexInParent INT NOT NULL,
    ParentFolderId VARCHAR(255),
    FOREIGN KEY (ParentFolderId) REFERENCES Folders(FolderId) ON DELETE CASCADE
);


-- Create table User
CREATE TABLE User (
    Id VARCHAR(450) NOT NULL PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(50),
    Name VARCHAR(150),
    Email VARCHAR(50) NOT NULL UNIQUE,
    ProductId VARCHAR(255),
    CustomerId VARCHAR(255),
    AccountCreation DATETIME NOT NULL,
    ProfilePictureLastUpdated DATETIME NOT NULL,
    AccountLastDowngraded DATETIME NOT NULL DEFAULT '9999-12-31 23:59:59',
    HasProfilePicture BOOLEAN NOT NULL,
    AiExplanationRequestsMadeToday INT NOT NULL DEFAULT 0,
    RootFolderId VARCHAR(255),
    FOREIGN KEY (RootFolderId) REFERENCES Folders(FolderId) ON DELETE SET NULL
);


-- Create table Books
CREATE TABLE Books (
    BookId VARCHAR(255) NOT NULL PRIMARY KEY,
    Title VARCHAR(2000) NOT NULL,
    PageCount INT NOT NULL CHECK (PageCount >= 0),
    CurrentPage INT NOT NULL CHECK (CurrentPage >= 0),
    Format VARCHAR(100) NOT NULL,
    Extension VARCHAR(500) NULL,
    Language VARCHAR(100) NULL,
    DocumentSize VARCHAR(60) NOT NULL,
    PagesSize VARCHAR(600) NOT NULL,
    Creator VARCHAR(2000) NULL,
    Authors VARCHAR(2000) NULL,
    CreationDate VARCHAR(140) NULL,
    AddedToLibrary VARCHAR(255) NOT NULL,
    LastOpened VARCHAR(255) NULL,
    LastModified VARCHAR(255) NOT NULL,
    CoverLastModified VARCHAR(255) NOT NULL,
    CoverSize BIGINT NOT NULL DEFAULT 0,
    HasCover BOOLEAN NOT NULL DEFAULT FALSE,
    ProjectGutenbergId INT NOT NULL DEFAULT 0,
    ColorTheme VARCHAR(255) NOT NULL,
    FileHash VARCHAR(255) NOT NULL,
    ParentFolderId VARCHAR(200) NULL,
    UserId VARCHAR(450) NULL,
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id)
);


-- Create table Bookmarks
CREATE TABLE Bookmarks (
    BookmarkId VARCHAR(255) NOT NULL PRIMARY KEY,
    Name VARCHAR(5000) NOT NULL,
    PageNumber INT NOT NULL,
    YOffset FLOAT NOT NULL,
    BookId VARCHAR(255),
    FOREIGN KEY (BookId) REFERENCES Books(BookId) ON DELETE CASCADE
);


-- Create table Highlights
CREATE TABLE Highlights (
    HighlightId VARCHAR(255) NOT NULL PRIMARY KEY,
    Color VARCHAR(500) NOT NULL,
    PageNumber INT NOT NULL,
    BookId VARCHAR(255) NOT NULL,
    FOREIGN KEY (BookId) REFERENCES Books(BookId) ON DELETE CASCADE
);


-- Create table Products
CREATE TABLE Products (
    ProductId VARCHAR(255) NOT NULL PRIMARY KEY,         -- Identificador del producto
    Name VARCHAR(255) NOT NULL,                          -- Nombre del producto
    Description TEXT NOT NULL,                           -- Descripción del producto
    Price INT NOT NULL,                                  -- Precio del producto
    PriceId VARCHAR(255),                                -- ID del precio, opcional
    BookStorageLimit BIGINT NOT NULL,                    -- Límite de almacenamiento
    AiRequestLimit INT NOT NULL,                         -- Límite de solicitudes de AI
    LiveMode BOOLEAN NOT NULL DEFAULT TRUE               -- Indica si está en modo activo
);


-- Create table ProductFeature
CREATE TABLE ProductFeature (
    ProductFeatureId VARCHAR(255) NOT NULL PRIMARY KEY,    -- Usando VARCHAR(255) para almacenar GUID
    Name VARCHAR(255) NOT NULL,                           -- Nombre de la característica
    ProductId VARCHAR(255),                               -- ID del producto asociado, suponiendo que es un VARCHAR
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId) ON DELETE CASCADE -- Clave foránea hacia Product
);


-- Create table RectF
CREATE TABLE RectF (
    RectFId VARCHAR(255) NOT NULL PRIMARY KEY,     -- Usando VARCHAR(255) para almacenar GUID
    X FLOAT NOT NULL,                            -- Coordenada X del rectángulo
    Y FLOAT NOT NULL,                            -- Coordenada Y del rectángulo
    Width FLOAT NOT NULL,                        -- Ancho del rectángulo
    Height FLOAT NOT NULL,                       -- Alto del rectángulo
    HighlightId VARCHAR(255),                      -- ID del Highlight asociado
    FOREIGN KEY (HighlightId) REFERENCES Highlights(HighlightId) ON DELETE CASCADE -- Clave foránea a Highlight
);

-- Create table Tags
CREATE TABLE Tags (
    TagId VARCHAR(255) NOT NULL PRIMARY KEY,
    Name VARCHAR(5000) NOT NULL,
    CreationDate DATETIME NOT NULL,
    UserId VARCHAR(450),
    BookId VARCHAR(255) NOT NULL,  -- Asumiendo que TagId ya existe
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE,
    FOREIGN KEY (BookId) REFERENCES Books(BookId) ON DELETE CASCADE,
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
) ;

-- Create dummy product
INSERT INTO Products (ProductId, Name, Description, Price, PriceId, BookStorageLimit, AiRequestLimit, LiveMode) VALUES ('1', 'Selfhosted', 'Self hosted plan', 0, '0', 1000000, 1000000, 1);


-- This needs to be executed after initialize the application because the Admin account is needed.
UPDATE AspNetUsers SET ProductId=1 WHERE Name like 'Admin';