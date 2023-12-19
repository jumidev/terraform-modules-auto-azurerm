# azurerm_synapse_linked_service

Manages a Synapse Linked Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_linked_service"   
}

inputs = {
   name = "The name which should be used for this Synapse Linked Service..."   
   # synapse_workspace_id → set in component_inputs
   type = "The type of data stores that will be connected to Synapse..."   
   type_properties_json = "A JSON object that contains the properties of the Synapse Linked Service..."   
}

component_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
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
| **name** | string |  The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created. | 
| **synapse_workspace_id** | string |  The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created. | 
| **type** | string |  The type of data stores that will be connected to Synapse. Valid Values include `AmazonMWS`, `AmazonRdsForOracle`, `AmazonRdsForSqlServer`, `AmazonRedshift`, `AmazonS3`, `AzureBatch`. Changing this forces a new resource to be created. `AzureBlobFS`, `AzureBlobStorage`, `AzureDataExplorer`, `AzureDataLakeAnalytics`, `AzureDataLakeStore`, `AzureDatabricks`, `AzureDatabricksDeltaLake`, `AzureFileStorage`, `AzureFunction`, `AzureKeyVault`, `AzureML`, `AzureMLService`, `AzureMariaDB`, `AzureMySql`, `AzurePostgreSql`, `AzureSqlDW`, `AzureSqlDatabase`, `AzureSqlMI`, `AzureSearch`, `AzureStorage`, `AzureTableStorage`, `Cassandra`, `CommonDataServiceForApps`, `Concur`, `CosmosDb`, `CosmosDbMongoDbApi`, `Couchbase`, `CustomDataSource`, `Db2`, `Drill`, `Dynamics`, `DynamicsAX`, `DynamicsCrm`, `Eloqua`, `FileServer`, `FtpServer`, `GoogleAdWords`, `GoogleBigQuery`, `GoogleCloudStorage`, `Greenplum`, `HBase`, `HDInsight`, `HDInsightOnDemand`, `HttpServer`, `Hdfs`, `Hive`, `Hubspot`, `Impala`, `Informix`, `Jira`, `LinkedService`, `Magento`, `MariaDB`, `Marketo`, `MicrosoftAccess`, `MongoDb`, `MongoDbAtlas`, `MongoDbV2`, `MySql`, `Netezza`, `OData`, `Odbc`, `Office365`, `Oracle`, `OracleServiceCloud`, `Paypal`, `Phoenix`, `PostgreSql`, `Presto`, `QuickBooks`, `Responsys`, `RestService`, `SqlServer`, `Salesforce`, `SalesforceMarketingCloud`, `SalesforceServiceCloud`, `SapBW`, `SapCloudForCustomer`, `SapEcc`, `SapHana`, `SapOpenHub`, `SapTable`, `ServiceNow`, `Sftp`, `SharePointOnlineList`, `Shopify`, `Snowflake`, `Spark`, `Square`, `Sybase`, `Teradata`, `Vertica`, `Web`, `Xero`, `Zoho`. | 
| **type_properties_json** | string |  A JSON object that contains the properties of the Synapse Linked Service. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **additional_properties** | string |  A map of additional properties to associate with the Synapse Linked Service. | 
| **annotations** | string |  List of tags that can be used for describing the Synapse Linked Service. | 
| **description** | string |  The description for the Synapse Linked Service. | 
| **integration_runtime** | [block](#integration_runtime-block-structure) |  A `integration_runtime` block. | 
| **parameters** | string |  A map of parameters to associate with the Synapse Linked Service. | 

### `integration_runtime` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The integration runtime reference to associate with the Synapse Linked Service. |
| `parameters` | string | No | - | A map of parameters to associate with the integration runtime. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse Linked Service. | 

Additionally, all variables are provided as outputs.
