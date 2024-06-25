# azurerm_container_registry_cache_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry_cache_rule"   
}
inputs = {
   name = "Specifies the name of the Container Registry Cache Rule..."   
   # container_registry_id → set in component_inputs
   source_repo = "The name of the source repository path"   
   target_repo = "The name of the new repository path to store artifacts..."   
}
component_inputs = {
   container_registry_id = "path/to/container_registry_component:id"   
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
| **name** | string |  Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **container_registry_id** | string |  The ID of the Container Registry where the Cache Rule should apply. Changing this forces a new resource to be created. | 
| **source_repo** | string |  The name of the source repository path. Changing this forces a new resource to be created. | 
| **target_repo** | string |  The name of the new repository path to store artifacts. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **credential_set_id** | string |  The ARM resource ID of the Credential Store which is associated with the Cache Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **credential_set_id** | string | No  | The ARM resource ID of the Credential Store which is associated with the Cache Rule. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container Registry Cache Rule. | 

Additionally, all variables are provided as outputs.
