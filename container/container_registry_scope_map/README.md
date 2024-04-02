# azurerm_container_registry_scope_map



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry_scope_map"   
}

inputs = {
   name = "Specifies the name of the scope map"   
   resource_group_name = "${resource_group}"   
   # container_registry_name → set in component_inputs
   actions = "A list of actions to attach to the scope map (e"   
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
| **name** | string |  Specifies the name of the scope map. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created. | 
| **container_registry_name** | string |  The name of the Container Registry. Changing this forces a new resource to be created. | 
| **actions** | list |  A list of actions to attach to the scope map (e.g. `repo/content/read`, `repo2/content/delete`). | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description of the Container Registry. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry scope map. | 

Additionally, all variables are provided as outputs.
