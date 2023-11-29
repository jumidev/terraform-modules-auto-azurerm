# azurerm_automation_dsc_configuration

Manages a Automation DSC Configuration.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the DSC Configuration. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | -  |  -  | The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created. | 
| **var.content_embedded** | string | True | -  |  -  | The PowerShell DSC Configuration script. | 
| **var.location** | string | True | -  |  -  | Must be the same location as the Automation Account. Changing this forces a new resource to be created. | 
| **var.log_verbose** | string | False | -  |  -  | Verbose log option. | 
| **var.description** | string | False | -  |  -  | Description to go with DSC Configuration. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **content_embedded** | string  | - | 
| **location** | string  | - | 
| **log_verbose** | string  | - | 
| **description** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Automation DSC Configuration. | 