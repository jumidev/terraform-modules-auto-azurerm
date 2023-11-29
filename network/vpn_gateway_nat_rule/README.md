# azurerm_vpn_gateway_nat_rule

Manages a VPN Gateway NAT Rule.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The Name of the Resource Group in which this VPN Gateway NAT Rule should be created. Changing this forces a new resource to be created. | 
| **var.vpn_gateway_id** | string | True | -  |  -  |  The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created. | 
| **var.external_mapping** | list | False | -  |  -  |  One or more `external_mapping` blocks. | 
| **var.internal_mapping** | list | False | -  |  -  |  One or more `internal_mapping` blocks. | 
| **var.ip_configuration_id** | string | False | -  |  `Instance0`, `Instance1`  |  The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are `Instance0` and `Instance1`. | 
| **var.mode** | string | False | `EgressSnat`  |  `EgressSnat`, `IngressSnat`  |  The source NAT direction of the VPN NAT. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created. | 
| **var.type** | string | False | `Static`  |  `Dynamic`, `Static`  |  The type of the VPN Gateway NAT Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created. | 
| **var.external_address_space_mappings** | string | False | -  |  -  |  (Deprecated) A list of CIDR Ranges which are used for external mapping of the VPN Gateway NAT Rule. | 
| **var.internal_address_space_mappings** | string | False | -  |  -  |  (Deprecated) A list of CIDR Ranges which are used for internal mapping of the VPN Gateway NAT Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **vpn_gateway_id** | string  | - | 
| **external_mapping** | list  | - | 
| **internal_mapping** | list  | - | 
| **ip_configuration_id** | string  | - | 
| **mode** | string  | - | 
| **type** | string  | - | 
| **external_address_space_mappings** | string  | - | 
| **internal_address_space_mappings** | string  | - | 
| **id** | string  | The ID of the VPN Gateway NAT Rule. | 