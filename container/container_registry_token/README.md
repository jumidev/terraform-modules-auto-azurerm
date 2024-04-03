# azurerm_container_registry_token



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry_token"   
}
inputs = {
   name = "Specifies the name of the token"   
   resource_group_name = "${resource_group}"   
   # container_registry_name → set in component_inputs
   scope_map_id = "The ID of the Container Registry Scope Map associated with the token..."   
}
component_inputs = {
   container_registry_name = "path/to/container_registry_component:name"   
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
| **name** | string |  Specifies the name of the token. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created. | 
| **container_registry_name** | string |  The name of the Container Registry. Changing this forces a new resource to be created. | 
| **scope_map_id** | string |  The ID of the Container Registry Scope Map associated with the token. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Should the Container Registry token be enabled? Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry token. | 

Additionally, all variables are provided as outputs.
