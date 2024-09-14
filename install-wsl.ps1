# Enable necessary Windows features for WSL and Virtual Machine Platform

Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -NoRestart
