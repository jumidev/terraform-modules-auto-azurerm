# azurerm_app_service_environment_v3

Manages a 3rd Generation (v3) App Service Environment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_environment_v3" 
}

inputs = {
   name = "name of app_service_environment_v3" 
   resource_group_name = "subnet_id" 
   subnet_id = "subnet_id of app_service_environment_v3" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the App Service Environment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | `subnet_id`  |  -  |  The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | -  |  -  |  The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created. | 
| **var.allow_new_private_endpoint_connections** | bool | False | `True`  |  -  |  Should new Private Endpoint Connections be allowed. Defaults to `true`. | 
| **var.cluster_setting** | block | False | -  |  -  |  Zero or more `cluster_setting` blocks. | 
| **var.dedicated_host_count** | string | False | -  |  `2`  |  This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created. | 
| **var.zone_redundant** | string | False | -  |  -  |  Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created. | 
| **var.internal_load_balancing_mode** | string | False | `None`  |  `None`, `"Web, Publishing"`  |  Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `cluster_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `value` | string | Yes | - | The value for the Cluster Setting. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Environment. | 
| **dns_suffix** | string | No  | the DNS suffix for this App Service Environment V3. | 
| **external_inbound_ip_addresses** | string | No  | The external inbound IP addresses of the App Service Environment V3. | 
| **inbound_network_dependencies** | block | No  | An `inbound_network_dependencies` block. | 
| **internal_inbound_ip_addresses** | string | No  | The internal inbound IP addresses of the App Service Environment V3. | 
| **ip_ssl_address_count** | int | No  | The number of IP SSL addresses reserved for the App Service Environment V3. | 
| **linux_outbound_ip_addresses** | string | No  | Outbound addresses of Linux based Apps in this App Service Environment V3 | 
| **location** | string | No  | The location where the App Service Environment exists. | 
| **pricing_tier** | string | No  | Pricing tier for the front end instances. | 
| **windows_outbound_ip_addresses** | string | No  | Outbound addresses of Windows based Apps in this App Service Environment V3. | 
| **description** | string | No  | A short description of the purpose of the network traffic. | 
| **ip_addresses** | list | No  | A list of IP addresses that network traffic will originate from in CIDR notation. | 
| **ports** | string | No  | The ports that network traffic will arrive to the App Service Environment V3 on. | 

Additionally, all variables are provided as outputs.
