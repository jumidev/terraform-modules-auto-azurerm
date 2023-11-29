# azurerm_automation_variable_int

Manages a integer variable in Azure Automation

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Automation Variable. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Variable is created. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | The description of the Automation Variable. | 
| **encrypted** | bool | False | `False`  |  -  | Specifies if the Automation Variable is encrypted. Defaults to `false`. | 
| **value** | string | False | -  |  -  | The value of the Automation Variable as a `integer`. | 

