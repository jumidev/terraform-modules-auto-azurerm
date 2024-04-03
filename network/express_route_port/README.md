# azurerm_express_route_port



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/express_route_port"   
}
inputs = {
   name = "The name which should be used for this Express Route Port..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   bandwidth_in_gbps = "Bandwidth of the Express Route Port in Gbps"   
   encapsulation = "The encapsulation method used for the Express Route Port..."   
   peering_location = "The name of the peering location that this Express Route Port is physically mapp..."   
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
| **name** | string |  -  |  The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **location** | string |  -  |  The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **bandwidth_in_gbps** | number |  -  |  Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created. | 
| **encapsulation** | string |  `Dot1Q`, `QinQ`  |  The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: `Dot1Q`, `QinQ`. | 
| **peering_location** | string |  -  |  The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **link1** | list |  -  |  A list of `link` blocks. | 
| **link2** | list |  -  |  A list of `link` blocks. | 
| **billing_type** | string |  `MeteredData`, `UnlimitedData`  |  The billing type of the Express Route Port. Possible values are `MeteredData` and `UnlimitedData`. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Express Route Port. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is 'UserAssigned'. |
| `identity_ids` | list | Yes | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **macsec_sci_enabled** | bool | No  | Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to `false`. ~> **NOTE** `macsec_ckn_keyvault_secret_id` and `macsec_cak_keyvault_secret_id` should be used together with `identity`, so that the Express Route Port instance have the right permission to access the Key Vault. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of this Express Route Port Link. | 
| **identity** | block | No  | A `identity` block. | 
| **link1** | list | No  | A list of `link` blocks. | 
| **link2** | list | No  | A list of `link` blocks. | 
| **guid** | string | No  | The resource GUID of the Express Route Port. | 
| **ethertype** | string | No  | The EtherType of the Express Route Port. | 
| **mtu** | string | No  | The maximum transmission unit of the Express Route Port. | 
| **router_name** | string | No  | The name of the Azure router associated with the Express Route Port Link. | 
| **interface_name** | string | No  | The interface name of the Azure router associated with the Express Route Port Link. | 
| **patch_panel_id** | string | No  | The ID that maps from the Express Route Port Link to the patch panel port. | 
| **rack_id** | string | No  | The ID that maps from the patch panel port to the rack. | 
| **connector_type** | string | No  | The connector type of the Express Route Port Link. | 

Additionally, all variables are provided as outputs.
