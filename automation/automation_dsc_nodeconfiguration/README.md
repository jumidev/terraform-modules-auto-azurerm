# azurerm_automation_dsc_nodeconfiguration

Manages a Automation DSC Node Configuration.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created. | 
| **var.content_embedded** | string | True | The PowerShell DSC Node Configuration (mof content). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **content_embedded** | string  | - | 
| **id** | string  | The DSC Node Configuration ID. | 