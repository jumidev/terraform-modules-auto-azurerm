# azurerm_app_service_environment_v3

Manages a 3rd Generation (v3) App Service Environment.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the App Service Environment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | `subnet_id`  |  -  |  The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | -  |  -  |  The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created. | 
| **var.allow_new_private_endpoint_connections** | bool | False | `True`  |  -  |  Should new Private Endpoint Connections be allowed. Defaults to `true`. | 
| **var.cluster_setting** | block | False | -  |  -  |  Zero or more `cluster_setting` blocks. | 
| **var.dedicated_host_count** | string | False | -  |  `2`  |  This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created. | 
| **var.zone_redundant** | string | False | -  |  -  |  Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created. | 
| **var.internal_load_balancing_mode** | string | False | `None`  |  `None`, `"Web, Publishing"`  |  Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **subnet_id** | string  | - | 
| **allow_new_private_endpoint_connections** | bool  | - | 
| **cluster_setting** | block  | - | 
| **dedicated_host_count** | string  | - | 
| **zone_redundant** | string  | - | 
| **internal_load_balancing_mode** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the App Service Environment. | 
| **dns_suffix** | string  | the DNS suffix for this App Service Environment V3. | 
| **external_inbound_ip_addresses** | string  | The external inbound IP addresses of the App Service Environment V3. | 
| **inbound_network_dependencies** | block  | An `inbound_network_dependencies` block. | 
| **internal_inbound_ip_addresses** | string  | The internal inbound IP addresses of the App Service Environment V3. | 
| **ip_ssl_address_count** | int  | The number of IP SSL addresses reserved for the App Service Environment V3. | 
| **linux_outbound_ip_addresses** | string  | Outbound addresses of Linux based Apps in this App Service Environment V3 | 
| **location** | string  | The location where the App Service Environment exists. | 
| **pricing_tier** | string  | Pricing tier for the front end instances. | 
| **windows_outbound_ip_addresses** | string  | Outbound addresses of Windows based Apps in this App Service Environment V3. | 
| **description** | string  | A short description of the purpose of the network traffic. | 
| **ip_addresses** | list  | A list of IP addresses that network traffic will originate from in CIDR notation. | 
| **ports** | string  | The ports that network traffic will arrive to the App Service Environment V3 on. | 