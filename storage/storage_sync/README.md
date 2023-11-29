# azurerm_storage_sync

Manages a Storage Sync.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created. | 
| **var.incoming_traffic_policy** | string | False | `AllowAllTraffic`  |  `AllowAllTraffic`, `AllowVirtualNetworksOnly`  |  Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Storage Sync. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **incoming_traffic_policy** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Storage Sync. | 