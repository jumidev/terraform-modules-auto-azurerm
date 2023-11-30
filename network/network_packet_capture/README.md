# azurerm_network_packet_capture

Configures Network Packet Capturing against a Virtual Machine using a Network Watcher.!> **NOTE:** The `azurerm_network_packet_capture` resource is deprecated and will be removed in favour of `azurerm_virtual_machine_packet_capture` and `azurerm_virtual_machine_scale_set_packet_capture` in version 4.0 of the AzureRM Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_packet_capture" 
}

inputs = {
   name = "name of network_packet_capture" 
   network_watcher_name = "network_watcher_name of network_packet_capture" 
   resource_group_name = "${resource_group}" 
   target_resource_id = "target_resource_id of network_packet_capture" 
   storage_location = "storage_location of network_packet_capture" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name to use for this Network Packet Capture. Changing this forces a new resource to be created. | 
| **var.network_watcher_name** | string | True | -  |  The name of the Network Watcher. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the Network Watcher exists. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  The ID of the Resource to capture packets from. Changing this forces a new resource to be created. | 
| **var.maximum_bytes_per_packet** | int | False | `0`  |  The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created. | 
| **var.maximum_bytes_per_session** | int | False | `1073741824`  |  Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created. | 
| **var.maximum_capture_duration** | int | False | `18000`  |  The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created. | 
| **var.storage_location** | block | True | -  |  A `storage_location` block. Changing this forces a new resource to be created. | 
| `storage_location` block structure: || 
|   file_path (string): A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For Linux virtual machine it must start with '/var/captures'. ||
|   storage_account_id (string): The ID of the storage account to save the packet capture session ||
| **var.filter** | block | False | -  |  One or more `filter` blocks. Changing this forces a new resource to be created. | 
| `filter` block structure: || 
|   local_ip_address (string): The local IP Address to be filtered on. Notation: '127.0.0.1' for single address entry. '127.0.0.1-127.0.0.255' for range. '127.0.0.1;127.0.0.5' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created. ||
|   local_port (string): The local port to be filtered on. Notation: '80' for single port entry.'80-85' for range. '80;443;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created. ||
|   protocol (string): (REQUIRED) The Protocol to be filtered on. Possible values include 'Any', 'TCP' and 'UDP'. Changing this forces a new resource to be created. ||
|   remote_ip_address (string): The remote IP Address to be filtered on. Notation: '127.0.0.1' for single address entry. '127.0.0.1-127.0.0.255' for range. '127.0.0.1;127.0.0.5;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported.. Changing this forces a new resource to be created. ||
|   remote_port (string): The remote port to be filtered on. Notation: '80' for single port entry.'80-85' for range. '80;443;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Packet Capture ID. | 
| **storage_location** | block | No  | A `storage_location` block. | 
| **storage_path** | string | No  | The URI of the storage path to save the packet capture. | 

Additionally, all variables are provided as outputs.
