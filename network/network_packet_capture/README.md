# azurerm_network_packet_capture

Configures Network Packet Capturing against a Virtual Machine using a Network Watcher.!> **NOTE:** The `azurerm_network_packet_capture` resource is deprecated and will be removed in favour of `azurerm_virtual_machine_packet_capture` and `azurerm_virtual_machine_scale_set_packet_capture` in version 4.0 of the AzureRM Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_packet_capture" 
}

inputs = {
   name = "name of network_packet_capture" 
   # network_watcher_name → set in tfstate_inputs
   resource_group_name = "${resource_group}" 
   # target_resource_id → set in tfstate_inputs
   storage_location = {
      example_storage_location = {
         # storage_account_id → set in tfstate_inputs
      }
  
   }
 
}

tfstate_inputs = {
   network_watcher_name = "path/to/network_watcher_component:name" 
   target_resource_id = "path/to/any_resource_component:id" 
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
| **network_watcher_name** | string |  The name of the Network Watcher. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Network Watcher exists. Changing this forces a new resource to be created. | 
| **target_resource_id** | string |  The ID of the Resource to capture packets from. Changing this forces a new resource to be created. | 
| **storage_location** | [block](#storage_location-block-structure) |  A `storage_location` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **maximum_bytes_per_packet** | int |  `0`  |  The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created. | 
| **maximum_bytes_per_session** | int |  `1073741824`  |  Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created. | 
| **maximum_capture_duration** | int |  `18000`  |  The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created. | 
| **filter** | [block](#filter-block-structure) |  -  |  One or more `filter` blocks. Changing this forces a new resource to be created. | 

### `storage_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `file_path` | string | No | - | A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For Linux virtual machine it must start with '/var/captures'. |
| `storage_account_id` | string | No | - | The ID of the storage account to save the packet capture session |

### `filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `local_ip_address` | string | No | - | The local IP Address to be filtered on. Notation: '127.0.0.1' for single address entry. '127.0.0.1-127.0.0.255' for range. '127.0.0.1;127.0.0.5' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created. |
| `local_port` | string | No | - | The local port to be filtered on. Notation: '80' for single port entry.'80-85' for range. '80;443;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created. |
| `protocol` | string | Yes | - | The Protocol to be filtered on. Possible values include 'Any', 'TCP' and 'UDP'. Changing this forces a new resource to be created. |
| `remote_ip_address` | string | No | - | The remote IP Address to be filtered on. Notation: '127.0.0.1' for single address entry. '127.0.0.1-127.0.0.255' for range. '127.0.0.1;127.0.0.5;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported.. Changing this forces a new resource to be created. |
| `remote_port` | string | No | - | The remote port to be filtered on. Notation: '80' for single port entry.'80-85' for range. '80;443;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Packet Capture ID. | 
| **storage_location** | block | No  | A `storage_location` block. | 
| **storage_path** | string | No  | The URI of the storage path to save the packet capture. | 

Additionally, all variables are provided as outputs.
