# azurerm_network_security_group

Manages a network security group that contains a list of network security rules.  Network security groups enable inbound or outbound traffic to be enabled or denied.~> **NOTE on Network Security Groups and Network Security Rules:** Terraform currentlyprovides both a standalone [Network Security Rule resource](network_security_rule.html), and allows for Network Security Rules to be defined in-line within the [Network Security Group resource](network_security_group.html).At this time you cannot use a Network Security Group with in-line Network Security Rules in conjunction with any Network Security Rule resources. Doing so will cause a conflict of rule settings and will overwrite rules.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the network security group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the network security group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.security_rule** | block | False | -  |  -  | List of `security_rule` objects representing security rules, as defined below. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 


### 1 optional associated resource:

| variable | reference | Description |
| -------- | --------- | ----------- |
| **var.subnet_id** | **subnet_network_security_group_association** | Associates a [Network Security Group](network_security_group.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html). | 

## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **security_rule** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Network Security Group. | 