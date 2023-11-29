# azurerm_automation_credential

Manages a Automation Credential.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Credential. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Credential is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Credential is created. Changing this forces a new resource to be created. | 
| **var.username** | string | True | The username associated with this Automation Credential. | 
| **var.password** | string | True | The password associated with this Automation Credential. | 
| **var.description** | string | False | The description associated with this Automation Credential. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **username** | string  | - | 
| **password** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Automation Credential. | 