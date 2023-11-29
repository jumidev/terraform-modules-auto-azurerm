# azurerm_spring_cloud_service

Manages an Azure Spring Cloud Service.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.container_registry** | block | False | -  |  -  |  One or more `container_registry` block. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **var.log_stream_public_endpoint_enabled** | bool | False | -  |  -  |  Should the log stream in vnet injection instance could be accessed from Internet? | 
| **var.build_agent_pool_size** | string | False | -  |  `S1`, `S2`, `S3`, `S4`, `S5`  |  Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are `S1`, `S2`, `S3`, `S4` and `S5`. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **var.default_build_service** | block | False | -  |  -  |  A `default_build_service` block. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **var.sku_name** | string | False | `S0`  |  `B0`, `S0`, `E0`  |  Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created. | 
| **var.marketplace** | block | False | -  |  -  |  A `marketplace` block. Can only be specified when `sku` is set to `E0`. | 
| **var.network** | block | False | -  |  -  |  A `network` block. Changing this forces a new resource to be created. | 
| **var.config_server_git_setting** | block | False | -  |  -  |  A `config_server_git_setting` block. This field is applicable only for Spring Cloud Service with basic and standard tier. | 
| **var.service_registry_enabled** | bool | False | -  |  -  |  Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **var.trace** | block | False | -  |  -  |  A `trace` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.zone_redundant** | bool | False | `False`  |  -  |  Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **container_registry** | block  | - | 
| **log_stream_public_endpoint_enabled** | bool  | - | 
| **build_agent_pool_size** | string  | - | 
| **default_build_service** | block  | - | 
| **sku_name** | string  | - | 
| **marketplace** | block  | - | 
| **network** | block  | - | 
| **config_server_git_setting** | block  | - | 
| **service_registry_enabled** | bool  | - | 
| **trace** | block  | - | 
| **tags** | map  | - | 
| **zone_redundant** | bool  | - | 
| **id** | string  | The ID of the Spring Cloud Service. | 
| **service_registry_id** | string  | The ID of the Spring Cloud Service Registry. | 
| **outbound_public_ip_addresses** | list  | A list of the outbound Public IP Addresses used by this Spring Cloud Service. | 
| **required_network_traffic_rules** | block  | A list of `required_network_traffic_rules` blocks. | 
| **direction** | string  | The direction of required traffic. Possible values are `Inbound`, `Outbound`. | 
| **fqdns** | string  | The FQDN list of required traffic. | 
| **ip_addresses** | string  | The IP list of required traffic. | 
| **port** | string  | The port of required traffic. | 
| **protocol** | string  | The protocol of required traffic. | 