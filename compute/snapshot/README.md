# azurerm_snapshot

Manages a Disk Snapshot.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/snapshot" 
}

inputs = {
   name = "name of snapshot" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   create_option = "create_option of snapshot" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Snapshot resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.create_option** | string | True | `Copy`, `Import`  |  Indicates how the snapshot is to be created. Possible values are `Copy` or `Import`. | 
| **var.source_uri** | string | False | -  |  Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created. | 
| **var.source_resource_id** | string | False | -  |  Specifies a reference to an existing snapshot, when `create_option` is `Copy`. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | False | -  |  Specifies the ID of an storage account. Used with `source_uri` to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created. | 
| **var.disk_size_gb** | int | False | -  |  The size of the Snapshotted Disk in GB. | 
| **var.encryption_settings** | block | False | -  |  A `encryption_settings` block. | | `encryption_settings` block structure: || 
|   disk_encryption_key (block): A 'disk_encryption_key' block. ||
|   key_encryption_key (block): A 'key_encryption_key' block. ||

| **var.incremental_enabled** | bool | False | -  |  Specifies if the Snapshot is incremental. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Snapshot ID. | 
| **disk_size_gb** | int | No  | The Size of the Snapshotted Disk in GB. | 
| **trusted_launch_enabled** | bool | No  | Whether Trusted Launch is enabled for the Snapshot. | 

Additionally, all variables are provided as outputs.
