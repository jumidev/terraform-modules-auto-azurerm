# azurerm_email_communication_service

Manages an Email Communication Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created. | 
| **data_location** | string | True | -  |  `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `United States`  | The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` and `United States`. Changing this forces a new Email Communication Service to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Email Communication Service. | 

