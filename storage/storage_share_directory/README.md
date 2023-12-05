# azurerm_storage_share_directory

Manages a Directory within an Azure Storage File Share.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_share_directory"   
}

inputs = {
   name = "The name (or path) of the Directory that should be created within this File Shar..."   
   share_name = "The name of the File Share where this Directory should be created..."   
   # storage_account_name → set in tfstate_inputs
}

tfstate_inputs = {
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
| **name** | string |  The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created. | 
| **share_name** | string |  The name of the File Share where this Directory should be created. Changing this forces a new resource to be created. | 
| **storage_account_name** | string |  The name of the Storage Account within which the File Share is located. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  A mapping of metadata to assign to this Directory. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Directory within the File Share. | 

Additionally, all variables are provided as outputs.
