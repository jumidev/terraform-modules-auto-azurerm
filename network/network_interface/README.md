# azurerm_network_interface

Manages a Network Interface.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **ip_configuration** | block | True | -  |  -  | One or more `ip_configuration` blocks. | 
| **location** | string | True | -  |  -  | The location where the Network Interface should exist. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name of the Network Interface. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created. | 
| **auxiliary_mode** | string | False | -  |  `AcceleratedConnections`, `Floating`, `MaxConnections`, `None`  | Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`. | 
| **auxiliary_sku** | string | False | -  |  `A8`, `A4`, `A1`, `A2`, `None`  | Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`. | 
| **dns_servers** | list | False | -  |  -  | A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created. | 
| **enable_ip_forwarding** | bool | False | `False`  |  -  | Should IP Forwarding be enabled? Defaults to `false`. | 
| **enable_accelerated_networking** | bool | False | `False`  |  -  | Should Accelerated Networking be enabled? Defaults to `false`. | 
| **internal_dns_name_label** | string | False | -  |  -  | The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

# azurerm_network_interface_application_security_group_association

Manages the association between a Network Interface and a Application Security Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **network_interface_id** | string | False | -  |  -  | The ID of the Network Interface. Changing this forces a new resource to be created. | 
| **application_security_group_id** | string | False | -  |  -  | The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created. | 

# azurerm_network_interface_security_group_association

Manages the association between a Network Interface and a Network Security Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **network_interface_id** | string | False | -  |  -  | The ID of the Network Interface. Changing this forces a new resource to be created. | 
| **network_security_group_id** | string | False | -  |  -  | The ID of the Network Security Group which should be attached to the Network Interface. Changing this forces a new resource to be created. | 

