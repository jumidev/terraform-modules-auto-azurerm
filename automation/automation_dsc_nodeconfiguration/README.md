# azurerm_automation_dsc_nodeconfiguration

Manages a Automation DSC Node Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created. | 
| **content_embedded** | string | True | -  |  -  | The PowerShell DSC Node Configuration (mof content). | 

