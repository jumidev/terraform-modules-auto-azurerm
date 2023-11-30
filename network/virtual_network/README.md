# azurerm_virtual_network

Manages a virtual network including any configured subnets. Each subnet canoptionally be configured with a security group to be associated with the subnet.~> **NOTE on Virtual Networks and Subnets:** Terraform currently provides both a standalone [Subnet resource](subnet.html), and allows for Subnets to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line Subnets in conjunction with any Subnet resources. Doing so will cause a conflict of Subnet configurations and will overwrite subnets.~> **NOTE on Virtual Networks and DNS Servers:** Terraform currently provides both a standalone [virtual network DNS Servers resource](virtual_network_dns_servers.html), and allows for DNS servers to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line DNS servers in conjunction with any Virtual Network DNS Servers resources. Doing so will cause a conflict of Virtual Network DNS Servers configurations and will overwrite virtual networks DNS servers.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_network" 
}

inputs = {
   name = "name of virtual_network" 
   resource_group_name = "${resource_group}" 
   address_space = "address_space of virtual_network" 
   location = "${location}" 
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
| **var.name** | string |  The name of the virtual network. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created. | 
| **var.address_space** | string |  The address space that is used the virtual network. You can supply more than one address space. | 
| **var.location** | string |  The location/region where the virtual network is created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.bgp_community** | string |  -  |  The BGP community attribute in format `<as-number>:<community-value>`. | 
| **var.ddos_protection_plan** | [block](#ddos_protection_plan-block-structure) |  -  |  A `ddos_protection_plan` block. | 
| **var.encryption** | [block](#encryption-block-structure) |  -  |  A `encryption` block. | 
| **var.dns_servers** | string |  -  |  List of IP addresses of DNS servers | 
| **var.edge_zone** | string |  -  |  Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created. | 
| **var.flow_timeout_in_minutes** | string |  `4`, `30`  |  The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between `4` and `30` minutes. | 

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enforcement` | string | Yes | - | Specifies if the encrypted Virtual Network allows VM that does not support encryption. Possible values are 'DropUnencrypted' and 'AllowUnencrypted'. |

### `ddos_protection_plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enable` | string | Yes | - | Enable/disable DDoS Protection Plan on Virtual Network. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this subnet. | 
| **name** | string | No  | The name of the virtual network. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | No  | The name of the resource group in which to create the virtual network. | 
| **location** | string | No  | The location/region where the virtual network is created. Changing this forces a new resource to be created. | 
| **address_space** | string | No  | The list of address spaces used by the virtual network. | 
| **guid** | string | No  | The GUID of the virtual network. | 
| **subnet** | block | No  | One or more `subnet` blocks. | 

Additionally, all variables are provided as outputs.
