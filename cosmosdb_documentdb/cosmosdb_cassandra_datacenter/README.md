# azurerm_cosmosdb_cassandra_datacenter

Manages a Cassandra Datacenter.~> **NOTE:** In order for the `Azure Managed Instances for Apache Cassandra` to work properly the product requires the `Azure Cosmos DB` Application ID to be present and working in your tenant. If the `Azure Cosmos DB` Application ID is missing in your environment you will need to have an administrator of your tenant run the following command to add the `Azure Cosmos DB` Application ID to your tenant:```powershellNew-AzADServicePrincipal -ApplicationId a232010e-820c-4083-83bb-3ace5fc29d0b```

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_cassandra_datacenter"   
}

inputs = {
   name = "The name which should be used for this Cassandra Datacenter..."   
   location = "${location}"   
   # cassandra_cluster_id → set in component_inputs
   # delegated_management_subnet_id → set in component_inputs
}

component_inputs = {
   cassandra_cluster_id = "path/to/cosmosdb_cassandra_cluster_component:id"   
   delegated_management_subnet_id = "path/to/subnet_component:id"   
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
| **name** | string |  The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created. | 
| **location** | string |  The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created. | 
| **cassandra_cluster_id** | string |  The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created. | 
| **delegated_management_subnet_id** | string |  The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **node_count** | number |  `3`  |  The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than `3`. Defaults to `3`. | 
| **backup_storage_customer_key_uri** | string |  -  |  The key URI of the customer key to use for the encryption of the backup Storage Account. | 
| **base64_encoded_yaml_fragment** | string |  -  |  The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed. | 
| **disk_sku** | string |  `P30`  |  The Disk SKU that is used for this Cassandra Datacenter. Defaults to `P30`. | 
| **managed_disk_customer_key_uri** | string |  -  |  The key URI of the customer key to use for the encryption of the Managed Disk. | 
| **sku_name** | string |  -  |  Determines the selected sku. -> **NOTE:** In v4.0 of the provider the `sku_name` will have a default value of `Standard_E16s_v5`. | 
| **disk_count** | number |  -  |  Determines the number of p30 disks that are attached to each node. | 
| **availability_zones_enabled** | bool |  `True`  |  Determines whether availability zones are enabled. Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **availability_zones_enabled** | bool | No  | Determines whether availability zones are enabled. Defaults to `true`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Cassandra Datacenter. | 
| **seed_node_ip_addresses** | list | No  | A list of IP Address for the seed nodes in this Cassandra Datacenter. | 

Additionally, all variables are provided as outputs.
