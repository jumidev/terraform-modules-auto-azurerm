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

### `private_dns_zone_group` block structure

> `name` (string): (REQUIRED) Specifies the Name of the Private DNS Zone Group.\
> `private_dns_zone_ids` (string): (REQUIRED) Specifies the list of Private DNS Zones to include within the 'private_dns_zone_group'.\

### `private_service_connection` block structure

> `name` (string): (REQUIRED) Specifies the Name of the Private Service Connection. Changing this forces a new resource to be created.\
> `is_manual_connection` (string): (REQUIRED) Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created.\
> `private_connection_resource_id` (string): The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of 'private_connection_resource_id' or 'private_connection_resource_alias' must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself.\
> `private_connection_resource_alias` (string): The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of 'private_connection_resource_id' or 'private_connection_resource_alias' must be specified. Changing this forces a new resource to be created.\
> `subresource_names` (string): A list of subresource names which the Private Endpoint is able to connect to. 'subresource_names' corresponds to 'group_id'. Possible values are detailed in the product [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#private-link-resource) in the 'Subresources' column. Changing this forces a new resource to be created.\
> `request_message` (string): A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The request message can be a maximum of '140' characters in length. Only valid if 'is_manual_connection' is set to 'true'.\

### `ip_configuration` block structure

> `name` (string): (REQUIRED) Specifies the Name of the IP Configuration. Changing this forces a new resource to be created.\
> `private_ip_address` (string): (REQUIRED) Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created.\
> `subresource_name` (string): Specifies the subresource this IP address applies to. 'subresource_names' corresponds to 'group_id'. Changing this forces a new resource to be created.\
> `member_name` (string): Specifies the member name this IP address applies to. If it is not specified, it will use the value of 'subresource_name'. Changing this forces a new resource to be created.\



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
