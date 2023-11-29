# azurerm_service_fabric_managed_cluster

Manages a Resource Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **client_connection_port** | string | True | -  |  -  | Port to use when connecting to the cluster. | 
| **http_gateway_port** | string | True | -  |  -  | Port that should be used by the Service Fabric Explorer to visualize applications and cluster status. | 
| **lb_rule** | block | True | -  |  -  | One or more `lb_rule` blocks. | 
| **location** | string | True | -  |  -  | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created. | 
| **authentication** | block | False | -  |  -  | Controls how connections to the cluster are authenticated. A `authentication` block. | 
| **backup_service_enabled** | bool | False | -  |  -  | If true, backup service is enabled. | 
| **custom_fabric_setting** | block | False | -  |  -  | One or more `custom_fabric_setting` blocks. | 
| **dns_name** | string | False | -  |  -  | Hostname for the cluster. If unset the cluster's name will be used.. | 
| **dns_service_enabled** | bool | False | -  |  -  | If true, DNS service is enabled. | 
| **node_type** | block | False | -  |  -  | One or more `node_type` blocks. | 
| **password** | string | False | -  |  -  | Administrator password for the VMs that will be created as part of this cluster. | 
| **sku** | string | False | `Basic`  |  `Basic`, `Standard`  | SKU for this cluster. Changing this forces a new resource to be created. Default is `Basic`, allowed values are either `Basic` or `Standard`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Resource Group. | 
| **upgrade_wave** | string | False | `Wave0`  |  `Wave0`, `Wave1`, `Wave2`  | Upgrade wave for the fabric runtime. Default is `Wave0`, allowed value must be one of `Wave0`, `Wave1`, or `Wave2`. | 
| **username** | string | False | -  |  -  | Administrator password for the VMs that will be created as part of this cluster. | 

