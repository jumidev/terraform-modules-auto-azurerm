# azurerm_private_endpoint

Manages a Private Endpoint.Azure Private Endpoint is a network interface that connects you privately and securely to a service powered by Azure Private Link. Private Endpoint uses a private IP address from your VNet, effectively bringing the service into your VNet. The service could be an Azure service such as Azure Storage, SQL, etc. or your own Private Link Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created. | 
| **var.custom_network_interface_name** | string | False | The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created. | 
| **var.private_dns_zone_group** | block | False | A `private_dns_zone_group` block. | 
| **var.private_service_connection** | block | True | A `private_service_connection` block. | 
| **var.ip_configuration** | block | False | One or more `ip_configuration` blocks. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **subnet_id** | string  | - | 
| **custom_network_interface_name** | string  | - | 
| **private_dns_zone_group** | block  | - | 
| **private_service_connection** | block  | - | 
| **ip_configuration** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Private DNS Zone Config. | 
| **network_interface** | block  | A `network_interface` block. | 
| **custom_dns_configs** | block  | A `custom_dns_configs` block. | 
| **private_dns_zone_configs** | block  | A `private_dns_zone_configs` block. | 
| **ip_configuration** | block  | A `ip_configuration` block. | 
| **name** | string  | The name of the Private DNS Zone that the config belongs to. | 
| **fqdn** | string  | The fully qualified domain name to the `private_dns_zone`. | 
| **ip_addresses** | list  | A list of all IP Addresses that map to the `private_dns_zone` fqdn. | 
| **private_dns_zone_id** | list  | A list of IP Addresses | 
| **record_sets** | block  | A `record_sets` block. | 
| **private_ip_address** | string  | The static IP address set by this configuration. It is recommended to use the private IP address exported in the `private_service_connection` block to obtain the address associated with the private endpoint. | 
| **subresource_name** | string  | The subresource this IP address applies to, which corresponds to the `group_id`. | 
| **type** | string  | The type of DNS record. | 
| **ttl** | int  | The time to live for each connection to the `private_dns_zone`. | 