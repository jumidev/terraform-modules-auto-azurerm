# azurerm_mobile_network_packet_core_control_plane

Manages a Mobile Network Packet Core Control Plane.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_packet_core_control_plane" 
}

inputs = {
   name = "name of mobile_network_packet_core_control_plane" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   site_ids = "site_ids of mobile_network_packet_core_control_plane" 
   sku = "sku of mobile_network_packet_core_control_plane" 
   local_diagnostics_access = {
      example_local_diagnostics_access = {
         authentication_type = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  Specifies The name of the Mobile Network Packet Core Control Plane. Changing this forces a new Mobile Network Packet Core Control Plane to be created. | 
| **var.resource_group_name** | string |  -  |  Specifies the name of the Resource Group where the Mobile Network Packet Core Control Plane should exist. Changing this forces a new Mobile Network Packet Core Control Plane to be created. | 
| **var.location** | string |  -  |  Specifies the Azure Region where the Mobile Network Packet Core Control Plane should exist. Changing this forces a new Mobile Network Packet Core Control Plane to be created. | 
| **var.site_ids** | list |  -  |  A list of Mobile Network Site IDs in which this packet core control plane should be deployed. The Sites must be in the same location as the packet core control plane. | 
| **var.sku** | string |  `G0`, `G1`, `G2`, `G3`, `G4`, `G5`, `G10`  |  The SKU defining the throughput and SIM allowances for this packet core control plane deployment. Possible values are `G0`, `G1`, `G2`, `G3`, `G4`, `G5` and `G10`. | 
| **var.local_diagnostics_access** | [block](#local_diagnostics_access-block-structure) |  -  |  One or more `local_diagnostics_access` blocks. Specifies the Kubernetes ingress configuration that controls access to the packet core diagnostics through local APIs. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.control_plane_access_name** | string |  -  |  Specifies the logical name for this interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.control_plane_access_ipv4_address** | string |  -  |  The IPv4 address for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.control_plane_access_ipv4_subnet** | string |  -  |  The IPv4 subnet for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.control_plane_access_ipv4_gateway** | string |  -  |  The default IPv4 gateway for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_equipment_mtu_in_bytes** | string |  -  |  Specifies the MTU in bytes that can be sent to the user equipment. The same MTU is set on the user plane data links for all data networks. The MTU set on the user plane access link will be 60 bytes greater than this value to allow for GTP encapsulation. | 
| **var.core_network_technology** | string |  `5GC`, `EPC`  |  The core network technology generation. Possible values are `5GC` and `EPC`. | 
| **var.platform** | [block](#platform-block-structure) |  -  |  A `platform` block. | 
| **var.identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **var.interoperability_settings_json** | string |  -  |  Settings in JSON format to allow interoperability with third party components e.g. RANs and UEs. | 
| **var.tags** | map |  -  |  A mapping of tags which should be assigned to the Mobile Network Packet Core Control Plane. | 
| **var.software_version** | string |  -  |  Specifies the version of the packet core software that is deployed. | 

### `platform` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the platform type where the packet core is deployed. Possible values are 'AKS-HCI', '3P-AZURE-STACK-HCI' and 'BaseVM'. |
| `edge_device_id` | string | No | - | The ID of the Azure Stack Edge device where the packet core is deployed. If the device is part of a fault-tolerant pair, either device in the pair can be specified. |
| `arc_kubernetes_cluster_id` | string | No | - | The ID of the Azure Arc connected cluster where the packet core is deployed. |
| `stack_hci_cluster_id` | string | No | - | The ID of the Azure Stack HCI cluster where the packet core is deployed. |
| `custom_location_id` | string | No | - | The ID of the Azure Arc custom location where the packet core is deployed. |

### `local_diagnostics_access` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `authentication_type` | string | Yes | - | How to authenticate users to access local diagnostics APIs. Possible values are 'AAD' and 'Password'. |
| `https_server_certificate_url` | string | No | - | The versionless certificate URL used to secure local access to packet core diagnostics over local APIs by the Kubernetes ingress. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | Yes | - | A list of the IDs for User Assigned Managed Identity resources to be assigned. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Packet Core Control Plane. | 

Additionally, all variables are provided as outputs.
