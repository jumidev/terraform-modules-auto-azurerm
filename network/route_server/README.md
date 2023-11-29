# azurerm_route_server

Manages an Azure Route Server

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Route Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | -  |  -  | The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  -  | The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created. | 
| **var.public_ip_address_id** | string | True | -  |  -  | The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created. | 
| **var.branch_to_branch_traffic_enabled** | bool | False | -  |  -  | Whether to enable route exchange between Azure Route Server and the gateway(s) | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **subnet_id** | string  | - | 
| **sku** | string  | - | 
| **public_ip_address_id** | string  | - | 
| **branch_to_branch_traffic_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Route Server . | 