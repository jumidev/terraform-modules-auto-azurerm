# azurerm_virtual_network

Manages a virtual network including any configured subnets. Each subnet canoptionally be configured with a security group to be associated with the subnet.~> **NOTE on Virtual Networks and Subnets:** Terraform currently provides both a standalone [Subnet resource](subnet.html), and allows for Subnets to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line Subnets in conjunction with any Subnet resources. Doing so will cause a conflict of Subnet configurations and will overwrite subnets.~> **NOTE on Virtual Networks and DNS Servers:** Terraform currently provides both a standalone [virtual network DNS Servers resource](virtual_network_dns_servers.html), and allows for DNS servers to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line DNS servers in conjunction with any Virtual Network DNS Servers resources. Doing so will cause a conflict of Virtual Network DNS Servers configurations and will overwrite virtual networks DNS servers.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the virtual network. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created. | 
| **address_space** | string | True | -  |  -  | The address space that is used the virtual network. You can supply more than one address space. | 
| **location** | string | True | -  |  -  | The location/region where the virtual network is created. Changing this forces a new resource to be created. | 
| **bgp_community** | string | False | -  |  -  | The BGP community attribute in format `<as-number>:<community-value>`. | 
| **ddos_protection_plan** | block | False | -  |  -  | A `ddos_protection_plan` block. | 
| **encryption** | block | False | -  |  -  | A `encryption` block. | 
| **dns_servers** | string | False | -  |  -  | List of IP addresses of DNS servers | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created. | 
| **flow_timeout_in_minutes** | string | False | -  |  `4`, `30`  | The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between `4` and `30` minutes. | 

