# azurerm_virtual_machine_scale_set_packet_capture

Configures Network Packet Capturing against a Virtual Machine Scale Set using a Network Watcher.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name to use for this Network Packet Capture. Changing this forces a new resource to be created. | 
| **network_watcher_id** | string | True | -  |  -  | The resource ID of the Network Watcher. Changing this forces a new resource to be created. | 
| **virtual_machine_scale_set_id** | string | True | -  |  -  | The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created. | 
| **maximum_bytes_per_packet** | int | False | `0`  |  -  | The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created. | 
| **maximum_bytes_per_session** | int | False | `1073741824`  |  -  | Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created. | 
| **maximum_capture_duration_in_seconds** | int | False | `18000`  |  -  | The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created. | 
| **storage_location** | block | True | -  |  -  | A `storage_location` block. Changing this forces a new resource to be created. | 
| **filter** | block | False | -  |  -  | One or more `filter` blocks. Changing this forces a new resource to be created. | 
| **machine_scope** | block | False | -  |  -  | A `machine_scope` block. Changing this forces a new resource to be created. | 

