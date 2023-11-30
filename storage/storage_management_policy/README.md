# azurerm_storage_management_policy

Manages an Azure Storage Account Management Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.storage_account_id** | string | True | Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created. | 
| **var.rule** | block | False | A `rule` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **storage_account_id** | string  | - | 
| **rule** | block  | - | 
| **id** | string  | The ID of the Storage Account Management Policy. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_management_policy" 
}

inputs = {
   storage_account_id = "storage_account_id of storage_management_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```