# azurerm_service_fabric_managed_cluster

Manages a Resource Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "service_fabric_managed_clusters/service_fabric_managed_cluster" 
}

inputs = {
   client_connection_port = "client_connection_port of service_fabric_managed_cluster" 
   http_gateway_port = "http_gateway_port of service_fabric_managed_cluster" 
   lb_rule = {
      example_lb_rule = {
         backend_port = "..."   
         frontend_port = "..."   
         probe_protocol = "..."   
         protocol = "..."   
      }
  
   }
 
   location = "${location}" 
   name = "name of service_fabric_managed_cluster" 
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
| **var.client_connection_port** | string |  Port to use when connecting to the cluster. | 
| **var.http_gateway_port** | string |  Port that should be used by the Service Fabric Explorer to visualize applications and cluster status. | 
| **var.lb_rule** | block |  One or more `lb_rule` blocks. | 
| **var.location** | string |  The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | 
| **var.name** | string |  The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.authentication** | block |  -  |  -  |  Controls how connections to the cluster are authenticated. A `authentication` block. | 
| **var.backup_service_enabled** | bool |  -  |  -  |  If true, backup service is enabled. | 
| **var.custom_fabric_setting** | block |  -  |  -  |  One or more `custom_fabric_setting` blocks. | 
| **var.dns_name** | string |  -  |  -  |  Hostname for the cluster. If unset the cluster's name will be used.. | 
| **var.dns_service_enabled** | bool |  -  |  -  |  If true, DNS service is enabled. | 
| **var.node_type** | block |  -  |  -  |  One or more `node_type` blocks. | 
| **var.password** | string |  -  |  -  |  Administrator password for the VMs that will be created as part of this cluster. | 
| **var.sku** | string |  `Basic`  |  `Basic`, `Standard`  |  SKU for this cluster. Changing this forces a new resource to be created. Default is `Basic`, allowed values are either `Basic` or `Standard`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Resource Group. | 
| **var.upgrade_wave** | string |  `Wave0`  |  `Wave0`, `Wave1`, `Wave2`  |  Upgrade wave for the fabric runtime. Default is `Wave0`, allowed value must be one of `Wave0`, `Wave1`, or `Wave2`. | 
| **var.username** | string |  -  |  -  |  Administrator password for the VMs that will be created as part of this cluster. | 

### `lb_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `backend_port` | string | Yes | - | LB Backend port. |
| `frontend_port` | string | Yes | - | LB Frontend port. |
| `probe_protocol` | string | Yes | - | Protocol for the probe. Can be one of 'tcp', 'udp', 'http', or 'https'. |
| `probe_request_path` | string | No | - | Path for the probe to check, when probe protocol is set to 'http'. |
| `protocol` | string | Yes | - | The transport protocol used in this rule. Can be one of 'tcp' or 'udp'. |

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `active_directory` | block | No | - | A 'active_directory' block. |
| `certificate` | block | No | - | One or more 'certificate' blocks. |

### `custom_fabric_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameter` | string | Yes | - | Parameter name. |
| `section` | string | Yes | - | Section name. |
| `value` | string | Yes | - | Parameter value. |

### `node_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `application_port_range` | string | Yes | - | Sets the port range available for applications. Format is '<from_port>-<to_port>', for example '10000-20000'. |
| `data_disk_size_gb` | int | Yes | - | The size of the data disk in gigabytes.. |
| `ephemeral_port_range` | string | Yes | - | Sets the port range available for the OS. Format is '<from_port>-<to_port>', for example '10000-20000'. There has to be at least 255 ports available and cannot overlap with 'application_port_range'.. |
| `vm_image_offer` | string | Yes | - | The offer type of the marketplace image cluster VMs will use. |
| `vm_image_publisher` | string | Yes | - | The publisher of the marketplace image cluster VMs will use. |
| `vm_image_sku` | string | Yes | - | The SKU of the marketplace image cluster VMs will use. |
| `vm_image_version` | string | Yes | - | The version of the marketplace image cluster VMs will use. |
| `vm_instance_count` | int | Yes | - | The number of instances this node type will launch. |
| `vm_size` | string | Yes | - | The size of the instances in this node type. |
| `capacities` | string | No | - | Specifies a list of key/value pairs used to set capacity tags for this node type. |
| `data_disk_type` | string | No | Standard_LRS | The type of the disk to use for storing data. It can be one of 'Premium_LRS', 'Standard_LRS', or 'StandardSSD_LRS'. Defaults to 'Standard_LRS'. |
| `multiple_placement_groups_enabled` | bool | No | - | If set the node type can be composed of multiple placement groups. |
| `placement_properties` | string | No | - | Specifies a list of placement tags that can be used to indicate where services should run.. |
| `primary` | string | No | - | If set to true, system services will run on this node type. Only one node type should be marked as primary. Primary node type cannot be deleted or changed once they're created. |
| `stateless` | string | No | - | If set to true, only stateless workloads can run on this node type. |
| `vm_secrets` | block | No | - | One or more 'vm_secrets' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Group. | 

Additionally, all variables are provided as outputs.
