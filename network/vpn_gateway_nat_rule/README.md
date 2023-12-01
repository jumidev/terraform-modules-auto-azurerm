# azurerm_vpn_gateway_nat_rule

Manages a VPN Gateway NAT Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/vpn_gateway_nat_rule" 
}

inputs = {
   name = "name of vpn_gateway_nat_rule" 
   resource_group_name = "${resource_group}" 
   vpn_gateway_id = "vpn_gateway_id of vpn_gateway_nat_rule" 
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
| **name** | string |  The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group in which this VPN Gateway NAT Rule should be created. Changing this forces a new resource to be created. | 
| **vpn_gateway_id** | string |  The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **external_mapping** | list |  -  |  -  |  One or more `external_mapping` blocks. | 
| **internal_mapping** | list |  -  |  -  |  One or more `internal_mapping` blocks. | 
| **ip_configuration_id** | string |  -  |  `Instance0`, `Instance1`  |  The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are `Instance0` and `Instance1`. | 
| **mode** | string |  `EgressSnat`  |  `EgressSnat`, `IngressSnat`  |  The source NAT direction of the VPN NAT. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created. | 
| **type** | string |  `Static`  |  `Dynamic`, `Static`  |  The type of the VPN Gateway NAT Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created. | 
| **external_address_space_mappings** | string |  -  |  -  |  (Deprecated) A list of CIDR Ranges which are used for external mapping of the VPN Gateway NAT Rule. | 
| **internal_address_space_mappings** | string |  -  |  -  |  (Deprecated) A list of CIDR Ranges which are used for internal mapping of the VPN Gateway NAT Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Gateway NAT Rule. | 

Additionally, all variables are provided as outputs.
