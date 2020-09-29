# Script to address any current issues with images that could be easily worked around.
$ErrorActionPreference="Stop"

# Remove 3 registry settings that are left behind when sysprepping. Having those registry settings together with a 
# race condition that kicks in when trying to run custom scripts extensions and stops us from reimaging machines.
# ICM: https://portal.microsofticm.com/imp/v3/incidents/details/191973270/home
Remove-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Azure\HandlerState' -Name 'Incarnation' -Force  -ErrorAction Ignore
Remove-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Azure\HandlerState' -Name 'InVmSvdSeqNo' -Force  -ErrorAction Ignore
Remove-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Azure\HandlerState' -Name 'LastGoalStateMethod' -Force  -ErrorAction Ignore
