# azurerm_route_table

Manages a Route Table~> **NOTE on Route Tables and Routes:** Terraform currentlyprovides both a standalone [Route resource](route.html), and allows for Routes to be defined in-line within the [Route Table resource](route_table.html).At this time you cannot use a Route Table with in-line Routes in conjunction with any Route resources. Doing so will cause a conflict of Route configurations and will overwrite Routes.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the route table. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the route table. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.route** | block | False | -  |  -  | List of `route` objects representing routes as defined below. Each object accepts the arguments documented below. | 
| **var.disable_bgp_route_propagation** | bool | False | -  |  -  | Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 


### 1 optional associated resource:

| variable | reference | Description |
| -------- | --------- | ----------- |
| **var.subnet_id** | **subnet_route_table_association** | Associates a [Route Table](route_table.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html). | 

## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **route** | block  | - | 
| **disable_bgp_route_propagation** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The Route Table ID. | 
| **subnets** | string  | The collection of Subnets associated with this route table. | 