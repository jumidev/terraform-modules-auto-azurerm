# azurerm_network_interface



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_interface"   
}
inputs = {
   ip_configurations = {
      primary = {
         gateway_load_balancer_frontend_ip_configuration_id = "..."         
         # subnet_id → (optional) set in component_inputs
         private_ip_address_version = "IPv4"         
         private_ip_address_allocation = "Dynamic"         
         # public_ip_address_id → (optional) set in component_inputs
         primary = true         
         private_ip_address = "..."         
      }      
      item_2 = {
         ...
      }      
   }   
   location = "${location}"   
   name = "The name of the Network Interface"   
   resource_group_name = "${resource_group}"   
}
component_inputs = {
   ip_configurations.primary.subnet_id = "path/to/subnet_component:id"   
   ip_configurations.primary.public_ip_address_id = "path/to/public_ip_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```
## Associated components


### `dns_a_record` 

If set, makes a **azurerm_dns_a_record** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `resource_group_name` | string | True | null |
| `zone_name` | string | True | null |
| `ttl` | number | True | 300 |
| `target_resource_id` | string | False | null |
| `tags` | map | False | null |


Example component snippet

**See also** [dns/dns_zone](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/dns/dns_zone)

```hcl
inputs = {
   dns_a_record = {
      name = "..."      
      resource_group_name = "${resource_group}"      
      ttl = 300      
      tags = "..."      
   }   
}
component_inputs = {
   dns_a_record.zone_name = "path/to/dns_zone_component:name"   
}
```

### `application_security_group_id` 

- If set to a valid `azurerm_application_security_group` `id`, makes a **azurerm_network_interface_application_security_group_association** - 

Example component snippet (**See also** [network/application_security_group](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/application_security_group))

```hcl
component_inputs = {
   application_security_group_id = "path/to/application_security_group_component:id"
}
```

### `network_interface_backend_address_pool_association` 

If set, makes a **azurerm_network_interface_backend_address_pool_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `ip_configuration_name` | string | True | "primary" |
| `backend_address_pool_id` | string | True | null |


Example component snippet

**See also** [load_balancer/lb_backend_address_pool](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/load_balancer/lb_backend_address_pool)

```hcl
inputs = {
   network_interface_backend_address_pool_association = {
      ip_configuration_name = "primary"      
   }   
}
component_inputs = {
   network_interface_backend_address_pool_association.backend_address_pool_id = "path/to/lb_backend_address_pool_component:id"   
}
```

### `network_security_group_id` 

- If set to a valid `azurerm_network_security_group` `id`, makes a **azurerm_network_interface_security_group_association** - 

Example component snippet (**See also** [network/network_security_group](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/network_security_group))

```hcl
component_inputs = {
   network_security_group_id = "path/to/network_security_group_component:id"
}
```

### `network_interface_application_gateway_backend_address_pool_association` 

If set, makes a **azurerm_network_interface_application_gateway_backend_address_pool_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `ip_configuration_name` | string | True | "primary" |
| `backend_address_pool_id` | string | True | null |


Example component snippet

**See also** [load_balancer/lb_backend_address_pool](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/load_balancer/lb_backend_address_pool)

```hcl
inputs = {
   network_interface_application_gateway_backend_address_pool_association = {
      ip_configuration_name = "primary"      
   }   
}
component_inputs = {
   network_interface_application_gateway_backend_address_pool_association.backend_address_pool_id = "path/to/lb_backend_address_pool_component:id"   
}
```

### `network_interface_nat_rule_association` 

If set, makes a **azurerm_network_interface_nat_rule_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `ip_configuration_name` | string | True | "primary" |
| `nat_rule_id` | string | True | null |


Example component snippet

**See also** [load_balancer/lb_nat_rule](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/load_balancer/lb_nat_rule)

```hcl
inputs = {
   network_interface_nat_rule_association = {
      ip_configuration_name = "primary"      
   }   
}
component_inputs = {
   network_interface_nat_rule_association.nat_rule_id = "path/to/lb_nat_rule_component:id"   
}
```

### `private_dns_a_record` 

If set, makes a **azurerm_private_dns_a_record** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `resource_group_name` | string | True | null |
| `zone_name` | string | True | null |
| `ttl` | number | True | 300 |
| `tags` | map | False | null |


Example component snippet

**See also** [private_dns/private_dns_zone](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/private_dns/private_dns_zone)

```hcl
inputs = {
   private_dns_a_record = {
      name = "..."      
      resource_group_name = "${resource_group}"      
      ttl = 300      
      tags = "..."      
   }   
}
component_inputs = {
   private_dns_a_record.zone_name = "path/to/private_dns_zone_component:name"   
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **ip_configurations** | [block](#ip_configuration-block-structure) |  One or more `ip_configuration` blocks. | 
| **location** | string |  The location where the Network Interface should exist. Changing this forces a new resource to be created. | 
| **name** | string |  The name of the Network Interface. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **auxiliary_mode** | string |  -  |  `AcceleratedConnections`, `Floating`, `MaxConnections`, `None`  |  Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`. -> **Note:** `auxiliary_mode` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites). | 
| **auxiliary_sku** | string |  -  |  `A8`, `A4`, `A1`, `A2`, `None`  |  Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`. -> **Note:** `auxiliary_sku` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites). | 
| **dns_servers** | list |  -  |  -  |  A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. -> **Note:** Configuring DNS Servers on the Network Interface will override the DNS Servers defined on the Virtual Network. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created. | 
| **enable_ip_forwarding** | bool |  `False`  |  -  |  Should IP Forwarding be enabled? Defaults to `false`. | 
| **enable_accelerated_networking** | bool |  `False`  |  -  |  Should Accelerated Networking be enabled? Defaults to `false`. -> **Note:** Only certain Virtual Machine sizes are supported for Accelerated Networking - [more information can be found in this document](https://docs.microsoft.com/azure/virtual-network/create-vm-accelerated-networking-cli). -> **Note:** To use Accelerated Networking in an Availability Set, the Availability Set must be deployed onto an Accelerated Networking enabled cluster. | 
| **internal_dns_name_label** | string |  -  |  -  |  The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A name used for this IP Configuration. |
| `gateway_load_balancer_frontend_ip_configuration_id` | string | No | - | The Frontend IP Configuration ID of a Gateway SKU Load Balancer. |
| `subnet_id` | string | No | - | The ID of the Subnet where this Network Interface should be located in. -> **Note:** This is required when 'private_ip_address_version' is set to 'IPv4'. |
| `private_ip_address_version` | string | No | IPv4 | The IP Version to use. Possible values are 'IPv4' or 'IPv6'. Defaults to 'IPv4'. |
| `private_ip_address_allocation` | string | Yes | Dynamic | The allocation method used for the Private IP Address. Possible values are 'Dynamic' and 'Static'. ~> **Note:** 'Dynamic' means 'An IP is automatically assigned during creation of this Network Interface'; 'Static' means 'User supplied IP address will be used' |
| `public_ip_address_id` | string | No | - | Reference to a Public IP Address to associate with this NIC |
| `primary` | bool | No | True | Is this the Primary IP Configuration? Must be 'true' for the first 'ip_configuration' when multiple are specified. Defaults to 'false'. When 'private_ip_address_allocation' is set to 'Static' the following fields can be configured: |
| `private_ip_address` | string | No | - | The Static IP Address which should be used. When 'private_ip_address_version' is set to 'IPv4' the following fields can be configured: |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **private_ip_address** | string | No  | The first private IP address of the network interface. ~> **Note:** If a `Dynamic` allocation method is used Azure will allocate an IP Address on Network Interface creation. | 
| **applied_dns_servers** | string | No  | If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set. | 
| **id** | string | No  | The ID of the Network Interface. | 
| **internal_domain_name_suffix** | string | No  | Even if `internal_dns_name_label` is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of `internal_domain_name_suffix`. | 
| **mac_address** | string | No  | The Media Access Control (MAC) Address of the Network Interface. | 
| **private_ip_addresses** | string | No  | The private IP addresses of the network interface. ~> **Note:** If a `Dynamic` allocation method is used Azure will allocate an IP Address on Network Interface creation. | 
| **virtual_machine_id** | string | No  | The ID of the Virtual Machine which this Network Interface is connected to. | 

Additionally, all variables are provided as outputs.
