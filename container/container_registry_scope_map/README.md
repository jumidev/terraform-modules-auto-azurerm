# azurerm_container_registry_scope_map

Manages an Azure Container Registry scope map.  Scope Maps are a preview feature only available in Premium SKU Container registries.```hclresource "azurerm_resource_group" "example" {name     = "example-resource-group"location = "West Europe"}resource "azurerm_container_registry" "example" {name                = "exampleregistry"resource_group_name = azurerm_resource_group.example.namelocation            = azurerm_resource_group.example.locationsku                 = "Premium"admin_enabled       = falsegeoreplications {location = "East US"}georeplications {location = "West Europe"}}resource "azurerm_container_registry_scope_map" "example" {name                    = "example-scope-map"container_registry_name = azurerm_container_registry.example.nameresource_group_name     = azurerm_resource_group.example.nameactions = ["repositories/repo1/content/read","repositories/repo1/content/write"]}```

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the scope map. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created. | 
| **container_registry_name** | string | True | -  |  -  | The name of the Container Registry. Changing this forces a new resource to be created. | 
| **actions** | list | True | -  |  -  | A list of actions to attach to the scope map (e.g. `repo/content/read`, `repo2/content/delete`). | 
| **description** | string | False | -  |  -  | The description of the Container Registry. | 

