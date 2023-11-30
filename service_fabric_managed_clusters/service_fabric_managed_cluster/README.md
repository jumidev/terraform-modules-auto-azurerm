# azurerm_service_fabric_managed_cluster

Manages a Resource Group.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.client_connection_port** | string | True | -  |  -  |  Port to use when connecting to the cluster. | 
| **var.http_gateway_port** | string | True | -  |  -  |  Port that should be used by the Service Fabric Explorer to visualize applications and cluster status. | 
| **var.lb_rule** | block | True | -  |  -  |  One or more `lb_rule` blocks. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created. | 
| **var.authentication** | block | False | -  |  -  |  Controls how connections to the cluster are authenticated. A `authentication` block. | 
| **var.backup_service_enabled** | bool | False | -  |  -  |  If true, backup service is enabled. | 
| **var.custom_fabric_setting** | block | False | -  |  -  |  One or more `custom_fabric_setting` blocks. | 
| **var.dns_name** | string | False | -  |  -  |  Hostname for the cluster. If unset the cluster's name will be used.. | 
| **var.dns_service_enabled** | bool | False | -  |  -  |  If true, DNS service is enabled. | 
| **var.node_type** | block | False | -  |  -  |  One or more `node_type` blocks. | 
| **var.password** | string | False | -  |  -  |  Administrator password for the VMs that will be created as part of this cluster. | 
| **var.sku** | string | False | `Basic`  |  `Basic`, `Standard`  |  SKU for this cluster. Changing this forces a new resource to be created. Default is `Basic`, allowed values are either `Basic` or `Standard`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Resource Group. | 
| **var.upgrade_wave** | string | False | `Wave0`  |  `Wave0`, `Wave1`, `Wave2`  |  Upgrade wave for the fabric runtime. Default is `Wave0`, allowed value must be one of `Wave0`, `Wave1`, or `Wave2`. | 
| **var.username** | string | False | -  |  -  |  Administrator password for the VMs that will be created as part of this cluster. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **client_connection_port** | string  | - | 
| **http_gateway_port** | string  | - | 
| **lb_rule** | block  | - | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **authentication** | block  | - | 
| **backup_service_enabled** | bool  | - | 
| **custom_fabric_setting** | block  | - | 
| **dns_name** | string  | - | 
| **dns_service_enabled** | bool  | - | 
| **node_type** | block  | - | 
| **password** | string  | - | 
| **sku** | string  | - | 
| **tags** | map  | - | 
| **upgrade_wave** | string  | - | 
| **username** | string  | - | 
| **id** | string  | The ID of the Resource Group. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "service_fabric_managed_clusters/service_fabric_managed_cluster" 
}

inputs = {
   client_connection_port = "client_connection_port of service_fabric_managed_cluster" 
   http_gateway_port = "http_gateway_port of service_fabric_managed_cluster" 
   lb_rule = "lb_rule of service_fabric_managed_cluster" 
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