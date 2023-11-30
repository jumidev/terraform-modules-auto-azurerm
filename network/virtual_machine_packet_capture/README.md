# azurerm_virtual_machine_packet_capture

Configures Network Packet Capturing against a Virtual Machine using a Network Watcher.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_machine_packet_capture" 
}

inputs = {
   name = "name of virtual_machine_packet_capture" 
   network_watcher_id = "network_watcher_id of virtual_machine_packet_capture" 
   virtual_machine_id = "virtual_machine_id of virtual_machine_packet_capture" 
   storage_location = "storage_location of virtual_machine_packet_capture" 
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
| **var.network_watcher_id** | string | True | -  |  The resource ID of the Network Watcher. Changing this forces a new resource to be created. | 
| **var.virtual_machine_id** | string | True | -  |  The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created. | 
| **var.maximum_bytes_per_packet** | int | False | `0`  |  The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created. | 
| **var.maximum_bytes_per_session** | int | False | `1073741824`  |  Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created. | 
| **var.maximum_capture_duration_in_seconds** | int | False | `18000`  |  The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created. | 
| **var.storage_location** | block | True | -  |  A `storage_location` block. Changing this forces a new resource to be created. | 
| **var.filter** | block | False | -  |  One or more `filter` blocks. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Virtual Machine Packet Capture ID. | 
| **storage_location** | block | No  | A `storage_location` block. | 
| **storage_path** | string | No  | The URI of the storage path where the packet capture sessions are saved to. | 

Additionally, all variables are provided as outputs.
