# azurerm_storage_sync



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_sync"   
}
inputs = {
   name = "The name which should be used for this Storage Sync..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created. | 
| **location** | string |  The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **incoming_traffic_policy** | string |  `AllowAllTraffic`  |  `AllowAllTraffic`, `AllowVirtualNetworksOnly`  |  Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Storage Sync. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the Storage Sync. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Storage Sync. | 
| **registered_servers** | list | No  | A list of registered servers owned by this Storage Sync. | 

Additionally, all variables are provided as outputs.
