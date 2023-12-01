# azurerm_storage_management_policy

Manages an Azure Storage Account Management Policy.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.storage_account_id** | string |  Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.rule** | [block](#rule-block-structure) |  A `rule` block. | 

### `match_blob_index_tag` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operation` | string | No | == | The comparison operator which is used for object comparison and filtering. Possible value is '=='. Defaults to '=='. |
| `value` | string | Yes | - | The filter tag value used for tag based filtering for blob objects. |

### `version` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `change_tier_to_archive_after_days_since_creation` | int | No | -1 | The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_archive_after_days_since_last_tier_change_greater_than` | int | No | -1 | The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to '-1'. |
| `change_tier_to_cool_after_days_since_creation` | int | No | -1 | The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_cold_after_days_since_creation_greater_than` | int | No | -1 | The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'. |
| `delete_after_days_since_creation` | int | No | -1 | The age in days after creation to delete the blob version. Must be between 0 and 99999. Defaults to '-1'. |

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Boolean to specify whether the rule is enabled. |
| `filters` | [block](#rule-block-structure) | Yes | - | A 'filters' block. |
| `actions` | [block](#rule-block-structure) | Yes | - | An 'actions' block. |

### `snapshot` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `change_tier_to_archive_after_days_since_creation` | int | No | -1 | The age in days after creation to tier blob snapshot to archive storage. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_archive_after_days_since_last_tier_change_greater_than` | int | No | -1 | The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to '-1'. |
| `change_tier_to_cool_after_days_since_creation` | int | No | -1 | The age in days after creation to tier blob snapshot to cool storage. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_cold_after_days_since_creation_greater_than` | int | No | -1 | The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'. |
| `delete_after_days_since_creation_greater_than` | int | No | -1 | The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to '-1'. |

### `actions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `base_blob` | [block](#actions-block-structure) | No | - | A 'base_blob' block. |
| `snapshot` | [block](#actions-block-structure) | No | - | A 'snapshot' block. |
| `version` | [block](#actions-block-structure) | No | - | A 'version' block. |

### `base_blob` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier_to_cool_after_days_since_modification_greater_than` | int | No | -1 | The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_cool_after_days_since_last_access_time_greater_than` | int | No | -1 | The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'. |
| `tier_to_cool_after_days_since_creation_greater_than` | int | No | -1 | The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'. |
| `auto_tier_to_hot_from_cool_enabled` | bool | No | False | Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to 'false'. |
| `tier_to_archive_after_days_since_modification_greater_than` | int | No | -1 | The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_archive_after_days_since_last_access_time_greater_than` | int | No | -1 | The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between '0' and'99999'. Defaults to '-1'. |
| `tier_to_archive_after_days_since_creation_greater_than` | int | No | -1 | The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between '0' and'99999'. Defaults to '-1'. |
| `tier_to_archive_after_days_since_last_tier_change_greater_than` | int | No | -1 | The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_cold_after_days_since_modification_greater_than` | int | No | -1 | The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to '-1'. |
| `tier_to_cold_after_days_since_last_access_time_greater_than` | int | No | -1 | The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'. |
| `tier_to_cold_after_days_since_creation_greater_than` | int | No | -1 | The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'. |
| `delete_after_days_since_modification_greater_than` | int | No | -1 | The age in days after last modification to delete the blob. Must be between 0 and 99999. Defaults to '-1'. |
| `delete_after_days_since_last_access_time_greater_than` | int | No | -1 | The age in days after last access time to delete the blob. Must be between '0' and '99999'. Defaults to '-1'. |
| `delete_after_days_since_creation_greater_than` | int | No | -1 | The age in days after creation to delete the blob. Must be between '0' and '99999'. Defaults to '-1'. |

### `filters` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `blob_types` | string | Yes | - | An array of predefined values. Valid options are 'blockBlob' and 'appendBlob'. |
| `prefix_match` | string | No | - | An array of strings for prefixes to be matched. |
| `match_blob_index_tag` | [block](#filters-block-structure) | No | - | A 'match_blob_index_tag' block. The block defines the blob index tag based filtering for blob objects. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account Management Policy. | 

Additionally, all variables are provided as outputs.
