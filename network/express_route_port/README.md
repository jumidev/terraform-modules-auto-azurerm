# azurerm_express_route_port

Manages a Express Route Port.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/express_route_port" 
}

inputs = {
   name = "name of express_route_port" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bandwidth_in_gbps = "bandwidth_in_gbps of express_route_port" 
   encapsulation = "encapsulation of express_route_port" 
   peering_location = "peering_location of express_route_port" 
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
| **var.name** | string |  -  |  The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **var.location** | string |  -  |  The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **var.bandwidth_in_gbps** | int |  -  |  Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created. | 
| **var.encapsulation** | string |  `Dot1Q`, `QinQ`  |  The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: `Dot1Q`, `QinQ`. | 
| **var.peering_location** | string |  -  |  The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.link1** | [block](#link-block-structure) |  -  |  A list of `link` blocks. | 
| **var.link2** | [block](#link-block-structure) |  -  |  A list of `link` blocks. | 
| **var.billing_type** | string |  `MeteredData`, `UnlimitedData`  |  The billing type of the Express Route Port. Possible values are `MeteredData` and `UnlimitedData`. | 
| **var.identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **var.tags** | map |  -  |  A mapping of tags which should be assigned to the Express Route Port. | 

### `link1` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_enabled` | bool | No | False | Whether enable administration state on the Express Route Port Link? Defaults to 'false'. |
| `macsec_cipher` | string | No | GcmAes128 | The MACSec cipher used for this Express Route Port Link. Possible values are 'GcmAes128' and 'GcmAes256'. Defaults to 'GcmAes128'. |
| `macsec_ckn_keyvault_secret_id` | string | No | - | The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link. |
| `macsec_cak_keyvault_secret_id` | string | No | - | The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link. |
| `macsec_sci_enabled` | bool | No | False | Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to 'false'. |

### `link2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_enabled` | bool | No | False | Whether enable administration state on the Express Route Port Link? Defaults to 'false'. |
| `macsec_cipher` | string | No | GcmAes128 | The MACSec cipher used for this Express Route Port Link. Possible values are 'GcmAes128' and 'GcmAes256'. Defaults to 'GcmAes128'. |
| `macsec_ckn_keyvault_secret_id` | string | No | - | The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link. |
| `macsec_cak_keyvault_secret_id` | string | No | - | The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link. |
| `macsec_sci_enabled` | bool | No | False | Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to 'false'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is 'UserAssigned'. |
| `identity_ids` | string | Yes | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Express Route Port Link. | 
| **identity** | block | No  | A `identity` block. | 
| **link1** | block | No  | A list of `link` blocks. | 
| **link2** | block | No  | A list of `link` blocks. | 
| **guid** | string | No  | The resource GUID of the Express Route Port. | 
| **ethertype** | string | No  | The EtherType of the Express Route Port. | 
| **mtu** | string | No  | The maximum transmission unit of the Express Route Port. | 
| **router_name** | string | No  | The name of the Azure router associated with the Express Route Port Link. | 
| **interface_name** | string | No  | The interface name of the Azure router associated with the Express Route Port Link. | 
| **patch_panel_id** | string | No  | The ID that maps from the Express Route Port Link to the patch panel port. | 
| **rack_id** | string | No  | The ID that maps from the patch panel port to the rack. | 
| **connector_type** | string | No  | The connector type of the Express Route Port Link. | 

Additionally, all variables are provided as outputs.
