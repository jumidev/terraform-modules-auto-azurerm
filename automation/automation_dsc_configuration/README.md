# azurerm_automation_dsc_configuration

Manages a Automation DSC Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the DSC Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created. | 
| **content_embedded** | string | True | -  |  -  | The PowerShell DSC Configuration script. | 
| **location** | string | True | -  |  -  | Must be the same location as the Automation Account. Changing this forces a new resource to be created. | 
| **log_verbose** | string | False | -  |  -  | Verbose log option. | 
| **description** | string | False | -  |  -  | Description to go with DSC Configuration. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

