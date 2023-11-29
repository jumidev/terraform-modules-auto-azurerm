# azurerm_container_registry_token

Manages an Azure Container Registry token. Tokens are a preview feature only available in Premium SKU Container registries.```hclresource "azurerm_resource_group" "example" {name     = "example-resource-group"location = "West Europe"}resource "azurerm_container_registry" "example" {name                = "example"resource_group_name = azurerm_resource_group.example.namelocation            = azurerm_resource_group.example.locationsku                 = "Premium"admin_enabled       = falsegeoreplications {location = "East US"}georeplications {location = "West Europe"}}resource "azurerm_container_registry_scope_map" "example" {name                    = "example-scope-map"container_registry_name = azurerm_container_registry.example.nameresource_group_name     = azurerm_resource_group.example.nameactions = ["repositories/repo1/content/read","repositories/repo1/content/write"]}resource "azurerm_container_registry_token" "example" {name                    = "exampletoken"container_registry_name = azurerm_container_registry.example.nameresource_group_name     = azurerm_resource_group.example.namescope_map_id            = azurerm_container_registry_scope_map.example.id}```

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the token. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created. | 
| **var.container_registry_name** | string | True | -  |  -  | The name of the Container Registry. Changing this forces a new resource to be created. | 
| **var.scope_map_id** | string | True | -  |  -  | The ID of the Container Registry Scope Map associated with the token. | 
| **var.enabled** | bool | False | `True`  |  -  | Should the Container Registry token be enabled? Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **container_registry_name** | string  | - | 
| **scope_map_id** | string  | - | 
| **enabled** | bool  | - | 
| **id** | string  | The ID of the Container Registry token. | 