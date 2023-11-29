# azurerm_automation_credential

Manages a Automation Credential.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Credential. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Credential is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Credential is created. Changing this forces a new resource to be created. | 
| **username** | string | True | -  |  -  | The username associated with this Automation Credential. | 
| **password** | string | True | -  |  -  | The password associated with this Automation Credential. | 
| **description** | string | False | -  |  -  | The description associated with this Automation Credential. | 

