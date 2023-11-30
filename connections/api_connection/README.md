# azurerm_api_connection

Manages an API Connection.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "connections/api_connection" 
}

inputs = {
   managed_api_id = "managed_api_id of api_connection" 
   name = "name of api_connection" 
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
| **var.managed_api_id** | string |  The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created. | 
| **var.name** | string |  The Name which should be used for this API Connection. Changing this forces a new API Connection to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.display_name** | string |  A display name for this API Connection. Changing this forces a new API Connection to be created. | 
| **var.parameter_values** | string |  A map of parameter values associated with this API Connection. Changing this forces a new API Connection to be created. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the API Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Connection. | 

Additionally, all variables are provided as outputs.
