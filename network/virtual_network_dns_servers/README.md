# azurerm_virtual_network_dns_servers

Manages the DNS servers associated with a virtual network.~> **NOTE on Virtual Networks and DNS Servers:** Terraform currently provides both a standalone [virtual network DNS Servers resource](virtual_network_dns_servers.html), and allows for DNS servers to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line DNS servers in conjunction with any Virtual Network DNS Servers resources. Doing so will cause a conflict of Virtual Network DNS Servers configurations and will overwrite virtual networks DNS servers.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.virtual_network_id** | string | True | The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created. | 
| **var.dns_servers** | string | False | List of IP addresses of DNS servers | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **virtual_network_id** | string  | - | 
| **dns_servers** | string  | - | 
| **id** | string  | The virtual network DNS server ID. | 