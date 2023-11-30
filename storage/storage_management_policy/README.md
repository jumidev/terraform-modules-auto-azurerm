# azurerm_storage_management_policy

Manages an Azure Storage Account Management Policy.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.storage_account_id** | string | True | Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created. | 
| **var.rule** | block | False | A `rule` block. | 

### `rule` block structure

> `name` (string): (REQUIRED) The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
> `enabled` (bool): (REQUIRED) Boolean to specify whether the rule is enabled.
> `filters` (block): (REQUIRED) A 'filters' block.
> `actions` (block): (REQUIRED) An 'actions' block.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account Management Policy. | 

Additionally, all variables are provided as outputs.
