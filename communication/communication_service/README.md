# azurerm_communication_service

Manages a Communication Service.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Communication Service resource. Changing this forces a new Communication Service to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created. | 
| **var.data_location** | string | False | `United States`  |  `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `United States`  |  The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Communication Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **data_location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Communication Service. | 
| **primary_connection_string** | string  | The primary connection string of the Communication Service. | 
| **secondary_connection_string** | string  | The secondary connection string of the Communication Service. | 
| **primary_key** | string  | The primary key of the Communication Service. | 
| **secondary_key** | string  | The secondary key of the Communication Service. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "communication/communication_service" 
}

inputs = {
   name = "name of communication_service" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```