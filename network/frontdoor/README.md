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
