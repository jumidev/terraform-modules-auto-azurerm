# azurerm_automation_connection_certificate

Manages an Automation Connection with type `Azure`.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.automation_certificate_name** | string | True | -  |  -  | The name of the automation certificate. | 
| **var.subscription_id** | string | True | -  |  -  | The id of subscription where the automation certificate exists. | 
| **var.description** | string | False | -  |  -  | A description for this Connection. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **automation_certificate_name** | string  | - | 
| **subscription_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The Automation Connection ID. | 