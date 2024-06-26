# azurerm_container_app_environment



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container_apps/container_app_environment"   
}
inputs = {
   name = "The name of the Container Apps Managed Environment"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  The name of the Container Apps Managed Environment. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **dapr_application_insights_connection_string** | string |  -  |  Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created. | 
| **infrastructure_resource_group_name** | string |  -  |  Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. Changing this forces a new resource to be created. ~> **Note:** Only valid if a `workload_profile` is specified. If `infrastructure_subnet_id` is specified, this resource group will be created in the same subscription as `infrastructure_subnet_id`. | 
| **infrastructure_subnet_id** | string |  -  |  The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created. ~> **NOTE:** The Subnet must have a `/21` or larger address space. | 
| **internal_load_balancer_enabled** | bool |  `False`  |  Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created. ~> **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified. | 
| **zone_redundancy_enabled** | bool |  `False`  |  Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created. ~> **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified. | 
| **log_analytics_workspace_id** | string |  -  |  The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. Changing this forces a new resource to be created. | 
| **workload_profile** | [block](#workload_profile-block-structure) |  -  |  The profile of the workload to scope the container app execution. A `workload_profile` block. | 
| **mutual_tls_enabled** | bool |  `False`  |  Should mutual transport layer security (mTLS) be enabled? Defaults to `false`. ~> **Note:** This feature is in public preview. Enabling mTLS for your applications may increase response latency and reduce maximum throughput in high-load scenarios. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `workload_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the workload profile. |
| `workload_profile_type` | string | Yes | - | Workload profile type for the workloads to run on. Possible values include 'Consumption', 'D4', 'D8', 'D16', 'D32', 'E4', 'E8', 'E16' and 'E32'. ~> **NOTE:** A 'Consumption' type must have a name of 'Consumption' and an environment may only have one 'Consumption' Workload Profile. ~> **NOTE:** Defining a 'Consumption' profile is optional, however, Environments created without an initial Workload Profile cannot have them added at a later time and must be recreated. Similarly, an environment created with Profiles must always have at least one defined Profile, removing all profiles will force a recreation of the resource. |
| `maximum_count` | number | Yes | - | The maximum number of instances of workload profile that can be deployed in the Container App Environment. |
| `minimum_count` | number | Yes | - | The minimum number of instances of workload profile that can be deployed in the Container App Environment. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **minimum_count** | number | No  | The minimum number of instances of workload profile that can be deployed in the Container App Environment. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container App Environment | 
| **custom_domain_verification_id** | string | No  | The ID of the Custom Domain Verification for this Container App Environment. | 
| **default_domain** | string | No  | The default, publicly resolvable, name of this Container App Environment. ~> **NOTE:** This value is generated by the service to be globally unique. | 
| **docker_bridge_cidr** | string | No  | The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation. ~> **NOTE:** This property only has a value when `infrastructure_subnet_id` is configured and will be a range within the CIDR of the Subnet. | 
| **platform_reserved_cidr** | string | No  | The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses. ~> **NOTE:** This property only has a value when `infrastructure_subnet_id` is configured and will be a range within the CIDR of the Subnet. | 
| **platform_reserved_dns_ip_address** | string | No  | The IP address from the IP range defined by `platform_reserved_cidr` that is reserved for the internal DNS server. ~> **NOTE:** This property only has a value when `infrastructure_subnet_id` is configured and will be a value within the CIDR of the Subnet. | 
| **static_ip_address** | string | No  | The Static IP address of the Environment. ~> **NOTE:** This will be a Public IP unless `internal_load_balancer_enabled` is set to `true`, in which case an IP in the Internal Subnet will be reserved. | 

Additionally, all variables are provided as outputs.
