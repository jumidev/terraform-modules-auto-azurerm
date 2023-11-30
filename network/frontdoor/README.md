# azurerm_frontdoor

!> **IMPORTANT** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new [Azure Front Door (standard/premium) resources](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_custom_domain). For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.Manages an Azure Front Door (classic) instance.Azure Front Door Service is Microsoft's highly available and scalable web application acceleration platform and global HTTP(S) load balancer. It provides built-in DDoS protection and application layer security and caching. Front Door enables you to build applications that maximize and automate high-availability and performance for your end-users. Use Front Door with Azure services including Web/Mobile Apps, Cloud Services and Virtual Machines – or combine it with on-premises services for hybrid deployments and smooth cloud migration.Below are some of the key scenarios that Azure Front Door Service addresses:* Use Front Door to improve application scale and availability with instant multi-region failover* Use Front Door to improve application performance with SSL offload and routing requests to the fastest available application backend.* Use Front Door for application layer security and DDoS protection for your application.!> **Be Aware:** Microsoft rolled out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. [More information is available in this GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) - however unfortunately this may necessitate a breaking change to the CDN and Front Door resources, more information will be posted [in the GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) as the necessary changes are identified.!> **BREAKING CHANGE:** The `custom_https_provisioning_enabled` field and the `custom_https_configuration` block have been removed from the `azurerm_frontdoor` resource in the `v2.58.0` provider due to changes made by the service team. If you wish to enable the custom HTTPS configuration functionality within your `azurerm_frontdoor` resource moving forward you will need to define a separate `azurerm_frontdoor_custom_https_configuration` block in your configuration file.!> **BREAKING CHANGE:** With the release of the `v2.58.0` provider, if you run the `apply` command against an existing Front Door resource it **will not** apply the detected changes. Instead it will persist the `explicit_resource_order` mapping structure to the state file. Once this operation has completed the resource will resume functioning normally.This change in behavior in Terraform is due to an issue where the underlying service teams API is now returning the response JSON out of order from the way it was sent to the resource via Terraform causing unexpected discrepancies in the `plan` after the resource has been provisioned. If your pre-existing Front Door instance contains `custom_https_configuration` blocks there are additional steps that will need to be completed to successfully migrate your Front Door onto the `v2.58.0` provider which [can be found in this guide](https://registry.terraform.io/providers/hashicorp/azurerm/2.59.0/docs/guides/2.58.0-frontdoor-upgrade-guide).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/frontdoor" 
}

inputs = {
   name = "name of frontdoor" 
   resource_group_name = "${resource_group}" 
   backend_pool = "backend_pool of frontdoor" 
   backend_pool_health_probe = "backend_pool_health_probe of frontdoor" 
   backend_pool_load_balancing = "backend_pool_load_balancing of frontdoor" 
   frontend_endpoint = "frontend_endpoint of frontdoor" 
   routing_rule = "routing_rule of frontdoor" 
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
| **var.name** | string | True | -  |  Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created. | 
| **var.backend_pool** | block | True | -  |  A `backend_pool` block. | 
| **var.backend_pool_health_probe** | block | True | -  |  A `backend_pool_health_probe` block. | 
| **var.backend_pool_load_balancing** | block | True | -  |  A `backend_pool_load_balancing` block. | 
| **var.load_balancer_enabled** | bool | False | `True`  |  Should the Front Door Load Balancer be Enabled? Defaults to `true`. | 
| **var.friendly_name** | string | False | -  |  A friendly name for the Front Door service. | 
| **var.backend_pool_settings** | block | False | -  |  A `backend_pool_settings` block. | 
| **var.frontend_endpoint** | block | True | -  |  A `frontend_endpoint` block. | 
| **var.routing_rule** | block | True | -  |  A `routing_rule` block. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 

### `backend_pool` block structure

> `name` (string): (REQUIRED) Specifies the name of the Backend Pool.\
> `backend` (block): (REQUIRED) A 'backend' block.\
> `load_balancing_name` (string): (REQUIRED) Specifies the name of the 'backend_pool_load_balancing' block within this resource to use for this 'Backend Pool'.\
> `health_probe_name` (string): (REQUIRED) Specifies the name of the 'backend_pool_health_probe' block within this resource to use for this 'Backend Pool'.\

### `backend_pool_health_probe` block structure

> `name` (string): (REQUIRED) Specifies the name of the Health Probe.\
> `enabled` (bool): Is this health probe enabled? Defaults to 'true'.\
> `path` (string): The path to use for the Health Probe. Default is '/'.\
> `protocol` (string): Protocol scheme to use for the Health Probe. Possible values are 'Http' and 'Https'. Defaults to 'Http'.\
> `probe_method` (string): Specifies HTTP method the health probe uses when querying the backend pool instances. Possible values include: 'GET' and 'HEAD'. Defaults to 'GET'.\
> `interval_in_seconds` (int): The number of seconds between each Health Probe. Defaults to '120'.\

### `backend_pool_load_balancing` block structure

> `name` (string): (REQUIRED) Specifies the name of the Load Balancer.\
> `sample_size` (int): The number of samples to consider for load balancing decisions. Defaults to '4'.\
> `successful_samples_required` (int): The number of samples within the sample period that must succeed. Defaults to '2'.\
> `additional_latency_milliseconds` (int): The additional latency in milliseconds for probes to fall into the lowest latency bucket. Defaults to '0'.\

### `backend_pool_settings` block structure

> `backend_pools_send_receive_timeout_seconds` (string): Specifies the send and receive timeout on forwarding request to the backend. When the timeout is reached, the request fails and returns. Possible values are between '0' - '240'. Defaults to '60'.\
> `enforce_backend_pools_certificate_name_check` (bool): (REQUIRED) Enforce certificate name check on 'HTTPS' requests to all backend pools, this setting will have no effect on 'HTTP' requests. Permitted values are 'true' or 'false'.\

### `frontend_endpoint` block structure

> `name` (string): (REQUIRED) Specifies the name of the 'frontend_endpoint'.\
> `host_name` (string): (REQUIRED) Specifies the host name of the 'frontend_endpoint'. Must be a domain name. In order to use a name.azurefd.net domain, the name value must match the Front Door name.\
> `session_affinity_enabled` (bool): Whether to allow session affinity on this host. Valid options are 'true' or 'false' Defaults to 'false'.\
> `session_affinity_ttl_seconds` (int): The TTL to use in seconds for session affinity, if applicable. Defaults to '0'.\
> `web_application_firewall_policy_link_id` (string): Defines the Web Application Firewall policy 'ID' for each host.\

### `routing_rule` block structure

> `name` (string): (REQUIRED) Specifies the name of the Routing Rule.\
> `frontend_endpoints` (string): (REQUIRED) The names of the 'frontend_endpoint' blocks within this resource to associate with this 'routing_rule'.\
> `accepted_protocols` (string): (REQUIRED) Protocol schemes to match for the Backend Routing Rule. Possible values are 'Http' and 'Https'.\
> `patterns_to_match` (string): (REQUIRED) The route patterns for the Backend Routing Rule.\
> `enabled` (bool): 'Enable' or 'Disable' use of this Backend Routing Rule. Permitted values are 'true' or 'false'. Defaults to 'true'.\
> `forwarding_configuration` (block): A 'forwarding_configuration' block.\
> `redirect_configuration` (block): A 'redirect_configuration' block.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **backend_pool_health_probes** | string | No  | A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value) | 
| **backend_pool_load_balancing_settings** | string | No  | A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value) | 
| **backend_pools** | string | No  | A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value) | 
| **frontend_endpoints** | string | No  | A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value) | 
| **routing_rules** | string | No  | A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value) | 
| **id** | string | No  | The ID of the FrontDoor. | 
| **cname** | string | No  | The host that each frontendEndpoint must CNAME to. | 
| **header_frontdoor_id** | string | No  | The unique ID of the Front Door which is embedded into the incoming headers `X-Azure-FDID` attribute and maybe used to filter traffic sent by the Front Door to your backend. | 

Additionally, all variables are provided as outputs.
