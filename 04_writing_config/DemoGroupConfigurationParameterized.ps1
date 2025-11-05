Configuration DemoGroupConfiguration 
{
    param (
        [Parameter(Mandatory)]
        [String]
        $GroupName,
        [Parameter(Mandatory)]
        [String]
        $Description,
        [Parameter()]
        [String[]] $Nodes = 'localhost'
    )
    Import-DscResource -ModuleName PSDscResources
    Node $Nodes
    {
         DemoGroup {
            GroupName   = $GroupName
            Description = $Description
            Ensure      = 'Present'
        }
    } 
} 

DemoGroupConfiguration -OutputPath C:\DemoGroupConfiguration `
-GroupName 'DemoGroup' `
-Description 'Demo Group' `
-Nodes 'S16-01', 'S16-02'