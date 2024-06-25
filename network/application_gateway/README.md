# azurerm_application_gateway



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/application_gateway"   
}
inputs = {
   name = "The name of the Application Gateway"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   backend_address_pools = {
      pool_1 = {
         fqdns = "..."         
         ip_addresses = "..."         
      }      
      pool_2 = {
         ...
      }      
   }   
   backend_http_settingss = {
      settings_1 = {
      }      
      settings_2 = {
         ...
      }      
   }   
   frontend_ip_configurations = {
      configuration_1 = {
         # subnet_id → (optional) set in component_inputs
         private_ip_address = "..."         
         # public_ip_address_id → (optional) set in component_inputs
         private_ip_address_allocation = "Dynamic"         
         private_link_configuration_name = "..."         
      }      
      configuration_2 = {
         ...
      }      
   }   
   frontend_ports = {
      port_1 = {
         port = "..."         
      }      
      port_2 = {
         ...
      }      
   }   
   gateway_ip_configurations = {
      configuration_1 = {
         # subnet_id → set in component_inputs
      }      
      configuration_2 = {
         ...
      }      
   }   
   http_listeners = {
      listener_1 = {
         # frontend_ip_configuration_name → set in component_inputs
         frontend_port_name = "..."         
         host_name = "..."         
         host_names = "..."         
         protocol = "Http | Https"         
         require_sni = false         
         ssl_certificate_name = "..."         
         custom_error_configuration = "..."         
         # firewall_policy_id → (optional) set in component_inputs
         ssl_profile_name = "..."         
      }      
      listener_2 = {
         ...
      }      
   }   
   request_routing_rules = {
      rule_1 = {
         rule_type = "Basic | PathBasedRouting"         
         http_listener_name = "..."         
         backend_address_pool_name = "..."         
         backend_http_settings_name = "..."         
         redirect_configuration_name = "..."         
         rewrite_rule_set_name = "..."         
         url_path_map_name = "..."         
         priority = "1 | 20000 | priority | sku[0].tier | *_v2"         
      }      
      rule_2 = {
         ...
      }      
   }   
   sku = {
      name = "..."      
      tier = "..."      
   }   
}
component_inputs = {
   frontend_ip_configurations.configuration_1.subnet_id = "path/to/subnet_component:id"   
   frontend_ip_configurations.configuration_1.public_ip_address_id = "path/to/public_ip_component:id"   
   gateway_ip_configurations.configuration_1.subnet_id = "path/to/subnet_component:id"   
   http_listeners.listener_1.frontend_ip_configuration_name = "path/to/lb_outbound_rule_component:frontend_ip_configuration"   
   http_listeners.listener_1.firewall_policy_id = "path/to/firewall_policy_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Application Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created. | 
| **backend_address_pools** | [block](#backend_address_pool-block-structure) |  One or more `backend_address_pool` blocks. | 
| **backend_http_settingss** | [block](#backend_http_settings-block-structure) |  One or more `backend_http_settings` blocks. | 
| **frontend_ip_configurations** | [block](#frontend_ip_configuration-block-structure) |  One or more `frontend_ip_configuration` blocks. | 
| **frontend_ports** | [block](#frontend_port-block-structure) |  One or more `frontend_port` blocks. | 
| **gateway_ip_configurations** | [block](#gateway_ip_configuration-block-structure) |  One or more `gateway_ip_configuration` blocks. | 
| **http_listeners** | [block](#http_listener-block-structure) |  One or more `http_listener` blocks. | 
| **request_routing_rules** | [block](#request_routing_rule-block-structure) |  One or more `request_routing_rule` blocks. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **fips_enabled** | bool |  -  |  Is FIPS enabled on the Application Gateway? | 
| **global** | [block](#global-block-structure) |  -  |  A `global` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **private_link_configurations** | [block](#private_link_configuration-block-structure) |  -  |  One or more `private_link_configuration` blocks. | 
| **zones** | list |  -  |  Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created. -> **Please Note**: Availability Zones are not supported in all regions at this time, please check the [official documentation](https://docs.microsoft.com/azure/availability-zones/az-overview) for more information. They are also only supported for [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/application-gateway-autoscaling-zone-redundant) | 
| **trusted_client_certificates** | [block](#trusted_client_certificate-block-structure) |  -  |  One or more `trusted_client_certificate` blocks. | 
| **ssl_profiles** | [block](#ssl_profile-block-structure) |  -  |  One or more `ssl_profile` blocks. | 
| **authentication_certificates** | [block](#authentication_certificate-block-structure) |  -  |  One or more `authentication_certificate` blocks. | 
| **trusted_root_certificates** | [block](#trusted_root_certificate-block-structure) |  -  |  One or more `trusted_root_certificate` blocks. | 
| **ssl_policy** | [block](#ssl_policy-block-structure) |  -  |  a `ssl_policy` block. | 
| **enable_http2** | bool |  `False`  |  Is HTTP2 enabled on the application gateway resource? Defaults to `false`. | 
| **force_firewall_policy_association** | bool |  -  |  Is the Firewall Policy associated with the Application Gateway? | 
| **probes** | [block](#probe-block-structure) |  -  |  One or more `probe` blocks. | 
| **ssl_certificates** | [block](#ssl_certificate-block-structure) |  -  |  One or more `ssl_certificate` blocks. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 
| **url_path_maps** | [block](#url_path_map-block-structure) |  -  |  One or more `url_path_map` blocks. | 
| **waf_configuration** | [block](#waf_configuration-block-structure) |  -  |  A `waf_configuration` block. | 
| **custom_error_configurations** | [block](#custom_error_configuration-block-structure) |  -  |  One or more `custom_error_configuration` blocks. | 
| **firewall_policy_id** | string |  -  |  The ID of the Web Application Firewall Policy. | 
| **redirect_configurations** | [block](#redirect_configuration-block-structure) |  -  |  One or more `redirect_configuration` blocks. | 
| **autoscale_configuration** | [block](#autoscale_configuration-block-structure) |  -  |  An `autoscale_configuration` block. | 
| **rewrite_rule_sets** | [block](#rewrite_rule_set-block-structure) |  -  |  One or more `rewrite_rule_set` blocks. Only valid for v2 SKUs. | 

### `ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the IP configuration. |
| `subnet_id` | string | Yes | - | The ID of the subnet the private link configuration should connect to. |
| `private_ip_address_allocation` | string | Yes | Dynamic | The allocation method used for the Private IP Address. Possible values are 'Dynamic' and 'Static'. |
| `primary` | bool | Yes | True | Is this the Primary IP Configuration? |
| `private_ip_address` | string | No | - | The Static IP Address which should be used. |

### `ssl_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the SSL Profile that is unique within this Application Gateway. |
| `trusted_client_certificate_names` | string | No | - | The name of the Trusted Client Certificate that will be used to authenticate requests from clients. |
| `verify_client_cert_issuer_dn` | bool | No | False | Should client certificate issuer DN be verified? Defaults to 'false'. |
| `verify_client_certificate_revocation` | string | No | - | Specify the method to check client certificate revocation status. Possible value is 'OCSP'. |
| `ssl_policy` | [block](#ssl_policy-block-structure) | No | - | a 'ssl_policy' block. |

### `custom_error_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `status_code` | string | Yes | - | Status code of the application gateway customer error. Possible values are 'HttpStatus403' and 'HttpStatus502' |
| `custom_error_page_url` | string | Yes | - | Error page URL of the application gateway customer error. |

### `backend_address_pool` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Backend Address Pool. |
| `fqdns` | list | No | - | A list of FQDN's which should be part of the Backend Address Pool. |
| `ip_addresses` | list | No | - | A list of IP Addresses which should be part of the Backend Address Pool. |

### `trusted_client_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Trusted Client Certificate that is unique within this Application Gateway. |
| `data` | string | Yes | - | The base-64 encoded certificate. |

### `authentication_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the Authentication Certificate to use. |
| `data` | string | Yes | - | The contents of the Authentication Certificate which should be used. |

### `global` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `request_buffering_enabled` | bool | Yes | - | Whether Application Gateway's Request buffer is enabled. |
| `response_buffering_enabled` | bool | Yes | - | Whether Application Gateway's Response buffer is enabled. |

### `disabled_rule_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `rule_group_name` | string | Yes | - | The rule group where specific rules should be disabled. Possible values are 'BadBots', 'crs_20_protocol_violations', 'crs_21_protocol_anomalies', 'crs_23_request_limits', 'crs_30_http_policy', 'crs_35_bad_robots', 'crs_40_generic_attacks', 'crs_41_sql_injection_attacks', 'crs_41_xss_attacks', 'crs_42_tight_security', 'crs_45_trojans', 'crs_49_inbound_blocking', 'General', 'GoodBots', 'KnownBadBots', 'Known-CVEs', 'REQUEST-911-METHOD-ENFORCEMENT', 'REQUEST-913-SCANNER-DETECTION', 'REQUEST-920-PROTOCOL-ENFORCEMENT', 'REQUEST-921-PROTOCOL-ATTACK', 'REQUEST-930-APPLICATION-ATTACK-LFI', 'REQUEST-931-APPLICATION-ATTACK-RFI', 'REQUEST-932-APPLICATION-ATTACK-RCE', 'REQUEST-933-APPLICATION-ATTACK-PHP', 'REQUEST-941-APPLICATION-ATTACK-XSS', 'REQUEST-942-APPLICATION-ATTACK-SQLI', 'REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION', 'REQUEST-944-APPLICATION-ATTACK-JAVA', 'UnknownBots', 'METHOD-ENFORCEMENT', 'PROTOCOL-ENFORCEMENT', 'PROTOCOL-ATTACK', 'LFI', 'RFI', 'RCE', 'PHP', 'NODEJS', 'XSS', 'SQLI', 'FIX', 'JAVA', 'MS-ThreatIntel-WebShells', 'MS-ThreatIntel-AppSec', 'MS-ThreatIntel-SQLI' and 'MS-ThreatIntel-CVEs'. |
| `rules` | list | No | - | A list of rules which should be disabled in that group. Disables all rules in the specified group if 'rules' is not specified. |

### `request_routing_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of this Request Routing Rule. |
| `rule_type` | string | Yes | - | The Type of Routing that should be used for this Rule. Possible values are 'Basic' and 'PathBasedRouting'. |
| `http_listener_name` | string | Yes | - | The Name of the HTTP Listener which should be used for this Routing Rule. |
| `backend_address_pool_name` | string | No | - | The Name of the Backend Address Pool which should be used for this Routing Rule. Cannot be set if 'redirect_configuration_name' is set. |
| `backend_http_settings_name` | string | No | - | The Name of the Backend HTTP Settings Collection which should be used for this Routing Rule. Cannot be set if 'redirect_configuration_name' is set. |
| `redirect_configuration_name` | string | No | - | The Name of the Redirect Configuration which should be used for this Routing Rule. Cannot be set if either 'backend_address_pool_name' or 'backend_http_settings_name' is set. |
| `rewrite_rule_set_name` | string | No | - | The Name of the Rewrite Rule Set which should be used for this Routing Rule. Only valid for v2 SKUs. -> **NOTE:** 'backend_address_pool_name', 'backend_http_settings_name', 'redirect_configuration_name', and 'rewrite_rule_set_name' are applicable only when 'rule_type' is 'Basic'. |
| `url_path_map_name` | string | No | - | The Name of the URL Path Map which should be associated with this Routing Rule. |
| `priority` | string | No | - | Rule evaluation order can be dictated by specifying an integer value from '1' to '20000' with '1' being the highest priority and '20000' being the lowest priority. -> **NOTE:** 'priority' is required when 'sku[0].tier' is set to '*_v2'. |

### `exclusion` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `match_variable` | string | Yes | - | Match variable of the exclusion rule to exclude header, cookie or GET arguments. Possible values are 'RequestArgKeys', 'RequestArgNames', 'RequestArgValues', 'RequestCookieKeys', 'RequestCookieNames', 'RequestCookieValues', 'RequestHeaderKeys', 'RequestHeaderNames' and 'RequestHeaderValues' |
| `selector_match_operator` | string | No | - | Operator which will be used to search in the variable content. Possible values are 'Contains', 'EndsWith', 'Equals', 'EqualsAny' and 'StartsWith'. If empty will exclude all traffic on this 'match_variable' |
| `selector` | string | No | - | String value which will be used for the filter operation. If empty will exclude all traffic on this 'match_variable' |

### `private_link_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the private link configuration. |
| `ip_configuration` | [block](#ip_configuration-block-structure) | Yes | - | One or more 'ip_configuration' blocks. -> **Please Note**: The 'AllowApplicationGatewayPrivateLink' feature must be registered on the subscription before enabling private link '''bash az feature register --name AllowApplicationGatewayPrivateLink --namespace Microsoft.Network ''' |

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the SKU to use for this Application Gateway. Possible values are 'Standard_Small', 'Standard_Medium', 'Standard_Large', 'Standard_v2', 'WAF_Medium', 'WAF_Large', and 'WAF_v2'. |
| `tier` | string | Yes | - | The Tier of the SKU to use for this Application Gateway. Possible values are 'Standard', 'Standard_v2', 'WAF' and 'WAF_v2'. !> **NOTE:** The 'Standard' and 'WAF' SKU have been deprecated in favour of the 'Standard_v2' and 'WAF_v2' SKU. Please see the [Azure documentation](https://aka.ms/V1retirement) for more details. |
| `capacity` | string | No | - | The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between '1' and '32', and '1' to '125' for a V2 SKU. This property is optional if 'autoscale_configuration' is set. |

### `rewrite_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Unique name of the rewrite rule block |
| `rule_sequence` | string | Yes | - | Rule sequence of the rewrite rule that determines the order of execution in a set. |
| `condition` | string | No | - | One or more 'condition' blocks. |
| `request_header_configuration` | string | No | - | One or more 'request_header_configuration' blocks. |
| `response_header_configuration` | string | No | - | One or more 'response_header_configuration' blocks. |
| `url` | [block](#url-block-structure) | No | - | One 'url' block |

### `backend_http_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Authentication Certificate. |

### `match` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `body` | string | No | - | A snippet from the Response Body which must be present in the Response. |
| `status_code` | list | Yes | - | A list of allowed status codes for this Health Probe. |

### `ssl_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the SSL certificate that is unique within this Application Gateway |
| `data` | string | No | - | The base64-encoded PFX certificate data. Required if 'key_vault_secret_id' is not set. -> **NOTE:** When specifying a file, use 'data = filebase64('path/to/file')' to encode the contents of that file. |
| `password` | string | No | - | Password for the pfx file specified in data. Required if 'data' is set. |
| `key_vault_secret_id` | string | No | - | The Secret ID of (base-64 encoded unencrypted pfx) the 'Secret' or 'Certificate' object stored in Azure KeyVault. You need to enable soft delete for Key Vault to use this feature. Required if 'data' is not set. -> **NOTE:** TLS termination with Key Vault certificates is limited to the [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/key-vault-certs). -> **NOTE:** For TLS termination with Key Vault certificates to work properly existing user-assigned managed identity, which Application Gateway uses to retrieve certificates from Key Vault, should be defined via 'identity' block. Additionally, access policies in the Key Vault to allow the identity to be granted *get* access to the secret should be defined. |

### `redirect_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Unique name of the redirect configuration block |
| `redirect_type` | string | Yes | - | The type of redirect. Possible values are 'Permanent', 'Temporary', 'Found' and 'SeeOther' |
| `target_listener_name` | string | No | - | The name of the listener to redirect to. Cannot be set if 'target_url' is set. |
| `target_url` | string | No | - | The URL to redirect the request to. Cannot be set if 'target_listener_name' is set. |
| `include_path` | bool | No | False | Whether to include the path in the redirected URL. Defaults to 'false' |
| `include_query_string` | bool | No | False | Whether to include the query string in the redirected URL. Default to 'false' |

### `ssl_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disabled_protocols` | list | No | - | A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'. ~> **NOTE:** 'disabled_protocols' cannot be set when 'policy_name' or 'policy_type' are set. |
| `policy_type` | string | No | - | The Type of the Policy. Possible values are 'Predefined', 'Custom' and 'CustomV2'. ~> **NOTE:** 'policy_type' is Required when 'policy_name' is set - cannot be set if 'disabled_protocols' is set. When using a 'policy_type' of 'Predefined' the following fields are supported: |
| `policy_name` | string | No | - | The Name of the Policy e.g. AppGwSslPolicy20170401S. Required if 'policy_type' is set to 'Predefined'. Possible values can change over time and are published here <https://docs.microsoft.com/azure/application-gateway/application-gateway-ssl-policy-overview>. Not compatible with 'disabled_protocols'. When using a 'policy_type' of 'Custom' the following fields are supported: |
| `cipher_suites` | list | No | - | A List of accepted cipher suites. Possible values are: 'TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA256', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA256', 'TLS_DHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_DHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA256' and 'TLS_RSA_WITH_AES_256_GCM_SHA384'. |
| `min_protocol_version` | string | No | - | The minimal TLS version. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'. |

### `autoscale_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `min_capacity` | string | Yes | - | Minimum capacity for autoscaling. Accepted values are in the range '0' to '100'. |
| `max_capacity` | string | No | - | Maximum capacity for autoscaling. Accepted values are in the range '2' to '125'. |

### `url_path_map` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the URL Path Map. |
| `default_backend_address_pool_name` | string | No | - | The Name of the Default Backend Address Pool which should be used for this URL Path Map. Cannot be set if 'default_redirect_configuration_name' is set. |
| `default_backend_http_settings_name` | string | No | - | The Name of the Default Backend HTTP Settings Collection which should be used for this URL Path Map. Cannot be set if 'default_redirect_configuration_name' is set. |
| `default_redirect_configuration_name` | string | No | - | The Name of the Default Redirect Configuration which should be used for this URL Path Map. Cannot be set if either 'default_backend_address_pool_name' or 'default_backend_http_settings_name' is set. -> **NOTE:** Both 'default_backend_address_pool_name' and 'default_backend_http_settings_name' or 'default_redirect_configuration_name' should be specified. |
| `default_rewrite_rule_set_name` | string | No | - | The Name of the Default Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs. |
| `path_rule` | string | Yes | - | One or more 'path_rule' blocks. |

### `http_listener` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the HTTP Listener. |
| `frontend_ip_configuration_name` | string | Yes | primary | The Name of the Frontend IP Configuration used for this HTTP Listener. |
| `frontend_port_name` | string | Yes | - | The Name of the Frontend Port use for this HTTP Listener. |
| `host_name` | string | No | - | The Hostname which should be used for this HTTP Listener. Setting this value changes Listener Type to 'Multi site'. |
| `host_names` | list | No | - | A list of Hostname(s) should be used for this HTTP Listener. It allows special wildcard characters. -> **NOTE** The 'host_names' and 'host_name' are mutually exclusive and cannot both be set. |
| `protocol` | string | Yes | - | The Protocol to use for this HTTP Listener. Possible values are 'Http' and 'Https'. |
| `require_sni` | bool | No | False | Should Server Name Indication be Required? Defaults to 'false'. |
| `ssl_certificate_name` | string | No | - | The name of the associated SSL Certificate which should be used for this HTTP Listener. |
| `custom_error_configuration` | [block](#custom_error_configuration-block-structure) | No | - | One or more 'custom_error_configuration' blocks. |
| `firewall_policy_id` | string | No | - | The ID of the Web Application Firewall Policy which should be used for this HTTP Listener. |
| `ssl_profile_name` | string | No | - | The name of the associated SSL Profile which should be used for this HTTP Listener. |

### `rewrite_rule_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Unique name of the rewrite rule set block |
| `rewrite_rule` | [block](#rewrite_rule-block-structure) | No | - | One or more 'rewrite_rule' blocks. |

### `probe` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `host` | string | No | - | The Hostname used for this Probe. If the Application Gateway is configured for a single site, by default the Host name should be specified as '127.0.0.1', unless otherwise configured in custom probe. Cannot be set if 'pick_host_name_from_backend_http_settings' is set to 'true'. |
| `interval` | string | Yes | - | The Interval between two consecutive probes in seconds. Possible values range from 1 second to a maximum of 86,400 seconds. |
| `name` | string | Yes | - | The Name of the Probe. |
| `protocol` | string | Yes | - | The Protocol used for this Probe. Possible values are 'Http' and 'Https'. |
| `path` | string | Yes | - | The Path used for this Probe. |
| `timeout` | string | Yes | - | The Timeout used for this Probe, which indicates when a probe becomes unhealthy. Possible values range from 1 second to a maximum of 86,400 seconds. |
| `unhealthy_threshold` | string | Yes | - | The Unhealthy Threshold for this Probe, which indicates the amount of retries which should be attempted before a node is deemed unhealthy. Possible values are from 1 to 20. |
| `port` | string | No | - | Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from HTTP settings will be used. This property is valid for Standard_v2 and WAF_v2 only. |
| `pick_host_name_from_backend_http_settings` | bool | No | False | Whether the host header should be picked from the backend HTTP settings. Defaults to 'false'. |
| `match` | [block](#match-block-structure) | No | - | A 'match' block. |
| `minimum_servers` | number | No | 0 | The minimum number of servers that are always marked as healthy. Defaults to '0'. |

### `url` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | No | - | The URL path to rewrite. |
| `query_string` | string | No | - | The query string to rewrite. |
| `components` | string | No | - | The components used to rewrite the URL. Possible values are 'path_only' and 'query_string_only' to limit the rewrite to the URL Path or URL Query String only. ~> **Note:** One or both of 'path' and 'query_string' must be specified. If one of these is not specified, it means the value will be empty. If you only want to rewrite 'path' or 'query_string', use 'components'. |
| `reroute` | bool | No | - | Whether the URL path map should be reevaluated after this rewrite has been applied. [More info on rewrite configuration](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers-url#rewrite-configuration) |

### `frontend_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Frontend IP Configuration. |
| `subnet_id` | string | No | - | The ID of the Subnet. |
| `private_ip_address` | string | No | - | The Private IP Address to use for the Application Gateway. |
| `public_ip_address_id` | string | No | - | The ID of a Public IP Address which the Application Gateway should use. The allocation method for the Public IP Address depends on the 'sku' of this Application Gateway. Please refer to the [Azure documentation for public IP addresses](https://docs.microsoft.com/azure/virtual-network/public-ip-addresses#application-gateways) for details. |
| `private_ip_address_allocation` | string | No | Dynamic | The Allocation Method for the Private IP Address. Possible values are 'Dynamic' and 'Static'. Defaults to 'Dynamic'. |
| `private_link_configuration_name` | string | No | - | The name of the private link configuration to use for this frontend IP configuration. |

### `trusted_root_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the Trusted Root Certificate to use. |
| `data` | string | No | - | The contents of the Trusted Root Certificate which should be used. Required if 'key_vault_secret_id' is not set. |
| `key_vault_secret_id` | string | No | - | The Secret ID of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in Azure KeyVault. You need to enable soft delete for the Key Vault to use this feature. Required if 'data' is not set. -> **NOTE:** TLS termination with Key Vault certificates is limited to the [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/key-vault-certs). -> **NOTE:** For TLS termination with Key Vault certificates to work properly existing user-assigned managed identity, which Application Gateway uses to retrieve certificates from Key Vault, should be defined via 'identity' block. Additionally, access policies in the Key Vault to allow the identity to be granted *get* access to the secret should be defined. |

### `gateway_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of this Gateway IP Configuration. |
| `subnet_id` | string | Yes | - | The ID of the Subnet which the Application Gateway should be connected to. |

### `waf_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Is the Web Application Firewall enabled? |
| `firewall_mode` | string | Yes | - | The Web Application Firewall Mode. Possible values are 'Detection' and 'Prevention'. |
| `rule_set_type` | string | No | OWASP | The Type of the Rule Set used for this Web Application Firewall. Possible values are 'OWASP', 'Microsoft_BotManagerRuleSet' and 'Microsoft_DefaultRuleSet'. Defaults to 'OWASP'. |
| `rule_set_version` | string | Yes | - | The Version of the Rule Set used for this Web Application Firewall. Possible values are '0.1', '1.0', '2.1', '2.2.9', '3.0', '3.1' and '3.2'. |
| `disabled_rule_group` | [block](#disabled_rule_group-block-structure) | No | - | One or more 'disabled_rule_group' blocks. |
| `file_upload_limit_mb` | number | No | 100 | The File Upload Limit in MB. Accepted values are in the range '1'MB to '750'MB for the 'WAF_v2' SKU, and '1'MB to '500'MB for all other SKUs. Defaults to '100'MB. |
| `request_body_check` | bool | No | True | Is Request Body Inspection enabled? Defaults to 'true'. |
| `max_request_body_size_kb` | string | No | 128 | The Maximum Request Body Size in KB. Accepted values are in the range '1'KB to '128'KB. Defaults to '128'KB. |
| `exclusion` | [block](#exclusion-block-structure) | No | - | One or more 'exclusion' blocks. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Application Gateway. Only possible value is 'UserAssigned'. |
| `identity_ids` | list | Yes | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Application Gateway. |

### `frontend_port` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Frontend Port. |
| `port` | string | Yes | - | The port used for this Frontend Port. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **reroute** | bool | No  | Whether the URL path map should be reevaluated after this rewrite has been applied. [More info on rewrite configuration](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers-url#rewrite-configuration) In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Rewrite Rule Set | 
| **authentication_certificate** | list | No  | A list of `authentication_certificate` blocks. | 
| **backend_address_pool** | list | No  | A list of `backend_address_pool` blocks. | 
| **backend_http_settings** | list | No  | A list of `backend_http_settings` blocks. | 
| **frontend_ip_configuration** | list | No  | A list of `frontend_ip_configuration` blocks. | 
| **frontend_port** | list | No  | A list of `frontend_port` blocks. | 
| **gateway_ip_configuration** | list | No  | A list of `gateway_ip_configuration` blocks. | 
| **http_listener** | list | No  | A list of `http_listener` blocks. | 
| **private_endpoint_connection** | list | No  | A list of `private_endpoint_connection` blocks. | 
| **private_link_configuration** | list | No  | A list of `private_link_configuration` blocks. | 
| **probe** | block | No  | A `probe` block. | 
| **request_routing_rule** | list | No  | A list of `request_routing_rule` blocks. | 
| **ssl_certificate** | list | No  | A list of `ssl_certificate` blocks. | 
| **url_path_map** | list | No  | A list of `url_path_map` blocks. | 
| **custom_error_configuration** | list | No  | A list of `custom_error_configuration` blocks. | 
| **redirect_configuration** | list | No  | A list of `redirect_configuration` blocks. | 
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
| **path_rule** | list | No  | A list of `path_rule` blocks. | 

Additionally, all variables are provided as outputs.
