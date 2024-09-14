# Enable necessary Windows features for WSL and Virtual Machine Platform

# Function to check if a Windows feature is installed
function Is-FeatureInstalled {
    param (
        [string]$featureName
    )

    $feature = Get-WindowsOptionalFeature -FeatureName $featureName -Online
    return $feature.State -eq 'Enabled'
}

# Check if "Virtual Machine Platform" or "Windows Subsystem for Linux" are installed
$vmPlatformFeature = "VirtualMachinePlatform"
$wslFeature = "Microsoft-Windows-Subsystem-Linux"
if (-not (Is-FeatureInstalled $vmPlatformFeature) -or -not (Is-FeatureInstalled $wslFeature)) {
    exit 1
} else {
    Write-Output "Windows Subsystem for Linux components are already installed."
    exit 0
}
