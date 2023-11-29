# azurerm_media_content_key_policy

Manages a Content Key Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Content Key Policy to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Content Key Policy. Changing this forces a new Content Key Policy to be created. | 
| **policy_option** | block | True | -  |  -  | One or more `policy_option` blocks. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Content Key Policy should exist. Changing this forces a new Content Key Policy to be created. | 
| **description** | string | False | -  |  -  | A description for the Policy. | 

