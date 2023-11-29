# azurerm_snapshot

Manages a Disk Snapshot.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Snapshot resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **create_option** | string | True | -  |  `Copy`, `Import`  | Indicates how the snapshot is to be created. Possible values are `Copy` or `Import`. | 
| **source_uri** | string | False | -  |  -  | Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created. | 
| **source_resource_id** | string | False | -  |  -  | Specifies a reference to an existing snapshot, when `create_option` is `Copy`. Changing this forces a new resource to be created. | 
| **storage_account_id** | string | False | -  |  -  | Specifies the ID of an storage account. Used with `source_uri` to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created. | 
| **disk_size_gb** | int | False | -  |  -  | The size of the Snapshotted Disk in GB. | 
| **encryption_settings** | block | False | -  |  -  | A `encryption_settings` block. | 
| **incremental_enabled** | bool | False | -  |  -  | Specifies if the Snapshot is incremental. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

