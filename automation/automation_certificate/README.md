# azurerm_automation_certificate

Manages an Automation Certificate.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Certificate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created. | 
| **var.base64** | string | True | Base64 encoded value of the certificate. Changing this forces a new resource to be created. | 
| **var.description** | string | False | The description of this Automation Certificate. | 
| **var.exportable** | string | False | The is exportable flag of the certificate. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **base64** | string  | - | 
| **description** | string  | - | 
| **exportable** | string  | - | 
| **id** | string  | The Automation Certificate ID. | 
| **thumbprint** | string  | The thumbprint for the certificate. | 