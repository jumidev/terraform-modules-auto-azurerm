# azurerm_application_gateway

Manages an Application Gateway.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Application Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created. | 
| **backend_address_pool** | block | True | -  |  -  | One or more `backend_address_pool` blocks. | 
| **backend_http_settings** | block | True | -  |  -  | One or more `backend_http_settings` blocks. | 
| **frontend_ip_configuration** | block | True | -  |  -  | One or more `frontend_ip_configuration` blocks. | 
| **frontend_port** | block | True | -  |  -  | One or more `frontend_port` blocks. | 
| **gateway_ip_configuration** | block | True | -  |  -  | One or more `gateway_ip_configuration` blocks. | 
| **http_listener** | block | True | -  |  -  | One or more `http_listener` blocks. | 
| **request_routing_rule** | block | True | -  |  -  | One or more `request_routing_rule` blocks. | 
| **sku** | block | True | -  |  -  | A `sku` block. | 
| **fips_enabled** | bool | False | -  |  -  | Is FIPS enabled on the Application Gateway? | 
| **global** | block | False | -  |  -  | A `global` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **private_link_configuration** | block | False | -  |  -  | One or more `private_link_configuration` blocks. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created. | 
| **trusted_client_certificate** | block | False | -  |  -  | One or more `trusted_client_certificate` blocks. | 
| **ssl_profile** | block | False | -  |  -  | One or more `ssl_profile` blocks. | 
| **authentication_certificate** | block | False | -  |  -  | One or more `authentication_certificate` blocks. | 
| **trusted_root_certificate** | block | False | -  |  -  | One or more `trusted_root_certificate` blocks. | 
| **ssl_policy** | block | False | -  |  -  | a `ssl_policy` block. | 
| **enable_http2** | bool | False | `False`  |  -  | Is HTTP2 enabled on the application gateway resource? Defaults to `false`. | 
| **force_firewall_policy_association** | string | False | -  |  -  | Is the Firewall Policy associated with the Application Gateway? | 
| **probe** | block | False | -  |  -  | One or more `probe` blocks. | 
| **ssl_certificate** | block | False | -  |  -  | One or more `ssl_certificate` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **url_path_map** | block | False | -  |  -  | One or more `url_path_map` blocks. | 
| **waf_configuration** | block | False | -  |  -  | A `waf_configuration` block. | 
| **custom_error_configuration** | block | False | -  |  -  | One or more `custom_error_configuration` blocks. | 
| **firewall_policy_id** | string | False | -  |  -  | The ID of the Web Application Firewall Policy. | 
| **redirect_configuration** | block | False | -  |  -  | One or more `redirect_configuration` blocks. | 
| **autoscale_configuration** | block | False | -  |  -  | An `autoscale_configuration` block. | 
| **rewrite_rule_set** | block | False | -  |  -  | One or more `rewrite_rule_set` blocks. Only valid for v2 SKUs. | 

