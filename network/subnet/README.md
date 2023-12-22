# azurerm_subnet

Manages a subnet. Subnets represent network segments within the IP space defined by the virtual network.~> **NOTE on Virtual Networks and Subnets:** Terraform currentlyprovides both a standalone [Subnet resource](subnet.html), and allows for Subnets to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line Subnets in conjunction with any Subnet resources. Doing so will cause a conflict of Subnet configurations and will overwrite Subnets.

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
## Optional associated resources


### `nat_gateway_id` 

- If set to a valid `azurerm_nat_gateway` `id`, makes a **azurerm_subnet_nat_gateway_association** - Associates a [NAT Gateway](nat_gateway.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html).

Example component snippet:

```hcl
component_inputs = {
   nat_gateway_id = "path/to/nat_gateway_component:id"
}
```

### `network_security_group_id` 

- If set to a valid `azurerm_network_security_group` `id`, makes a **azurerm_subnet_network_security_group_association** - Associates a [Network Security Group](network_security_group.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html).

Example component snippet:

```hcl
component_inputs = {
   network_security_group_id = "path/to/network_security_group_component:id"
}
```

### `route_table_id` 

- If set to a valid `azurerm_route_table` `id`, makes a **azurerm_subnet_route_table_association** - Associates a [Route Table](route_table.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html).

Example component snippet:

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


Example component snippet:

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
| **address_prefixes** | string |  The address prefixes to use for the subnet. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **delegation** | [block](#delegation-block-structure) |  -  |  -  |  One or more `delegation` blocks. | 
| **private_endpoint_network_policies_enabled** | bool |  `True`  |  -  |  Enable or Disable network policies for the private endpoint on the subnet. Setting this to `true` will **Enable** the policy and setting this to `false` will **Disable** the policy. Defaults to `true`. | 
| **private_link_service_network_policies_enabled** | bool |  `True`  |  -  |  Enable or Disable network policies for the private link service on the subnet. Setting this to `true` will **Enable** the policy and setting this to `false` will **Disable** the policy. Defaults to `true`. | 
| **service_endpoints** | string |  -  |  `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global`, `Microsoft.Web`  |  The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`. | 
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
| `actions` | list | No | - | A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are 'Microsoft.Network/networkinterfaces/*', 'Microsoft.Network/publicIPAddresses/join/action', 'Microsoft.Network/publicIPAddresses/read', 'Microsoft.Network/virtualNetworks/read', 'Microsoft.Network/virtualNetworks/subnets/action', 'Microsoft.Network/virtualNetworks/subnets/join/action', 'Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action', and 'Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The subnet ID. | 
| **name** | string | No  | The name of the subnet. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | No  | The name of the resource group in which the subnet is created in. | 
| **virtual_network_name** | string | No  | The name of the virtual network in which the subnet is created in. Changing this forces a new resource to be created. | 
| **address_prefixes** | string | No  | The address prefixes for the subnet | 

Additionally, all variables are provided as outputs.
