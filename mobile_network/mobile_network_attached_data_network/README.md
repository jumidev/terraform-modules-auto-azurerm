# azurerm_mobile_network_attached_data_network

Manages a Mobile Network Attached Data Network.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.mobile_network_data_network_name** | string | True | Specifies the name of the `azurerm_mobile_network_data_network` which the Attached Data Network belongs to, Changing this forces a new Mobile Network Attached Data Network to be created. | 
| **var.mobile_network_packet_core_data_plane_id** | string | True | Specifies the ID of the `azurerm_mobile_network_packet_core_data_plane` which the Mobile Network Attached Data Network belongs to. Changing this forces a new Mobile Network Attached Data Network to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Mobile Network Attached Data Network should exist. Changing this forces a new Mobile Network Attached Data Network to be created. | 
| **var.user_plane_access_name** | string | False | Specifies the logical name for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_plane_access_ipv4_address** | string | False | The IPv4 address for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_plane_access_ipv4_subnet** | string | False | The IPv4 subnet for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_plane_access_ipv4_gateway** | string | False | The default IPv4 gateway for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.dns_addresses** | string | True | Specifies the DNS servers to signal to UEs to use for this attached data network. | 
| **var.network_address_port_translation** | block | False | A `network_address_port_translation` block. | 
| **var.user_equipment_address_pool_prefixes** | string | False | Specifies the user equipment (UE) address pool prefixes for the attached data network from which the packet core instance will dynamically assign IP addresses to UEs. The packet core instance assigns an IP address to a UE when the UE sets up a PDU session. At least one of `user_equipment_address_pool_prefixes` and `user_equipment_static_address_pool_prefix`. If you define both, they must be of the same size. | 
| **var.user_equipment_static_address_pool_prefixes** | string | False | Specifies the user equipment (UE) address pool prefixes for the attached data network from which the packet core instance will assign static IP addresses to UEs. The packet core instance assigns an IP address to a UE when the UE sets up a PDU session. The static IP address for a specific UE is set in StaticIPConfiguration on the corresponding SIM resource. At least one of `user_equipment_address_pool_prefix` and `user_equipment_static_address_pool_prefixes`. If you define both, they must be of the same size. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Mobile Network Attached Data Network. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **mobile_network_data_network_name** | string  | - | 
| **mobile_network_packet_core_data_plane_id** | string  | - | 
| **location** | string  | - | 
| **user_plane_access_name** | string  | - | 
| **user_plane_access_ipv4_address** | string  | - | 
| **user_plane_access_ipv4_subnet** | string  | - | 
| **user_plane_access_ipv4_gateway** | string  | - | 
| **dns_addresses** | string  | - | 
| **network_address_port_translation** | block  | - | 
| **user_equipment_address_pool_prefixes** | string  | - | 
| **user_equipment_static_address_pool_prefixes** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Mobile Network Attached Data Network. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_attached_data_network" 
}

inputs = {
   mobile_network_data_network_name = "mobile_network_data_network_name of mobile_network_attached_data_network" 
   mobile_network_packet_core_data_plane_id = "mobile_network_packet_core_data_plane_id of mobile_network_attached_data_network" 
   location = "${location}" 
   dns_addresses = "dns_addresses of mobile_network_attached_data_network" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```