# azurerm_private_endpoint

Manages a Private Endpoint.Azure Private Endpoint is a network interface that connects you privately and securely to a service powered by Azure Private Link. Private Endpoint uses a private IP address from your VNet, effectively bringing the service into your VNet. The service could be an Azure service such as Azure Storage, SQL, etc. or your own Private Link Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/private_endpoint" 
}

inputs = {
   name = "name of private_endpoint" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   subnet_id = "subnet_id of private_endpoint" 
   private_service_connection = "private_service_connection of private_endpoint" 
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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Zone Config. | 
| **network_interface** | block | No  | A `network_interface` block. | 
| **custom_dns_configs** | block | No  | A `custom_dns_configs` block. | 
| **private_dns_zone_configs** | block | No  | A `private_dns_zone_configs` block. | 
| **ip_configuration** | block | No  | A `ip_configuration` block. | 
| **name** | string | No  | The name of the Private DNS Zone that the config belongs to. | 
| **fqdn** | string | No  | The fully qualified domain name to the `private_dns_zone`. | 
| **ip_addresses** | list | No  | A list of all IP Addresses that map to the `private_dns_zone` fqdn. | 
| **private_dns_zone_id** | list | No  | A list of IP Addresses | 
| **record_sets** | block | No  | A `record_sets` block. | 
| **private_ip_address** | string | No  | The static IP address set by this configuration. It is recommended to use the private IP address exported in the `private_service_connection` block to obtain the address associated with the private endpoint. | 
| **subresource_name** | string | No  | The subresource this IP address applies to, which corresponds to the `group_id`. | 
| **type** | string | No  | The type of DNS record. | 
| **ttl** | int | No  | The time to live for each connection to the `private_dns_zone`. | 

Additionally, all variables are provided as outputs.
