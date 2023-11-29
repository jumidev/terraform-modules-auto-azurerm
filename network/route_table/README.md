# azurerm_route_table

Manages a Route Table~> **NOTE on Route Tables and Routes:** Terraform currentlyprovides both a standalone [Route resource](route.html), and allows for Routes to be defined in-line within the [Route Table resource](route_table.html).At this time you cannot use a Route Table with in-line Routes in conjunction with any Route resources. Doing so will cause a conflict of Route configurations and will overwrite Routes.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the route table. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the route table. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **route** | block | False | -  |  -  | List of `route` objects representing routes as defined below. Each object accepts the arguments documented below. | 
| **disable_bgp_route_propagation** | bool | False | -  |  -  | Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

# azurerm_subnet_route_table_association

Associates a [Route Table](route_table.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **route_table_id** | string | False | -  |  -  | The ID of the Route Table which should be associated with the Subnet. Changing this forces a new resource to be created. | 
| **subnet_id** | string | False | -  |  -  | The ID of the Subnet. Changing this forces a new resource to be created. | 

