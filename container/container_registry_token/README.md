# azurerm_container_registry_token

Manages an Azure Container Registry token. Tokens are a preview feature only available in Premium SKU Container registries.```hclresource "azurerm_resource_group" "example" {name     = "example-resource-group"location = "West Europe"}resource "azurerm_container_registry" "example" {name                = "example"resource_group_name = azurerm_resource_group.example.namelocation            = azurerm_resource_group.example.locationsku                 = "Premium"admin_enabled       = falsegeoreplications {location = "East US"}georeplications {location = "West Europe"}}resource "azurerm_container_registry_scope_map" "example" {name                    = "example-scope-map"container_registry_name = azurerm_container_registry.example.nameresource_group_name     = azurerm_resource_group.example.nameactions = ["repositories/repo1/content/read","repositories/repo1/content/write"]}resource "azurerm_container_registry_token" "example" {name                    = "exampletoken"container_registry_name = azurerm_container_registry.example.nameresource_group_name     = azurerm_resource_group.example.namescope_map_id            = azurerm_container_registry_scope_map.example.id}```

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_registry_token" 
}

inputs = {
   name = "name of container_registry_token" 
   resource_group_name = "${resource_group}" 
   container_registry_name = "container_registry_name of container_registry_token" 
   scope_map_id = "scope_map_id of container_registry_token" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the token. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created. | 
| **var.container_registry_name** | string | True | -  |  The name of the Container Registry. Changing this forces a new resource to be created. | 
| **var.scope_map_id** | string | True | -  |  The ID of the Container Registry Scope Map associated with the token. | 
| **var.enabled** | bool | False | `True`  |  Should the Container Registry token be enabled? Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry token. | 

Additionally, all variables are provided as outputs.
