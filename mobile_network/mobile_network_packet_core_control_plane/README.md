# azurerm_mobile_network_packet_core_control_plane

Manages a Mobile Network Packet Core Control Plane.

## Example minimal component.hclt

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
   local_diagnostics_access = "local_diagnostics_access of mobile_network_packet_core_control_plane" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies The name of the Mobile Network Packet Core Control Plane. Changing this forces a new Mobile Network Packet Core Control Plane to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group where the Mobile Network Packet Core Control Plane should exist. Changing this forces a new Mobile Network Packet Core Control Plane to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Mobile Network Packet Core Control Plane should exist. Changing this forces a new Mobile Network Packet Core Control Plane to be created. | 
| **var.site_ids** | list | True | -  |  A list of Mobile Network Site IDs in which this packet core control plane should be deployed. The Sites must be in the same location as the packet core control plane. | 
| **var.sku** | string | True | `G0`, `G1`, `G2`, `G3`, `G4`, `G5`, `G10`  |  The SKU defining the throughput and SIM allowances for this packet core control plane deployment. Possible values are `G0`, `G1`, `G2`, `G3`, `G4`, `G5` and `G10`. | 
| **var.local_diagnostics_access** | block | True | -  |  One or more `local_diagnostics_access` blocks. Specifies the Kubernetes ingress configuration that controls access to the packet core diagnostics through local APIs. | 
| **var.control_plane_access_name** | string | False | -  |  Specifies the logical name for this interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.control_plane_access_ipv4_address** | string | False | -  |  The IPv4 address for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.control_plane_access_ipv4_subnet** | string | False | -  |  The IPv4 subnet for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.control_plane_access_ipv4_gateway** | string | False | -  |  The default IPv4 gateway for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **var.user_equipment_mtu_in_bytes** | string | False | -  |  Specifies the MTU in bytes that can be sent to the user equipment. The same MTU is set on the user plane data links for all data networks. The MTU set on the user plane access link will be 60 bytes greater than this value to allow for GTP encapsulation. | 
| **var.core_network_technology** | string | False | `5GC`, `EPC`  |  The core network technology generation. Possible values are `5GC` and `EPC`. | 
| **var.platform** | block | False | -  |  A `platform` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.interoperability_settings_json** | string | False | -  |  Settings in JSON format to allow interoperability with third party components e.g. RANs and UEs. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Mobile Network Packet Core Control Plane. | 
| **var.software_version** | string | False | -  |  Specifies the version of the packet core software that is deployed. | 

### `local_diagnostics_access` block structure

> `authentication_type` (string): (REQUIRED) How to authenticate users to access local diagnostics APIs. Possible values are 'AAD' and 'Password'.\
> `https_server_certificate_url` (string): The versionless certificate URL used to secure local access to packet core diagnostics over local APIs by the Kubernetes ingress.\

### `platform` block structure

> `type` (string): (REQUIRED) Specifies the platform type where the packet core is deployed. Possible values are 'AKS-HCI', '3P-AZURE-STACK-HCI' and 'BaseVM'.\
> `edge_device_id` (string): The ID of the Azure Stack Edge device where the packet core is deployed. If the device is part of a fault-tolerant pair, either device in the pair can be specified.\
> `arc_kubernetes_cluster_id` (string): The ID of the Azure Arc connected cluster where the packet core is deployed.\
> `stack_hci_cluster_id` (string): The ID of the Azure Stack HCI cluster where the packet core is deployed.\
> `custom_location_id` (string): The ID of the Azure Arc custom location where the packet core is deployed.\

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).\
> `identity_ids` (list): (REQUIRED) A list of the IDs for User Assigned Managed Identity resources to be assigned.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Packet Core Control Plane. | 

Additionally, all variables are provided as outputs.
