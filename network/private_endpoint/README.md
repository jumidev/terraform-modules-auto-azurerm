# azurerm_private_endpoint

Manages a Private Endpoint.Azure Private Endpoint is a network interface that connects you privately and securely to a service powered by Azure Private Link. Private Endpoint uses a private IP address from your VNet, effectively bringing the service into your VNet. The service could be an Azure service such as Azure Storage, SQL, etc. or your own Private Link Service.

## Example `component.hclt`

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
   private_service_connection = {
      example_private_service_connection = {
         is_manual_connection = "..."   
      }
  
   }
 
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
| **name** | string |  Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created. | 
| **private_service_connection** | [block](#private_service_connection-block-structure) |  A `private_service_connection` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **custom_network_interface_name** | string |  The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created. | 
| **private_dns_zone_group** | [block](#private_dns_zone_group-block-structure) |  A `private_dns_zone_group` block. | 
| **ip_configuration** | [block](#ip_configuration-block-structure) |  One or more `ip_configuration` blocks. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `private_dns_zone_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_dns_zone_ids` | string | Yes | - | Specifies the list of Private DNS Zones to include within the 'private_dns_zone_group'. |

### `private_service_connection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_manual_connection` | string | Yes | - | Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created. |
| `private_connection_resource_id` | string | No | - | The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of 'private_connection_resource_id' or 'private_connection_resource_alias' must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself. |
| `private_connection_resource_alias` | string | No | - | The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of 'private_connection_resource_id' or 'private_connection_resource_alias' must be specified. Changing this forces a new resource to be created. |
| `subresource_names` | string | No | - | A list of subresource names which the Private Endpoint is able to connect to. 'subresource_names' corresponds to 'group_id'. Possible values are detailed in the product [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#private-link-resource) in the 'Subresources' column. Changing this forces a new resource to be created. |
| `request_message` | string | No | - | A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The request message can be a maximum of '140' characters in length. Only valid if 'is_manual_connection' is set to 'true'. |

### `ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_ip_address` | string | Yes | - | Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created. |
| `subresource_name` | string | No | - | Specifies the subresource this IP address applies to. 'subresource_names' corresponds to 'group_id'. Changing this forces a new resource to be created. |
| `member_name` | string | No | - | Specifies the member name this IP address applies to. If it is not specified, it will use the value of 'subresource_name'. Changing this forces a new resource to be created. |



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
