# azurerm_virtual_machine_scale_set_packet_capture

Configures Network Packet Capturing against a Virtual Machine Scale Set using a Network Watcher.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_machine_scale_set_packet_capture" 
}

inputs = {
   name = "name of virtual_machine_scale_set_packet_capture" 
   network_watcher_id = "network_watcher_id of virtual_machine_scale_set_packet_capture" 
   virtual_machine_scale_set_id = "virtual_machine_scale_set_id of virtual_machine_scale_set_packet_capture" 
   storage_location = {
      example_storage_location = {
         # storage_account_id → set in tfstate_inputs
      }
  
   }
 
}

tfstate_inputs = {
   storage_location.example_storage_location.storage_account_id = "path/to/storage_account_component:id" 
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
| **name** | string |  The name to use for this Network Packet Capture. Changing this forces a new resource to be created. | 
| **network_watcher_id** | string |  The resource ID of the Network Watcher. Changing this forces a new resource to be created. | 
| **virtual_machine_scale_set_id** | string |  The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created. | 
| **storage_location** | [block](#storage_location-block-structure) |  A `storage_location` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **maximum_bytes_per_packet** | int |  `0`  |  The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created. | 
| **maximum_bytes_per_session** | int |  `1073741824`  |  Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created. | 
| **maximum_capture_duration_in_seconds** | int |  `18000`  |  The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created. | 
| **filter** | [block](#filter-block-structure) |  -  |  One or more `filter` blocks. Changing this forces a new resource to be created. | 
| **machine_scope** | [block](#machine_scope-block-structure) |  -  |  A `machine_scope` block. Changing this forces a new resource to be created. | 

### `machine_scope` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `exclude_instance_ids` | list | No | - | A list of Virtual Machine Scale Set instance IDs which should be excluded from running Packet Capture, e.g. '['0', '2']'. Changing this forces a new resource to be created. |
| `include_instance_ids` | list | No | - | A list of Virtual Machine Scale Set instance IDs which should be included for Packet Capture, e.g. '['1', '3']'. Changing this forces a new resource to be created. |

### `filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `local_ip_address` | string | No | - | The local IP Address to be filtered on. Specify '127.0.0.1' for a single address entry, '127.0.0.1-127.0.0.255' for a range and '127.0.0.1;127.0.0.5' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created. |
| `local_port` | string | No | - | The local port to be filtered on. Specify '80' for single port entry, '80-85' for a range and '80;443;' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created. |
| `protocol` | string | Yes | - | The Protocol to be filtered on. Possible values include 'Any', 'TCP' and 'UDP'. Changing this forces a new resource to be created. |
| `remote_ip_address` | string | No | - | The remote IP Address to be filtered on. Specify '127.0.0.1' for a single address entry, '127.0.0.1-127.0.0.255' for a range and '127.0.0.1;127.0.0.5' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created. |
| `remote_port` | string | No | - | The remote port to be filtered on. Specify '80' for single port entry, '80-85' for a range and '80;443;' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created. |

### `storage_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `file_path` | string | No | - | A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For Linux virtual machine it must start with '/var/captures'. |
| `storage_account_id` | string | No | - | The ID of the storage account to save the packet capture session |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Virtual Machine Scale Set Packet Capture ID. | 
| **storage_location** | block | No  | A `storage_location` block. | 
| **storage_path** | string | No  | The URI of the storage path where the packet capture sessions are saved to. | 

Additionally, all variables are provided as outputs.
