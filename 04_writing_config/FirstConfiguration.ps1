Configuration FirstConfiguration 
{
    Import-DscResource -ModuleName PSDscResources
    Node localhost
    {
        Archive FirstArchiveConfiguration {
            Path        = 'C:\Users\guide\code\powershell_dsc\powershell_dsc\04_writing_config\test.zip'
            Destination = 'C:\Users\guide\code\powershell_dsc\powershell_dsc\04_writing_config\Demo'
            Ensure      = 'Present'
        }
    } 
}

# Execute this file first
# run FirstConfiguration -OutputPath ./ouput/ -Verbose

