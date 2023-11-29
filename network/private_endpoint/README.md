# azurerm_private_endpoint

Manages a Private Endpoint.Azure Private Endpoint is a network interface that connects you privately and securely to a service powered by Azure Private Link. Private Endpoint uses a private IP address from your VNet, effectively bringing the service into your VNet. The service could be an Azure service such as Azure Storage, SQL, etc. or your own Private Link Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created. | 
| **custom_network_interface_name** | string | False | -  |  -  | The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created. | 
| **private_dns_zone_group** | block | False | -  |  -  | A `private_dns_zone_group` block. | 
| **private_service_connection** | block | True | -  |  -  | A `private_service_connection` block. | 
| **ip_configuration** | block | False | -  |  -  | One or more `ip_configuration` blocks. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

