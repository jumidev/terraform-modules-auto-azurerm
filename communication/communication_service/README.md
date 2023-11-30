# azurerm_communication_service

Manages a Communication Service.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name of the Communication Service resource. Changing this forces a new Communication Service to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.data_location** | string |  `United States`  |  `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `United States`  |  The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Communication Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Communication Service. | 
| **primary_connection_string** | string | No  | The primary connection string of the Communication Service. | 
| **secondary_connection_string** | string | No  | The secondary connection string of the Communication Service. | 
| **primary_key** | string | No  | The primary key of the Communication Service. | 
| **secondary_key** | string | No  | The secondary key of the Communication Service. | 

Additionally, all variables are provided as outputs.
