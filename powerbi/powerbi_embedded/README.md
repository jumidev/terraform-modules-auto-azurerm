# azurerm_powerbi_embedded

Manages a PowerBI Embedded.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the PowerBI Embedded. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the PowerBI Embedded should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `A1`, `A2`, `A3`, `A4`, `A5`, `A6`  |  Sets the PowerBI Embedded's pricing level's SKU. Possible values include: `A1`, `A2`, `A3`, `A4`, `A5`, `A6`. | 
| **var.administrators** | string | True | -  |  -  |  A set of administrator user identities, which manages the Power BI Embedded and must be a member user or a service principal in your AAD tenant. | 
| **var.mode** | string | False | `Gen1`  |  `Gen1`, `Gen2`  |  Sets the PowerBI Embedded's mode. Possible values include: `Gen1`, `Gen2`. Defaults to `Gen1`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **administrators** | string  | - | 
| **mode** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the PowerBI Embedded. | 