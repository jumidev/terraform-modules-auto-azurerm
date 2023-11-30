# azurerm_cosmosdb_cassandra_datacenter

Manages a Cassandra Datacenter.~> **NOTE:** In order for the `Azure Managed Instances for Apache Cassandra` to work properly the product requires the `Azure Cosmos DB` Application ID to be present and working in your tenant. If the `Azure Cosmos DB` Application ID is missing in your environment you will need to have an administrator of your tenant run the following command to add the `Azure Cosmos DB` Application ID to your tenant:```powershellNew-AzADServicePrincipal -ApplicationId a232010e-820c-4083-83bb-3ace5fc29d0b```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created. | 
| **var.cassandra_cluster_id** | string | True | -  |  The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created. | 
| **var.delegated_management_subnet_id** | string | True | -  |  The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created. | 
| **var.node_count** | int | False | `3`  |  The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than `3`. Defaults to `3`. | 
| **var.backup_storage_customer_key_uri** | string | False | -  |  The key URI of the customer key to use for the encryption of the backup Storage Account. | 
| **var.base64_encoded_yaml_fragment** | string | False | -  |  The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed. | 
| **var.disk_sku** | string | False | `P30`  |  The Disk SKU that is used for this Cassandra Datacenter. Defaults to `P30`. | 
| **var.managed_disk_customer_key_uri** | string | False | -  |  The key URI of the customer key to use for the encryption of the Managed Disk. | 
| **var.sku_name** | string | False | -  |  Determines the selected sku. | 
| **var.disk_count** | int | False | -  |  Determines the number of p30 disks that are attached to each node. | 
| **var.availability_zones_enabled** | bool | False | `True`  |  Determines whether availability zones are enabled. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **cassandra_cluster_id** | string  | - | 
| **delegated_management_subnet_id** | string  | - | 
| **node_count** | int  | - | 
| **backup_storage_customer_key_uri** | string  | - | 
| **base64_encoded_yaml_fragment** | string  | - | 
| **disk_sku** | string  | - | 
| **managed_disk_customer_key_uri** | string  | - | 
| **sku_name** | string  | - | 
| **disk_count** | int  | - | 
| **availability_zones_enabled** | bool  | - | 
| **id** | string  | The ID of the Cassandra Datacenter. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_cassandra_datacenter" 
}

inputs = {
   name = "name of cosmosdb_cassandra_datacenter" 
   location = "${location}" 
   cassandra_cluster_id = "cassandra_cluster_id of cosmosdb_cassandra_datacenter" 
   delegated_management_subnet_id = "delegated_management_subnet_id of cosmosdb_cassandra_datacenter" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```