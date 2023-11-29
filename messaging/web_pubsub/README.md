# azurerm_web_pubsub

Manages an Azure Web PubSub Service.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Web PubSub service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `Free_F1`, `Standard_S1`, `Premium_P1`  |  Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, and `Premium_P1`. | 
| **var.capacity** | string | False | -  |  `1`, `2`, `5`, `10`, `20`, `50`, `100`  |  Specifies the number of units associated with this Web PubSub resource. Valid values are: Free: `1`, Standard: `1`, `2`, `5`, `10`, `20`, `50`, `100`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether to enable public network access? Defaults to `true`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.live_trace** | block | False | -  |  -  |  A `live_trace` block. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable local auth? Defaults to `true`. | 
| **var.aad_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable AAD auth? Defaults to `true`. | 
| **var.tls_client_cert_enabled** | bool | False | `False`  |  -  |  Whether to request client certificate during TLS handshake? Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | string  | - | 
| **capacity** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **tags** | map  | - | 
| **live_trace** | block  | - | 
| **identity** | block  | - | 
| **local_auth_enabled** | bool  | - | 
| **aad_auth_enabled** | bool  | - | 
| **tls_client_cert_enabled** | bool  | - | 
| **id** | string  | The ID of the Web PubSub service. | 
| **hostname** | string  | The FQDN of the Web PubSub service. | 
| **identity** | block  | An `identity` block. | 
| **external_ip** | string  | The publicly accessible IP of the Web PubSub service. | 
| **public_port** | string  | The publicly accessible port of the Web PubSub service which is designed for browser/client use. | 
| **server_port** | string  | The publicly accessible port of the Web PubSub service which is designed for customer server side use. | 
| **primary_access_key** | string  | The primary access key for the Web PubSub service. | 
| **primary_connection_string** | string  | The primary connection string for the Web PubSub service. | 
| **secondary_access_key** | string  | The secondary access key for the Web PubSub service. | 
| **secondary_connection_string** | string  | The secondary connection string for the Web PubSub service. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 