# azurerm_network_packet_capture

Configures Network Packet Capturing against a Virtual Machine using a Network Watcher.!> **NOTE:** The `azurerm_network_packet_capture` resource is deprecated and will be removed in favour of `azurerm_virtual_machine_packet_capture` and `azurerm_virtual_machine_scale_set_packet_capture` in version 4.0 of the AzureRM Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name to use for this Network Packet Capture. Changing this forces a new resource to be created. | 
| **network_watcher_name** | string | True | -  |  -  | The name of the Network Watcher. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Network Watcher exists. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | The ID of the Resource to capture packets from. Changing this forces a new resource to be created. | 
| **maximum_bytes_per_packet** | int | False | `0`  |  -  | The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created. | 
| **maximum_bytes_per_session** | int | False | `1073741824`  |  -  | Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created. | 
| **maximum_capture_duration** | int | False | `18000`  |  -  | The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created. | 
| **storage_location** | block | True | -  |  -  | A `storage_location` block. Changing this forces a new resource to be created. | 
| **filter** | block | False | -  |  -  | One or more `filter` blocks. Changing this forces a new resource to be created. | 

