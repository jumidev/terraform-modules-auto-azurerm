# azurerm_iotcentral_application

Manages an IoT Central Application

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the IotHub resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created. | 
| **sub_domain** | string | True | -  |  -  | A `sub_domain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain. | 
| **display_name** | string | False | -  |  -  | A `display_name` name. Custom display name for the IoT Central application. Default is resource name. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for the IoT Central Application. Defaults to `true`. | 
| **sku** | string | False | -  |  `ST0`, `ST1`, `ST2`  | A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1` | 
| **template** | string | False | -  |  -  | A `template` name. IoT Central application template name. Default is a custom application. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

