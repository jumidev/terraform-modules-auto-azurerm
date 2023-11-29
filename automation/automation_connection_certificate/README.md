# azurerm_automation_connection_certificate

Manages an Automation Connection with type `Azure`.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_certificate_name** | string | True | -  |  -  | The name of the automation certificate. | 
| **subscription_id** | string | True | -  |  -  | The id of subscription where the automation certificate exists. | 
| **description** | string | False | -  |  -  | A description for this Connection. | 

