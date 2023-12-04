# azurerm_container_registry_scope_map

Manages an Azure Container Registry scope map.  Scope Maps are a preview feature only available in Premium SKU Container registries.```hclresource "azurerm_resource_group" "example" {name     = "example-resource-group"location = "West Europe"}resource "azurerm_container_registry" "example" {name                = "exampleregistry"resource_group_name = azurerm_resource_group.example.namelocation            = azurerm_resource_group.example.locationsku                 = "Premium"admin_enabled       = falsegeoreplications {location = "East US"}georeplications {location = "West Europe"}}resource "azurerm_container_registry_scope_map" "example" {name                    = "example-scope-map"container_registry_name = azurerm_container_registry.example.nameresource_group_name     = azurerm_resource_group.example.nameactions = ["repositories/repo1/content/read","repositories/repo1/content/write"]}```

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_registry_scope_map" 
}

inputs = {
   name = "name of container_registry_scope_map" 
   resource_group_name = "${resource_group}" 
   # container_registry_name → set in tfstate_inputs
   actions = "actions of container_registry_scope_map" 
}

tfstate_inputs = {
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
