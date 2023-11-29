# azurerm_spring_cloud_app

Manage an Azure Spring Cloud Application.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **service_name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **addon_json** | string | False | -  |  -  | A JSON object that contains the addon configurations of the Spring Cloud Service. | 
| **custom_persistent_disk** | block | False | -  |  -  | A `custom_persistent_disk` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **is_public** | bool | False | `False`  |  -  | Does the Spring Cloud Application have public endpoint? Defaults to `false`. | 
| **https_only** | bool | False | `False`  |  -  | Is only HTTPS allowed? Defaults to `false`. | 
| **ingress_settings** | block | False | -  |  -  | An `ingress_settings` block. | 
| **persistent_disk** | block | False | -  |  -  | An `persistent_disk` block. | 
| **public_endpoint_enabled** | bool | False | -  |  -  | Should the App in vnet injection instance exposes endpoint which could be accessed from Internet? | 
| **tls_enabled** | bool | False | `False`  |  -  | Is End to End TLS Enabled? Defaults to `false`. | 

