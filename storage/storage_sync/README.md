# azurerm_storage_sync

Manages a Storage Sync.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created. | 
| **incoming_traffic_policy** | string | False | `AllowAllTraffic`  |  `AllowAllTraffic`, `AllowVirtualNetworksOnly`  | Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Storage Sync. | 

