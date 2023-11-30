# azurerm_route_table

Manages a Route Table~> **NOTE on Route Tables and Routes:** Terraform currentlyprovides both a standalone [Route resource](route.html), and allows for Routes to be defined in-line within the [Route Table resource](route_table.html).At this time you cannot use a Route Table with in-line Routes in conjunction with any Route resources. Doing so will cause a conflict of Route configurations and will overwrite Routes.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/route_table" 
}

inputs = {
   name = "name of route_table" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the route table. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the route table. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.route** | block | False | List of `route` objects representing routes as defined below. Each object accepts the arguments documented below. | 
| **var.disable_bgp_route_propagation** | bool | False | Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 

### `route` block structure

>`name` (string): (REQUIRED) The name of the route.
>`address_prefix` (string): (REQUIRED) The destination to which the route applies. Can be CIDR (such as '10.1.0.0/16') or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as 'ApiManagement', 'AzureBackup' or 'AzureMonitor') format.
>`next_hop_type` (string): (REQUIRED) The type of Azure hop the packet should be sent to. Possible values are 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance' and 'None'.
>`next_hop_in_ip_address` (string): Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is 'VirtualAppliance'.


### 1 optional associated resource

| Variable | Information |
| -------- | ----------- |
| **var.subnet_id** | If set to a valid `azurerm_subnet` `id`, makes a **azurerm_subnet_route_table_association** - Associates a [Route Table](route_table.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html). | 

## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Route Table ID. | 
| **subnets** | string | No  | The collection of Subnets associated with this route table. | 

Additionally, all variables are provided as outputs.
