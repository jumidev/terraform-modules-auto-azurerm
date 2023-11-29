# azurerm_web_pubsub

Manages an Azure Web PubSub Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Web PubSub service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `Free_F1`, `Standard_S1`, `Premium_P1`  | Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, and `Premium_P1`. | 
| **capacity** | string | False | -  |  `1`, `2`, `5`, `10`, `20`, `50`, `100`  | Specifies the number of units associated with this Web PubSub resource. Valid values are: Free: `1`, Standard: `1`, `2`, `5`, `10`, `20`, `50`, `100`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether to enable public network access? Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **live_trace** | block | False | -  |  -  | A `live_trace` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether to enable local auth? Defaults to `true`. | 
| **aad_auth_enabled** | bool | False | `True`  |  -  | Whether to enable AAD auth? Defaults to `true`. | 
| **tls_client_cert_enabled** | bool | False | `False`  |  -  | Whether to request client certificate during TLS handshake? Defaults to `false`. | 

