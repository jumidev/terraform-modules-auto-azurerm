# azurerm_storage_container

Manages a Container within an Azure Storage Account.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string | True | -  |  -  |  The name of the Storage Account where the Container should be created. Changing this forces a new resource to be created. | 
| **var.container_access_type** | string | False | `private`  |  `blob`, `container`, `private`  |  The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`. | 
| **var.metadata** | string | False | -  |  -  |  A mapping of MetaData for this Container. All metadata keys should be lowercase. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_account_name** | string  | - | 
| **container_access_type** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Storage Container. | 
| **has_immutability_policy** | string  | Is there an Immutability Policy configured on this Storage Container? | 
| **has_legal_hold** | string  | Is there a Legal Hold configured on this Storage Container? | 
| **resource_manager_id** | string  | The Resource Manager ID of this Storage Container. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_container" 
}

inputs = {
   name = "name of storage_container" 
   storage_account_name = "storage_account_name of storage_container" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```