Configuration FileCopyConfiguration
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node ACR-30122014
    {
        <# What goes inside the Node script block or the configuration script block directly 
        (in the absence of the Node keyword) is a set of resource instance definitions. 
        below, use the File resource which comes in-box with PowerShell DSC. 

        While the DSC configuration documents offer a declarative method to define 
        the resource configurations, the resource modules are the imperative scripts 
        that work behind the scenes to enact the resource instance configuration or make it so.
        #>
        File FileCopyInstance1 {
            DestinationPath = 'C:\dsc_scripts\build.tag'
            type            = 'File'
            Contents        = 'Version:1.0.0.0'
            Ensure          = 'Present'
        }
    }
}

# How to create MOF file
# execute in memory, see 
# FileCopyConfiguration -OutputPath ./configurations/ -Verbose