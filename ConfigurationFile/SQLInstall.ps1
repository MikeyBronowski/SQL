# Create folders
New-Item -Path 'C:\Default' -ItemType Directory
New-Item -Path 'C:\Default\SQLBackups' -ItemType Directory
New-Item -Path 'C:\Default\Log_UserDB' -ItemType Directory
New-Item -Path 'C:\Default\Data_UserDB' -ItemType Directory
New-Item -Path 'C:\Default\TempDB' -ItemType Directory


# Run the install
D:\setup.exe /IAcceptSQLServerLicenseTerms /CONFIGURATIONFILE="C:\SQLInstall\ConfigurationFile.ini" /SAPWD="follow-the-magic-carrot"
