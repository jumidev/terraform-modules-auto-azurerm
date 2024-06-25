# azurerm_vpn_gateway_nat_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/vpn_gateway_nat_rule"   
}
inputs = {
   name = "The name which should be used for this VPN Gateway NAT Rule..."   
   # vpn_gateway_id → set in component_inputs
}
component_inputs = {
   vpn_gateway_id = "path/to/vpn_gateway_component:id"   
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
| **vpn_gateway_id** | string |  The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **external_mappings** | [block](#external_mapping-block-structure) |  -  |  -  |  One of more `external_mapping` blocks. | 
| **internal_mappings** | [block](#internal_mapping-block-structure) |  -  |  -  |  One of more `internal_mapping` blocks. | 
| **ip_configuration_id** | string |  -  |  `Instance0`, `Instance1`  |  The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are `Instance0` and `Instance1`. | 
| **mode** | string |  `EgressSnat`  |  `EgressSnat`, `IngressSnat`  |  The source NAT direction of the VPN NAT. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created. | 
| **type** | string |  `Static`  |  `Dynamic`, `Static`  |  The type of the VPN Gateway NAT Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created. | 

### `internal_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_space` | string | Yes | - | The string CIDR representing the address space for the VPN Gateway Nat Rule internal mapping. |
| `port_range` | string | No | - | The single port range for the VPN Gateway Nat Rule internal mapping. |

### `external_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_space` | string | Yes | - | The string CIDR representing the address space for the VPN Gateway Nat Rule external mapping. |
| `port_range` | string | No | - | The single port range for the VPN Gateway Nat Rule external mapping. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **port_range** | string | No  | The single port range for the VPN Gateway Nat Rule internal mapping. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the VPN Gateway NAT Rule. | 

Additionally, all variables are provided as outputs.
