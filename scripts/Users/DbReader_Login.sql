USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [DbReader]    Script Date: 6/3/2018 1:19:00 PM ******/
CREATE LOGIN [DbReader] WITH PASSWORD=N'CtFLx0r96bk7gcTOXx/k8o8jwK125aIbcpXU4DO/Hrw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [DbReader] DISABLE
GO

