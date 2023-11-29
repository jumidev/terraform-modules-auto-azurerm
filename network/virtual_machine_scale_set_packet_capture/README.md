# azurerm_virtual_machine_scale_set_packet_capture

Configures Network Packet Capturing against a Virtual Machine Scale Set using a Network Watcher.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name to use for this Network Packet Capture. Changing this forces a new resource to be created. | 
| **var.network_watcher_id** | string | True | -  |  -  | The resource ID of the Network Watcher. Changing this forces a new resource to be created. | 
| **var.virtual_machine_scale_set_id** | string | True | -  |  -  | The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created. | 
| **var.maximum_bytes_per_packet** | int | False | `0`  |  -  | The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created. | 
| **var.maximum_bytes_per_session** | int | False | `1073741824`  |  -  | Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created. | 
| **var.maximum_capture_duration_in_seconds** | int | False | `18000`  |  -  | The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created. | 
| **var.storage_location** | block | True | -  |  -  | A `storage_location` block. Changing this forces a new resource to be created. | 
| **var.filter** | block | False | -  |  -  | One or more `filter` blocks. Changing this forces a new resource to be created. | 
| **var.machine_scope** | block | False | -  |  -  | A `machine_scope` block. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **network_watcher_id** | string  | - | 
| **virtual_machine_scale_set_id** | string  | - | 
| **maximum_bytes_per_packet** | int  | - | 
| **maximum_bytes_per_session** | int  | - | 
| **maximum_capture_duration_in_seconds** | int  | - | 
| **storage_location** | block  | - | 
| **filter** | block  | - | 
| **machine_scope** | block  | - | 
| **id** | string  | The Virtual Machine Scale Set Packet Capture ID. | 
| **storage_location** | block  | A `storage_location` block. | 
| **storage_path** | string  | The URI of the storage path where the packet capture sessions are saved to. | 