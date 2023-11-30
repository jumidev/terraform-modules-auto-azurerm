# azurerm_mobile_network_packet_core_data_plane

Manages a Mobile Network Packet Core Data Plane.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_packet_core_data_plane" 
}

inputs = {
   name = "name of mobile_network_packet_core_data_plane" 
   mobile_network_packet_core_control_plane_id = "mobile_network_packet_core_control_plane_id of mobile_network_packet_core_data_plane" 
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
| **var.name** | string  Specifies the name which should be used for this Mobile Network Packet Core Data Plane. Changing this forces a new Mobile Network Packet Core Data Plane to be created. | 
| **var.mobile_network_packet_core_control_plane_id** | string  Specifies the ID of the Mobile Network Packet Core Data Plane. Changing this forces a new Mobile Network Packet Core Data Plane to be created. | 
| **var.location** | string  Specifies the Azure Region where the Mobile Network Packet Core Data Plane should exist. Changing this forces a new Mobile Network Packet Core Data Plane to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.user_plane_access_name** | string  Specifies the logical name for thie user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_plane_access_ipv4_address** | string  The IPv4 address for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_plane_access_ipv4_subnet** | string  The IPv4 subnet for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_plane_access_ipv4_gateway** | string  The default IPv4 gateway for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.tags** | map  A mapping of tags which should be assigned to the Mobile Network Packet Core Data Plane. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Packet Core Data Plane. | 

Additionally, all variables are provided as outputs.
