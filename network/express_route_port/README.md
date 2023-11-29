# azurerm_express_route_port

Manages a Express Route Port.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **var.bandwidth_in_gbps** | int | True | -  |  -  | Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created. | 
| **var.encapsulation** | string | True | -  |  `Dot1Q`, `QinQ`  | The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: `Dot1Q`, `QinQ`. | 
| **var.peering_location** | string | True | -  |  -  | The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created. | 
| **var.link1** | block | False | -  |  -  | A list of `link` blocks. | 
| **var.link2** | block | False | -  |  -  | A list of `link` blocks. | 
| **var.billing_type** | string | False | -  |  `MeteredData`, `UnlimitedData`  | The billing type of the Express Route Port. Possible values are `MeteredData` and `UnlimitedData`. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Express Route Port. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bandwidth_in_gbps** | int  | - | 
| **encapsulation** | string  | - | 
| **peering_location** | string  | - | 
| **link1** | block  | - | 
| **link2** | block  | - | 
| **billing_type** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of this Express Route Port Link. | 
| **identity** | block  | A `identity` block. | 
| **link1** | block  | A list of `link` blocks. | 
| **link2** | block  | A list of `link` blocks. | 
| **guid** | string  | The resource GUID of the Express Route Port. | 
| **ethertype** | string  | The EtherType of the Express Route Port. | 
| **mtu** | string  | The maximum transmission unit of the Express Route Port. | 
| **router_name** | string  | The name of the Azure router associated with the Express Route Port Link. | 
| **interface_name** | string  | The interface name of the Azure router associated with the Express Route Port Link. | 
| **patch_panel_id** | string  | The ID that maps from the Express Route Port Link to the patch panel port. | 
| **rack_id** | string  | The ID that maps from the patch panel port to the rack. | 
| **connector_type** | string  | The connector type of the Express Route Port Link. | 