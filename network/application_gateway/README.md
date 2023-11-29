# azurerm_application_gateway

Manages an Application Gateway.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Application Gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created. | 
| **var.backend_address_pool** | block | True | -  |  One or more `backend_address_pool` blocks. | 
| **var.backend_http_settings** | block | True | -  |  One or more `backend_http_settings` blocks. | 
| **var.frontend_ip_configuration** | block | True | -  |  One or more `frontend_ip_configuration` blocks. | 
| **var.frontend_port** | block | True | -  |  One or more `frontend_port` blocks. | 
| **var.gateway_ip_configuration** | block | True | -  |  One or more `gateway_ip_configuration` blocks. | 
| **var.http_listener** | block | True | -  |  One or more `http_listener` blocks. | 
| **var.request_routing_rule** | block | True | -  |  One or more `request_routing_rule` blocks. | 
| **var.sku** | block | True | -  |  A `sku` block. | 
| **var.fips_enabled** | bool | False | -  |  Is FIPS enabled on the Application Gateway? | 
| **var.global** | block | False | -  |  A `global` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.private_link_configuration** | block | False | -  |  One or more `private_link_configuration` blocks. | 
| **var.zones** | string | False | -  |  Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created. | 
| **var.trusted_client_certificate** | block | False | -  |  One or more `trusted_client_certificate` blocks. | 
| **var.ssl_profile** | block | False | -  |  One or more `ssl_profile` blocks. | 
| **var.authentication_certificate** | block | False | -  |  One or more `authentication_certificate` blocks. | 
| **var.trusted_root_certificate** | block | False | -  |  One or more `trusted_root_certificate` blocks. | 
| **var.ssl_policy** | block | False | -  |  a `ssl_policy` block. | 
| **var.enable_http2** | bool | False | `False`  |  Is HTTP2 enabled on the application gateway resource? Defaults to `false`. | 
| **var.force_firewall_policy_association** | string | False | -  |  Is the Firewall Policy associated with the Application Gateway? | 
| **var.probe** | block | False | -  |  One or more `probe` blocks. | 
| **var.ssl_certificate** | block | False | -  |  One or more `ssl_certificate` blocks. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 
| **var.url_path_map** | block | False | -  |  One or more `url_path_map` blocks. | 
| **var.waf_configuration** | block | False | -  |  A `waf_configuration` block. | 
| **var.custom_error_configuration** | block | False | -  |  One or more `custom_error_configuration` blocks. | 
| **var.firewall_policy_id** | string | False | -  |  The ID of the Web Application Firewall Policy. | 
| **var.redirect_configuration** | block | False | -  |  One or more `redirect_configuration` blocks. | 
| **var.autoscale_configuration** | block | False | -  |  An `autoscale_configuration` block. | 
| **var.rewrite_rule_set** | block | False | -  |  One or more `rewrite_rule_set` blocks. Only valid for v2 SKUs. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **backend_address_pool** | block  | - | 
| **backend_http_settings** | block  | - | 
| **frontend_ip_configuration** | block  | - | 
| **frontend_port** | block  | - | 
| **gateway_ip_configuration** | block  | - | 
| **http_listener** | block  | - | 
| **request_routing_rule** | block  | - | 
| **sku** | block  | - | 
| **fips_enabled** | bool  | - | 
| **global** | block  | - | 
| **identity** | block  | - | 
| **private_link_configuration** | block  | - | 
| **zones** | string  | - | 
| **trusted_client_certificate** | block  | - | 
| **ssl_profile** | block  | - | 
| **authentication_certificate** | block  | - | 
| **trusted_root_certificate** | block  | - | 
| **ssl_policy** | block  | - | 
| **enable_http2** | bool  | - | 
| **force_firewall_policy_association** | string  | - | 
| **probe** | block  | - | 
| **ssl_certificate** | block  | - | 
| **tags** | map  | - | 
| **url_path_map** | block  | - | 
| **waf_configuration** | block  | - | 
| **custom_error_configuration** | block  | - | 
| **firewall_policy_id** | string  | - | 
| **redirect_configuration** | block  | - | 
| **autoscale_configuration** | block  | - | 
| **rewrite_rule_set** | block  | - | 
| **id** | string  | The ID of the Rewrite Rule Set | 
| **authentication_certificate** | block  | A list of `authentication_certificate` blocks. | 
| **backend_address_pool** | block  | A list of `backend_address_pool` blocks. | 
| **backend_http_settings** | block  | A list of `backend_http_settings` blocks. | 
| **frontend_ip_configuration** | block  | A list of `frontend_ip_configuration` blocks. | 
| **frontend_port** | block  | A list of `frontend_port` blocks. | 
| **gateway_ip_configuration** | block  | A list of `gateway_ip_configuration` blocks. | 
| **http_listener** | block  | A list of `http_listener` blocks. | 
| **private_endpoint_connection** | block  | A list of `private_endpoint_connection` blocks. | 
| **private_link_configuration** | block  | A list of `private_link_configuration` blocks. | 
| **probe** | block  | A `probe` block. | 
| **request_routing_rule** | block  | A list of `request_routing_rule` blocks. | 
| **ssl_certificate** | block  | A list of `ssl_certificate` blocks. | 
| **url_path_map** | block  | A list of `url_path_map` blocks. | 
| **custom_error_configuration** | block  | A list of `custom_error_configuration` blocks. | 
| **redirect_configuration** | block  | A list of `redirect_configuration` blocks. | 
| **probe_id** | string  | The ID of the associated Probe. | 
| **private_link_configuration_id** | string  | The ID of the associated private link configuration. | 
| **frontend_ip_configuration_id** | string  | The ID of the associated Frontend Configuration. | 
| **frontend_port_id** | string  | The ID of the associated Frontend Port. | 
| **ssl_certificate_id** | string  | The ID of the associated SSL Certificate. | 
| **ssl_profile_id** | string  | The ID of the associated SSL Profile. | 
| **backend_address_pool_id** | string  | The ID of the associated Backend Address Pool. | 
| **backend_http_settings_id** | string  | The ID of the associated Backend HTTP Settings Configuration. | 
| **redirect_configuration_id** | string  | The ID of the associated Redirect Configuration. | 
| **rewrite_rule_set_id** | string  | The ID of the associated Rewrite Rule Set. | 
| **name** | string  | The name of the private endpoint connection. | 
| **http_listener_id** | string  | The ID of the associated HTTP Listener. | 
| **url_path_map_id** | string  | The ID of the associated URL Path Map. | 
| **public_cert_data** | string  | The Public Certificate Data associated with the SSL Certificate. | 
| **default_backend_address_pool_id** | string  | The ID of the Default Backend Address Pool. | 
| **default_backend_http_settings_id** | string  | The ID of the Default Backend HTTP Settings Collection. | 
| **default_redirect_configuration_id** | string  | The ID of the Default Redirect Configuration. | 
| **path_rule** | block  | A list of `path_rule` blocks. | 