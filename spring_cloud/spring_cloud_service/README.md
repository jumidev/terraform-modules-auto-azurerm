# azurerm_spring_cloud_service

Manages an Azure Spring Cloud Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **container_registry** | block | False | -  |  -  | One or more `container_registry` block. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **log_stream_public_endpoint_enabled** | bool | False | -  |  -  | Should the log stream in vnet injection instance could be accessed from Internet? | 
| **build_agent_pool_size** | string | False | -  |  `S1`, `S2`, `S3`, `S4`, `S5`  | Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are `S1`, `S2`, `S3`, `S4` and `S5`. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **default_build_service** | block | False | -  |  -  | A `default_build_service` block. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **sku_name** | string | False | `S0`  |  `B0`, `S0`, `E0`  | Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created. | 
| **marketplace** | block | False | -  |  -  | A `marketplace` block. Can only be specified when `sku` is set to `E0`. | 
| **network** | block | False | -  |  -  | A `network` block. Changing this forces a new resource to be created. | 
| **config_server_git_setting** | block | False | -  |  -  | A `config_server_git_setting` block. This field is applicable only for Spring Cloud Service with basic and standard tier. | 
| **service_registry_enabled** | bool | False | -  |  -  | Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **trace** | block | False | -  |  -  | A `trace` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **zone_redundant** | bool | False | `False`  |  -  | Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`. | 

