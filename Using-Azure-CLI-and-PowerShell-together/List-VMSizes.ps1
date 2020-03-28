function List-VMSizes {
    param (
        [string]$RGName
    )

    begin {
        $az = az account show
        if(-not($az)) {
            Write-Warning 'No Azure account is signed in. Please run az login at a PowerShell Core prompt to log into Azure with aZ CLI'
            exit
        }
    }

    process {
        $vms = az vm list -g $RGName | ConvertFrom-Json | select name, HardwareProfile
        $vms
        
        }

    end {

    }
}