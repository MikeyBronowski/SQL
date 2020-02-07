# PowerShell script to retrieve SQL Server Information from the registry
$AllSqlReg = "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server"
$InstalledInstances = (get-itemproperty $AllSqlReg).InstalledInstances
foreach ($InstanceName in $InstalledInstances)
{
       $in = (Get-ItemProperty "$AllSqlReg\Instance Names\SQL").$InstanceName
       $SqlReg = $AllSqlReg+"\"+$in
       $keys = @('MSSQLServer','SQLServerAgent')
       foreach ($key in $keys)
       {
         $KeyValue = $SqlReg+'\\'+$key
         $KeyValue
        (Get-ItemProperty "$KeyValue")
       }
       #(Get-ItemProperty "$SqlReg\\MSSQLServer")
       #(Get-ItemProperty "$SqlReg\\SQLServerAgent")
}