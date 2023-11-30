# azurerm_application_gateway

Manages an Application Gateway.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/application_gateway" 
}

inputs = {
   name = "name of application_gateway" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   backend_address_pool = {
      example_backend_address_pool = {
         ...
      }
  
   }
 
   backend_http_settings = {
      example_backend_http_settings = {
         ...
      }
  
   }
 
   frontend_ip_configuration = {
      example_frontend_ip_configuration = {
         ...
      }
  
   }
 
   frontend_port = {
      example_frontend_port = {
         ...
      }
  
   }
 
   gateway_ip_configuration = {
      example_gateway_ip_configuration = {
         ...
      }
  
   }
 
   http_listener = {
      example_http_listener = {
         ...
      }
  
   }
 
   request_routing_rule = {
      example_request_routing_rule = {
         ...
      }
  
   }
 
   sku = {
      example_sku = {
         ...
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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

### `backend_address_pool` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `fqdns` | list | No | - | A list of FQDN's which should be part of the Backend Address Pool. |
| `ip_addresses` | list | No | - | A list of IP Addresses which should be part of the Backend Address Pool. |

### `backend_http_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |

### `frontend_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | No | - | The ID of the Subnet. |
| `private_ip_address` | string | No | - | The Private IP Address to use for the Application Gateway. |
| `public_ip_address_id` | string | No | - | The ID of a Public IP Address which the Application Gateway should use. The allocation method for the Public IP Address depends on the 'sku' of this Application Gateway. Please refer to the [Azure documentation for public IP addresses](https://docs.microsoft.com/azure/virtual-network/public-ip-addresses#application-gateways) for details. |
| `private_ip_address_allocation` | string | No | Dynamic | The Allocation Method for the Private IP Address. Possible values are 'Dynamic' and 'Static'. Defaults to 'Dynamic'. |
| `private_link_configuration_name` | string | No | - | The name of the private link configuration to use for this frontend IP configuration. |

### `frontend_port` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | Yes | - | The port used for this Frontend Port. |

### `gateway_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The ID of the Subnet which the Application Gateway should be connected to. |

### `http_listener` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frontend_ip_configuration_name` | string | Yes | - | The Name of the Frontend IP Configuration used for this HTTP Listener. |
| `frontend_port_name` | string | Yes | - | The Name of the Frontend Port use for this HTTP Listener. |
| `host_name` | string | No | - | The Hostname which should be used for this HTTP Listener. Setting this value changes Listener Type to 'Multi site'. |
| `host_names` | list | No | - | A list of Hostname(s) should be used for this HTTP Listener. It allows special wildcard characters. |
| `protocol` | string | Yes | - | The Protocol to use for this HTTP Listener. Possible values are 'Http' and 'Https'. |
| `require_sni` | bool | No | False | Should Server Name Indication be Required? Defaults to 'false'. |
| `ssl_certificate_name` | string | No | - | The name of the associated SSL Certificate which should be used for this HTTP Listener. |
| `custom_error_configuration` | block | No | - | One or more 'custom_error_configuration' blocks. |
| `firewall_policy_id` | string | No | - | The ID of the Web Application Firewall Policy which should be used for this HTTP Listener. |
| `ssl_profile_name` | string | No | - | The name of the associated SSL Profile which should be used for this HTTP Listener. |

### `request_routing_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `rule_type` | string | Yes | - | The Type of Routing that should be used for this Rule. Possible values are 'Basic' and 'PathBasedRouting'. |
| `http_listener_name` | string | Yes | - | The Name of the HTTP Listener which should be used for this Routing Rule. |
| `backend_address_pool_name` | string | No | - | The Name of the Backend Address Pool which should be used for this Routing Rule. Cannot be set if 'redirect_configuration_name' is set. |
| `backend_http_settings_name` | string | No | - | The Name of the Backend HTTP Settings Collection which should be used for this Routing Rule. Cannot be set if 'redirect_configuration_name' is set. |
| `redirect_configuration_name` | string | No | - | The Name of the Redirect Configuration which should be used for this Routing Rule. Cannot be set if either 'backend_address_pool_name' or 'backend_http_settings_name' is set. |
| `rewrite_rule_set_name` | string | No | - | The Name of the Rewrite Rule Set which should be used for this Routing Rule. Only valid for v2 SKUs. |
| `url_path_map_name` | string | No | - | The Name of the URL Path Map which should be associated with this Routing Rule. |
| `priority` | string | No | - | Rule evaluation order can be dictated by specifying an integer value from '1' to '20000' with '1' being the highest priority and '20000' being the lowest priority. |

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier` | string | Yes | - | The Tier of the SKU to use for this Application Gateway. Possible values are 'Standard', 'Standard_v2', 'WAF' and 'WAF_v2'. |
| `capacity` | string | No | - | The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between '1' and '32', and '1' to '125' for a V2 SKU. This property is optional if 'autoscale_configuration' is set. |

### `global` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `request_buffering_enabled` | bool | Yes | - | Whether Application Gateway's Request buffer is enabled. |
| `response_buffering_enabled` | bool | Yes | - | Whether Application Gateway's Response buffer is enabled. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Application Gateway. Only possible value is 'UserAssigned'. |
| `identity_ids` | string | Yes | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Application Gateway. |

### `private_link_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_configuration` | block | Yes | - | One or more 'ip_configuration' blocks. |

### `trusted_client_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data` | string | Yes | - | The base-64 encoded certificate. |

### `ssl_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `trusted_client_certificate_names` | string | No | - | The name of the Trusted Client Certificate that will be used to authenticate requests from clients. |
| `verify_client_cert_issuer_dn` | bool | No | False | Should client certificate issuer DN be verified? Defaults to 'false'. |
| `verify_client_certificate_revocation` | string | No | - | Specify the method to check client certificate revocation status. Possible value is 'OCSP'. |
| `ssl_policy` | block | No | - | a 'ssl_policy' block. |

### `authentication_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data` | string | Yes | - | The contents of the Authentication Certificate which should be used. |

### `trusted_root_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data` | string | No | - | The contents of the Trusted Root Certificate which should be used. Required if 'key_vault_secret_id' is not set. |
| `key_vault_secret_id` | string | No | - | The Secret ID of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in Azure KeyVault. You need to enable soft delete for the Key Vault to use this feature. Required if 'data' is not set. |

### `ssl_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disabled_protocols` | string | No | - | A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'. |
| `policy_type` | string | No | - | The Type of the Policy. Possible values are 'Predefined', 'Custom' and 'CustomV2'. |
| `policy_name` | string | No | - | The Name of the Policy e.g. AppGwSslPolicy20170401S. Required if 'policy_type' is set to 'Predefined'. Possible values can change over time and are published here <https://docs.microsoft.com/azure/application-gateway/application-gateway-ssl-policy-overview>. Not compatible with 'disabled_protocols'. |
| `cipher_suites` | string | No | - | A List of accepted cipher suites. Possible values are: 'TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA256', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA256', 'TLS_DHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_DHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA256' and 'TLS_RSA_WITH_AES_256_GCM_SHA384'. |
| `min_protocol_version` | string | No | - | The minimal TLS version. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'. |

### `probe` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `host` | string | No | - | The Hostname used for this Probe. If the Application Gateway is configured for a single site, by default the Host name should be specified as '127.0.0.1', unless otherwise configured in custom probe. Cannot be set if 'pick_host_name_from_backend_http_settings' is set to 'true'. |
| `interval` | string | Yes | - | The Interval between two consecutive probes in seconds. Possible values range from 1 second to a maximum of 86,400 seconds. |
| `protocol` | string | Yes | - | The Protocol used for this Probe. Possible values are 'Http' and 'Https'. |
| `path` | string | Yes | - | The Path used for this Probe. |
| `timeout` | string | Yes | - | The Timeout used for this Probe, which indicates when a probe becomes unhealthy. Possible values range from 1 second to a maximum of 86,400 seconds. |
| `unhealthy_threshold` | string | Yes | - | The Unhealthy Threshold for this Probe, which indicates the amount of retries which should be attempted before a node is deemed unhealthy. Possible values are from 1 to 20. |
| `port` | string | No | - | Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from HTTP settings will be used. This property is valid for Standard_v2 and WAF_v2 only. |
| `pick_host_name_from_backend_http_settings` | bool | No | False | Whether the host header should be picked from the backend HTTP settings. Defaults to 'false'. |
| `match` | block | No | - | A 'match' block. |
| `minimum_servers` | int | No | 0 | The minimum number of servers that are always marked as healthy. Defaults to '0'. |

### `ssl_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data` | string | No | - | The base64-encoded PFX certificate data. Required if 'key_vault_secret_id' is not set. |
| `password` | string | No | - | Password for the pfx file specified in data. Required if 'data' is set. |
| `key_vault_secret_id` | string | No | - | The Secret ID of (base-64 encoded unencrypted pfx) the 'Secret' or 'Certificate' object stored in Azure KeyVault. You need to enable soft delete for Key Vault to use this feature. Required if 'data' is not set. |

### `url_path_map` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_backend_address_pool_name` | string | No | - | The Name of the Default Backend Address Pool which should be used for this URL Path Map. Cannot be set if 'default_redirect_configuration_name' is set. |
| `default_backend_http_settings_name` | string | No | - | The Name of the Default Backend HTTP Settings Collection which should be used for this URL Path Map. Cannot be set if 'default_redirect_configuration_name' is set. |
| `default_redirect_configuration_name` | string | No | - | The Name of the Default Redirect Configuration which should be used for this URL Path Map. Cannot be set if either 'default_backend_address_pool_name' or 'default_backend_http_settings_name' is set. |
| `default_rewrite_rule_set_name` | string | No | - | The Name of the Default Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs. |
| `path_rule` | list | Yes | - | One or more 'path_rule' blocks. |

### `waf_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Is the Web Application Firewall enabled? |
| `firewall_mode` | string | Yes | - | The Web Application Firewall Mode. Possible values are 'Detection' and 'Prevention'. |
| `rule_set_type` | string | No | OWASP | The Type of the Rule Set used for this Web Application Firewall. Possible values are 'OWASP' and 'Microsoft_BotManagerRuleSet'. Defaults to 'OWASP'. |
| `rule_set_version` | string | Yes | - | The Version of the Rule Set used for this Web Application Firewall. Possible values are '0.1', '1.0', '2.2.9', '3.0', '3.1' and '3.2'. |
| `disabled_rule_group` | block | No | - | One or more 'disabled_rule_group' blocks. |
| `file_upload_limit_mb` | int | No | 100 | The File Upload Limit in MB. Accepted values are in the range '1'MB to '750'MB for the 'WAF_v2' SKU, and '1'MB to '500'MB for all other SKUs. Defaults to '100'MB. |
| `request_body_check` | bool | No | True | Is Request Body Inspection enabled? Defaults to 'true'. |
| `max_request_body_size_kb` | string | No | 128 | The Maximum Request Body Size in KB. Accepted values are in the range '1'KB to '128'KB. Defaults to '128'KB. |
| `exclusion` | block | No | - | One or more 'exclusion' blocks. |

### `custom_error_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `status_code` | string | Yes | - | Status code of the application gateway customer error. Possible values are 'HttpStatus403' and 'HttpStatus502' |
| `custom_error_page_url` | string | Yes | - | Error page URL of the application gateway customer error. |

### `redirect_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `redirect_type` | string | Yes | - | The type of redirect. Possible values are 'Permanent', 'Temporary', 'Found' and 'SeeOther' |
| `target_listener_name` | string | No | - | The name of the listener to redirect to. Cannot be set if 'target_url' is set. |
| `target_url` | string | No | - | The URL to redirect the request to. Cannot be set if 'target_listener_name' is set. |
| `include_path` | bool | No | False | Whether to include the path in the redirected URL. Defaults to 'false' |
| `include_query_string` | bool | No | False | Whether to include the query string in the redirected URL. Default to 'false' |

### `autoscale_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `min_capacity` | string | Yes | - | Minimum capacity for autoscaling. Accepted values are in the range '0' to '100'. |
| `max_capacity` | string | No | - | Maximum capacity for autoscaling. Accepted values are in the range '2' to '125'. |

### `rewrite_rule_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `rewrite_rule` | block | No | - | One or more 'rewrite_rule' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Rewrite Rule Set | 
| **authentication_certificate** | block | No  | A list of `authentication_certificate` blocks. | 
| **backend_address_pool** | block | No  | A list of `backend_address_pool` blocks. | 
| **backend_http_settings** | block | No  | A list of `backend_http_settings` blocks. | 
| **frontend_ip_configuration** | block | No  | A list of `frontend_ip_configuration` blocks. | 
| **frontend_port** | block | No  | A list of `frontend_port` blocks. | 
| **gateway_ip_configuration** | block | No  | A list of `gateway_ip_configuration` blocks. | 
| **http_listener** | block | No  | A list of `http_listener` blocks. | 
| **private_endpoint_connection** | block | No  | A list of `private_endpoint_connection` blocks. | 
| **private_link_configuration** | block | No  | A list of `private_link_configuration` blocks. | 
| **probe** | block | No  | A `probe` block. | 
| **request_routing_rule** | block | No  | A list of `request_routing_rule` blocks. | 
| **ssl_certificate** | block | No  | A list of `ssl_certificate` blocks. | 
| **url_path_map** | block | No  | A list of `url_path_map` blocks. | 
| **custom_error_configuration** | block | No  | A list of `custom_error_configuration` blocks. | 
| **redirect_configuration** | block | No  | A list of `redirect_configuration` blocks. | 
| **probe_id** | string | No  | The ID of the associated Probe. | 
| **private_link_configuration_id** | string | No  | The ID of the associated private link configuration. | 
| **frontend_ip_configuration_id** | string | No  | The ID of the associated Frontend Configuration. | 
| **frontend_port_id** | string | No  | The ID of the associated Frontend Port. | 
| **ssl_certificate_id** | string | No  | The ID of the associated SSL Certificate. | 
| **ssl_profile_id** | string | No  | The ID of the associated SSL Profile. | 
| **backend_address_pool_id** | string | No  | The ID of the associated Backend Address Pool. | 
| **backend_http_settings_id** | string | No  | The ID of the associated Backend HTTP Settings Configuration. | 
| **redirect_configuration_id** | string | No  | The ID of the associated Redirect Configuration. | 
| **rewrite_rule_set_id** | string | No  | The ID of the associated Rewrite Rule Set. | 
| **name** | string | No  | The name of the private endpoint connection. | 
| **http_listener_id** | string | No  | The ID of the associated HTTP Listener. | 
| **url_path_map_id** | string | No  | The ID of the associated URL Path Map. | 
| **public_cert_data** | string | No  | The Public Certificate Data associated with the SSL Certificate. | 
| **default_backend_address_pool_id** | string | No  | The ID of the Default Backend Address Pool. | 
| **default_backend_http_settings_id** | string | No  | The ID of the Default Backend HTTP Settings Collection. | 
| **default_redirect_configuration_id** | string | No  | The ID of the Default Redirect Configuration. | 
| **path_rule** | block | No  | A list of `path_rule` blocks. | 

Additionally, all variables are provided as outputs.
