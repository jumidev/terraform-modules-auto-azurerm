# azurerm_media_content_key_policy

Manages a Content Key Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Content Key Policy to be created. | 
| **var.name** | string | True | The name which should be used for this Content Key Policy. Changing this forces a new Content Key Policy to be created. | 
| **var.policy_option** | block | True | One or more `policy_option` blocks. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Content Key Policy should exist. Changing this forces a new Content Key Policy to be created. | 
| **var.description** | string | False | A description for the Policy. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **media_services_account_name** | string  | - | 
| **name** | string  | - | 
| **policy_option** | block  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Content Key Policy. | 