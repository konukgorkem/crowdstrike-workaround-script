### crowdstrike-workaround-script

# What is it?
Changes the extension of the sys files in the drivers/crowdstrike path as suggested in the reddit link for quick fix.

# Orginal link about workaround
https://www.reddit.com/r/crowdstrike/comments/1e6vmkf/bsod_error_in_latest_crowdstrike_update/

# Details and Usage
There are two .bat files which one of them (MakeBackup.bat) changes .sys extension to .backup1 extension of every file starting with "c-00000291" and other one (ChangeToSys.bat) just reverses the changes if unexpected results occur. So, use ChangeToSys.bat if it is necessary.
