# azurerm_network_interface

Manages a Network Interface.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_interface" 
}

inputs = {
   ip_configuration = {
      primary = {
         subnet_id = "TODO link to network.subnet.id"   
         private_ip_address_allocation = "Dynamic"   
         public_ip_address_id = "TODO link to network.public_ip.id"   
      }
  
   }
 
   location = "${location}" 
   name = "name of network_interface" 
   resource_group_name = "${resource_group}" 
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
| **var.ip_configuration** | block  One or more `ip_configuration` blocks. | 
| **var.location** | string  The location where the Network Interface should exist. Changing this forces a new resource to be created. | 
| **var.name** | string  The name of the Network Interface. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.auxiliary_mode** | string  -  |  `AcceleratedConnections`, `Floating`, `MaxConnections`, `None`  |  Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`. | 
| **var.auxiliary_sku** | string  -  |  `A8`, `A4`, `A1`, `A2`, `None`  |  Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`. | 
| **var.dns_servers** | list  -  |  -  |  A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. | 
| **var.edge_zone** | string  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created. | 
| **var.enable_ip_forwarding** | bool  `False`  |  -  |  Should IP Forwarding be enabled? Defaults to `false`. | 
| **var.enable_accelerated_networking** | bool  `False`  |  -  |  Should Accelerated Networking be enabled? Defaults to `false`. | 
| **var.internal_dns_name_label** | string  -  |  -  |  The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network. | 
| **var.tags** | map  -  |  -  |  A mapping of tags to assign to the resource. | 

### `ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `gateway_load_balancer_frontend_ip_configuration_id` | string | No | - | The Frontend IP Configuration ID of a Gateway SKU Load Balancer. |
| `subnet_id` | string | No | - | The ID of the Subnet where this Network Interface should be located in. |
| `private_ip_address_version` | string | No | IPv4 | The IP Version to use. Possible values are 'IPv4' or 'IPv6'. Defaults to 'IPv4'. |
| `private_ip_address_allocation` | string | Yes | Dynamic | The allocation method used for the Private IP Address. Possible values are 'Dynamic' and 'Static'. |
| `public_ip_address_id` | string | No | - | Reference to a Public IP Address to associate with this NIC |
| `primary` | bool | No | True | Is this the Primary IP Configuration? Must be 'true' for the first 'ip_configuration' when multiple are specified. Defaults to 'false'. |
| `private_ip_address` | string | No | - | The Static IP Address which should be used. |


### 2 optional associated resources

| Variable | Information |
| -------- | ----------- |
| **var.application_security_group_id** | If set to a valid `azurerm_application_security_group` `id`, makes a **azurerm_network_interface_application_security_group_association** - Manages the association between a Network Interface and a Application Security Group. | 
| **var.network_security_group_id** | If set to a valid `azurerm_network_security_group` `id`, makes a **azurerm_network_interface_security_group_association** - Manages the association between a Network Interface and a Network Security Group. | 

## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **applied_dns_servers** | string | No  | If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set. | 
| **id** | string | No  | The ID of the Network Interface. | 
| **internal_domain_name_suffix** | string | No  | Even if `internal_dns_name_label` is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of `internal_domain_name_suffix`. | 
| **mac_address** | string | No  | The Media Access Control (MAC) Address of the Network Interface. | 
| **private_ip_address** | string | No  | The first private IP address of the network interface. | 
| **private_ip_addresses** | string | No  | The private IP addresses of the network interface. | 
| **virtual_machine_id** | string | No  | The ID of the Virtual Machine which this Network Interface is connected to. | 

Additionally, all variables are provided as outputs.
