# azurerm_communication_service

Manages a Communication Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Communication Service resource. Changing this forces a new Communication Service to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created. | 
| **data_location** | string | False | `United States`  |  `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `United States`  | The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Communication Service. | 

