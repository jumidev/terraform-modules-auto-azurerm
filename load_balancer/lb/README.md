# azurerm_lb

Manages a Load Balancer Resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Load Balancer. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which to create the Load Balancer. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure Region where the Load Balancer should be created. Changing this forces a new resource to be created. | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Load Balancer should exist. Changing this forces a new Load Balancer to be created. | 
| **frontend_ip_configuration** | list | False | -  |  -  | One or more `frontend_ip_configuration` blocks. | 
| **sku** | string | False | `Basic`  |  -  | The SKU of the Azure Load Balancer. Accepted values are `Basic`, `Standard` and `Gateway`. Defaults to `Basic`. Changing this forces a new resource to be created. | 
| **sku_tier** | string | False | `Regional`  |  `Global`, `Regional`  | `sku_tier` -  The SKU tier of this Load Balancer. Possible values are `Global` and `Regional`. Defaults to `Regional`. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

