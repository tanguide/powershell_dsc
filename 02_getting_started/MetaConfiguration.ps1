[DscLocalConfigurationManager()]
Configuration metaConfiguration
{
    Node ACR-30122014
    {
        Settings {
            ConfigurationModeFrequencyMins = 30
            ConfigurationMode              = 'ApplyAndAutoCorrect'
        }
    }
}

# node confiuration e.g. FileCopyConfiguration
# LCM configuration e.g. metaConfiguration
<# 
Defaults
PS C:\Windows\system32> Get-DscLocalConfigurationManager

ActionAfterReboot              : ContinueConfiguration
AgentId                        : 0A70B837-A28D-11F0-8071-C4CB76B63436
AllowModuleOverWrite           : False
CertificateID                  :
ConfigurationDownloadManagers  : {}
ConfigurationID                :
ConfigurationMode              : ApplyAndMonitor
ConfigurationModeFrequencyMins : 15
Credential                     :
DebugMode                      : {NONE}
DownloadManagerCustomData      :
DownloadManagerName            :
LCMCompatibleVersions          : {1.0, 2.0}
LCMState                       : Idle
LCMStateDetail                 :
LCMVersion                     : 2.0
StatusRetentionTimeInDays      : 10
SignatureValidationPolicy      : NONE
SignatureValidations           : {}
MaximumDownloadSizeMB          : 500
PartialConfigurations          :
RebootNodeIfNeeded             : False
RefreshFrequencyMins           : 30
RefreshMode                    : PUSH
ReportManagers                 : {}
ResourceModuleManagers         : {}
PSComputerName                 :
#>