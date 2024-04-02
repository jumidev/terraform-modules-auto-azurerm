# azurerm_storage_container



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_container"   
}

inputs = {
   name = "The name of the Container which should be created within the Storage Account..."   
   # storage_account_name → set in component_inputs
}

component_inputs = {
   storage_account_name = "path/to/storage_account_component:name"   
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
| **name** | string |  The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created. | 
| **storage_account_name** | string |  The name of the Storage Account where the Container should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **container_access_type** | string |  `private`  |  `blob`, `container`, `private`  |  The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`. | 
| **metadata** | string |  -  |  -  |  A mapping of MetaData for this Container. All metadata keys should be lowercase. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **metadata** | string | No  | A mapping of MetaData for this Container. All metadata keys should be lowercase. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Storage Container. | 
| **has_immutability_policy** | bool | No  | Is there an Immutability Policy configured on this Storage Container? | 
| **has_legal_hold** | bool | No  | Is there a Legal Hold configured on this Storage Container? | 
| **resource_manager_id** | string | No  | The Resource Manager ID of this Storage Container. | 

Additionally, all variables are provided as outputs.
