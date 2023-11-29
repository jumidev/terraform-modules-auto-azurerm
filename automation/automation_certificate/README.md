# azurerm_automation_certificate

Manages an Automation Certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Certificate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created. | 
| **base64** | string | True | -  |  -  | Base64 encoded value of the certificate. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | The description of this Automation Certificate. | 
| **exportable** | string | False | -  |  -  | The is exportable flag of the certificate. | 

