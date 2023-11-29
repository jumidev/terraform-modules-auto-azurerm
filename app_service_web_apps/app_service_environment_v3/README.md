# azurerm_app_service_environment_v3

Manages a 3rd Generation (v3) App Service Environment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the App Service Environment. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | `subnet_id`  |  -  | The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created. | 
| **allow_new_private_endpoint_connections** | bool | False | `True`  |  -  | Should new Private Endpoint Connections be allowed. Defaults to `true`. | 
| **cluster_setting** | block | False | -  |  -  | Zero or more `cluster_setting` blocks. | 
| **dedicated_host_count** | string | False | -  |  `2`  | This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created. | 
| **zone_redundant** | string | False | -  |  -  | Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created. | 
| **internal_load_balancing_mode** | string | False | `None`  |  `None`, `"Web, Publishing"`  | Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

