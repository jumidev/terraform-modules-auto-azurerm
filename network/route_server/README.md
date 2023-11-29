# azurerm_route_server

Manages an Azure Route Server

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Route Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  -  | The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created. | 
| **public_ip_address_id** | string | True | -  |  -  | The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created. | 
| **branch_to_branch_traffic_enabled** | bool | False | -  |  -  | Whether to enable route exchange between Azure Route Server and the gateway(s) | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

