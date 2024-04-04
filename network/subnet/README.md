# azurerm_subnet



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/subnet"   
}
inputs = {
   name = "The name of the subnet"   
   resource_group_name = "${resource_group}"   
   # virtual_network_name → set in component_inputs
   address_prefixes = "The address prefixes to use for the subnet"   
}
component_inputs = {
   virtual_network_name = "path/to/virtual_network_component:name"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```
## Associated components


### `nat_gateway_id` 

- If set to a valid `azurerm_nat_gateway` `id`, makes a **azurerm_subnet_nat_gateway_association** - 

Example component snippet (**See also** [network/nat_gateway](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/nat_gateway))

```hcl
component_inputs = {
   nat_gateway_id = "path/to/nat_gateway_component:id"
}
```

### `network_security_group_id` 

- If set to a valid `azurerm_network_security_group` `id`, makes a **azurerm_subnet_network_security_group_association** - 

Example component snippet (**See also** [network/network_security_group](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/network_security_group))

```hcl
component_inputs = {
   network_security_group_id = "path/to/network_security_group_component:id"
}
```

### `route_table_id` 

- If set to a valid `azurerm_route_table` `id`, makes a **azurerm_subnet_route_table_association** - 

Example component snippet (**See also** [network/route_table](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/route_table))

```hcl
component_inputs = {
   route_table_id = "path/to/route_table_component:id"
}
```

### `application_load_balancer_subnet_association` 

If set, makes a **azurerm_application_load_balancer_subnet_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `application_load_balancer_id` | string | True | null |
| `tags` | map | False | null |


Example component snippet

**See also** [service_networking/application_load_balancer](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/service_networking/application_load_balancer)

```hcl
inputs = {
   application_load_balancer_subnet_association = {
      name = "..."      
      tags = "..."      
   }   
}
component_inputs = {
   application_load_balancer_subnet_association.application_load_balancer_id = "path/to/application_load_balancer_component:id"   
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the subnet. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the subnet. Changing this forces a new resource to be created. | 
| **virtual_network_name** | string |  The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | 
| **address_prefixes** | string |  The address prefixes to use for the subnet. -> **NOTE:** Currently only a single address prefix can be set as the [Multiple Subnet Address Prefixes Feature](https://github.com/Azure/azure-cli/issues/18194#issuecomment-880484269) is not yet in public preview or general availability. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **delegations** | [block](#delegation-block-structure) |  -  |  -  |  One or more `delegation` blocks. | 
| **private_endpoint_network_policies_enabled** | bool |  `True`  |  `azurerm_subnet_network_security_group_association`  |  Enable or Disable network policies for the private endpoint on the subnet. Setting this to `true` will **Enable** the policy and setting this to `false` will **Disable** the policy. Defaults to `true`. -> **NOTE:** Network policies, like network security groups (NSG), are not supported for Private Link Endpoints or Private Link Services. In order to deploy a Private Link Endpoint on a given subnet, you must set the `private_endpoint_network_policies_enabled` attribute to `false`. This setting is only applicable for the Private Link Endpoint, for all other resources in the subnet access is controlled based via the Network Security Group which can be configured using the `azurerm_subnet_network_security_group_association` resource. | 
| **private_link_service_network_policies_enabled** | bool |  `True`  |  `azurerm_subnet_network_security_group_association`  |  Enable or Disable network policies for the private link service on the subnet. Setting this to `true` will **Enable** the policy and setting this to `false` will **Disable** the policy. Defaults to `true`. -> **NOTE:** In order to deploy a Private Link Service on a given subnet, you must set the `private_link_service_network_policies_enabled` attribute to `false`. This setting is only applicable for the Private Link Service, for all other resources in the subnet access is controlled based on the Network Security Group which can be configured using the `azurerm_subnet_network_security_group_association` resource. | 
| **service_endpoints** | string |  -  |  `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global`, `Microsoft.Web`  |  The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`. -> **NOTE:** In order to use `Microsoft.Storage.Global` service endpoint (which allows access to virtual networks in other regions), you must enable the `AllowGlobalTagsForStorage` feature in your subscription. This is currently a preview feature, please see the [official documentation](https://learn.microsoft.com/en-us/azure/storage/common/storage-network-security?tabs=azure-cli#enabling-access-to-virtual-networks-in-other-regions-preview) for more information. | 
| **service_endpoint_policy_ids** | string |  -  |  -  |  The list of IDs of Service Endpoint Policies to associate with the subnet. | 

### `delegation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A name for this delegation. |
| `service_delegation` | [block](#service_delegation-block-structure) | Yes | - | A 'service_delegation' block. |

### `service_delegation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of service to delegate to. Possible values are 'GitHub.Network/networkSettings', 'Microsoft.ApiManagement/service', 'Microsoft.Apollo/npu', 'Microsoft.App/environments', 'Microsoft.App/testClients', 'Microsoft.AVS/PrivateClouds', 'Microsoft.AzureCosmosDB/clusters', 'Microsoft.BareMetal/AzureHostedService', 'Microsoft.BareMetal/AzureHPC', 'Microsoft.BareMetal/AzurePaymentHSM', 'Microsoft.BareMetal/AzureVMware', 'Microsoft.BareMetal/CrayServers', 'Microsoft.BareMetal/MonitoringServers', 'Microsoft.Batch/batchAccounts', 'Microsoft.CloudTest/hostedpools', 'Microsoft.CloudTest/images', 'Microsoft.CloudTest/pools', 'Microsoft.Codespaces/plans', 'Microsoft.ContainerInstance/containerGroups', 'Microsoft.ContainerService/managedClusters', 'Microsoft.ContainerService/TestClients', 'Microsoft.Databricks/workspaces', 'Microsoft.DBforMySQL/flexibleServers', 'Microsoft.DBforMySQL/servers', 'Microsoft.DBforMySQL/serversv2', 'Microsoft.DBforPostgreSQL/flexibleServers', 'Microsoft.DBforPostgreSQL/serversv2', 'Microsoft.DBforPostgreSQL/singleServers', 'Microsoft.DelegatedNetwork/controller', 'Microsoft.DevCenter/networkConnection', 'Microsoft.DocumentDB/cassandraClusters', 'Microsoft.Fidalgo/networkSettings', 'Microsoft.HardwareSecurityModules/dedicatedHSMs', 'Microsoft.Kusto/clusters', 'Microsoft.LabServices/labplans', 'Microsoft.Logic/integrationServiceEnvironments', 'Microsoft.MachineLearningServices/workspaces', 'Microsoft.Netapp/volumes', 'Microsoft.Network/dnsResolvers', 'Microsoft.Network/managedResolvers', 'Microsoft.Network/fpgaNetworkInterfaces', 'Microsoft.Network/networkWatchers.', 'Microsoft.Network/virtualNetworkGateways', 'Microsoft.Orbital/orbitalGateways', 'Microsoft.PowerPlatform/enterprisePolicies', 'Microsoft.PowerPlatform/vnetaccesslinks', 'Microsoft.ServiceFabricMesh/networks', 'Microsoft.ServiceNetworking/trafficControllers', 'Microsoft.Singularity/accounts/networks', 'Microsoft.Singularity/accounts/npu', 'Microsoft.Sql/managedInstances', 'Microsoft.Sql/managedInstancesOnebox', 'Microsoft.Sql/managedInstancesStage', 'Microsoft.Sql/managedInstancesTest', 'Microsoft.Sql/servers', 'Microsoft.StoragePool/diskPools', 'Microsoft.StreamAnalytics/streamingJobs', 'Microsoft.Synapse/workspaces', 'Microsoft.Web/hostingEnvironments', 'Microsoft.Web/serverFarms', 'NGINX.NGINXPLUS/nginxDeployments', 'PaloAltoNetworks.Cloudngfw/firewalls' and 'Qumulo.Storage/fileSystems'. |
| `actions` | list | No | - | A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are 'Microsoft.Network/networkinterfaces/*', 'Microsoft.Network/publicIPAddresses/join/action', 'Microsoft.Network/publicIPAddresses/read', 'Microsoft.Network/virtualNetworks/read', 'Microsoft.Network/virtualNetworks/subnets/action', 'Microsoft.Network/virtualNetworks/subnets/join/action', 'Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action', and 'Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action'. -> **NOTE:** Azure may add default actions depending on the service delegation name and they can't be changed. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **actions** | list | No  | A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are `Microsoft.Network/networkinterfaces/*`, `Microsoft.Network/publicIPAddresses/join/action`, `Microsoft.Network/publicIPAddresses/read`, `Microsoft.Network/virtualNetworks/read`, `Microsoft.Network/virtualNetworks/subnets/action`, `Microsoft.Network/virtualNetworks/subnets/join/action`, `Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action`, and `Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action`. -> **NOTE:** Azure may add default actions depending on the service delegation name and they can't be changed. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The subnet ID. | 
| **name** | string | No  | The name of the subnet. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | No  | The name of the resource group in which the subnet is created in. | 
| **virtual_network_name** | string | No  | The name of the virtual network in which the subnet is created in. Changing this forces a new resource to be created. | 
| **address_prefixes** | string | No  | The address prefixes for the subnet | 

Additionally, all variables are provided as outputs.
