select * 
from msdb.dbo.sysmail_profileaccount PA
JOIN msdb.dbo.sysmail_principalprofile PP on PP.profile_id = PA.profile_id
JOIN msdb.dbo.sysmail_profile P on P.profile_id = PA.profile_id
JOIN msdb.dbo.sysmail_account A on A.account_id = PA.account_id;