# azurerm_express_route_port

Manages a Express Route Port.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created. | 
| **bandwidth_in_gbps** | int | True | -  |  -  | Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created. | 
| **encapsulation** | string | True | -  |  `Dot1Q`, `QinQ`  | The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: `Dot1Q`, `QinQ`. | 
| **peering_location** | string | True | -  |  -  | The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created. | 
| **link1** | block | False | -  |  -  | A list of `link` blocks. | 
| **link2** | block | False | -  |  -  | A list of `link` blocks. | 
| **billing_type** | string | False | -  |  `MeteredData`, `UnlimitedData`  | The billing type of the Express Route Port. Possible values are `MeteredData` and `UnlimitedData`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Express Route Port. | 

