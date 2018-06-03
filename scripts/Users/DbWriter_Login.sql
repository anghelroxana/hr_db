USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [DbWriter]    Script Date: 6/3/2018 1:35:39 PM ******/
CREATE LOGIN [DbWriter] WITH PASSWORD=N'Qo56iR2xvipudUjgeCaoiwv+oZx2sHYJYH0i3kDYxn0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO

ALTER LOGIN [DbWriter] DISABLE
GO


