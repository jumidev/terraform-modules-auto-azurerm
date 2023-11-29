# azurerm_network_interface

Manages a Network Interface.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.ip_configuration** | block | True | -  |  -  | One or more `ip_configuration` blocks. | 
| **var.location** | string | True | -  |  -  | The location where the Network Interface should exist. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  | The name of the Network Interface. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created. | 
| **var.auxiliary_mode** | string | False | -  |  `AcceleratedConnections`, `Floating`, `MaxConnections`, `None`  | Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`. | 
| **var.auxiliary_sku** | string | False | -  |  `A8`, `A4`, `A1`, `A2`, `None`  | Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`. | 
| **var.dns_servers** | list | False | -  |  -  | A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. | 
| **var.edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created. | 
| **var.enable_ip_forwarding** | bool | False | `False`  |  -  | Should IP Forwarding be enabled? Defaults to `false`. | 
| **var.enable_accelerated_networking** | bool | False | `False`  |  -  | Should Accelerated Networking be enabled? Defaults to `false`. | 
| **var.internal_dns_name_label** | string | False | -  |  -  | The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 


### 2 optional associated resources:

| variable | reference | Description |
| -------- | --------- | ----------- |
| **var.application_security_group_id** | **network_interface_application_security_group_association** | Manages the association between a Network Interface and a Application Security Group. | | **var.network_security_group_id** | **network_interface_security_group_association** | Manages the association between a Network Interface and a Network Security Group. | 

## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **ip_configuration** | block  | - | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **auxiliary_mode** | string  | - | 
| **auxiliary_sku** | string  | - | 
| **dns_servers** | list  | - | 
| **edge_zone** | string  | - | 
| **enable_ip_forwarding** | bool  | - | 
| **enable_accelerated_networking** | bool  | - | 
| **internal_dns_name_label** | string  | - | 
| **tags** | map  | - | 
| **applied_dns_servers** | string  | If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set. | 
| **id** | string  | The ID of the Network Interface. | 
| **internal_domain_name_suffix** | string  | Even if `internal_dns_name_label` is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of `internal_domain_name_suffix`. | 
| **mac_address** | string  | The Media Access Control (MAC) Address of the Network Interface. | 
| **private_ip_address** | string  | The first private IP address of the network interface. | 
| **private_ip_addresses** | string  | The private IP addresses of the network interface. | 
| **virtual_machine_id** | string  | The ID of the Virtual Machine which this Network Interface is connected to. | 