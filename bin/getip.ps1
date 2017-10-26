Copy-Item -Path C:\concourse-worker\common-files\* -Destination . -Recurse -Verbose -Force
Get-ChildItem -Recurse | Unblock-File -Verbose
.\tools\AddAzureRmAccount.ps1
.\AzureAutomationManager.ps1 -runtests -Distro SS1604EHPC -cycleName RDMAMultiVM -xmlConfigFile Azure_ICA_all_run-CloudTestAutoBuilds-3427.xml -OverrideVMSize Standard_A8 -ImageType Standard -UseAzureResourceManager
