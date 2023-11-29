# azurerm_email_communication_service

Manages an Email Communication Service.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created. | 
| **var.data_location** | string | True | `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `United States`  |  The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` and `United States`. Changing this forces a new Email Communication Service to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Email Communication Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **data_location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Email Communication Service. | 