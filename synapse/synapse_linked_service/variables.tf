# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of data stores that will be connected to Synapse. Valid Values include 'AmazonMWS', 'AmazonRdsForOracle', 'AmazonRdsForSqlServer', 'AmazonRedshift', 'AmazonS3', 'AzureBatch'. Changing this forces a new resource to be created. 'AzureBlobFS', 'AzureBlobStorage', 'AzureDataExplorer', 'AzureDataLakeAnalytics', 'AzureDataLakeStore', 'AzureDatabricks', 'AzureDatabricksDeltaLake', 'AzureFileStorage', 'AzureFunction', 'AzureKeyVault', 'AzureML', 'AzureMLService', 'AzureMariaDB', 'AzureMySql', 'AzurePostgreSql', 'AzureSqlDW', 'AzureSqlDatabase', 'AzureSqlMI', 'AzureSearch', 'AzureStorage', 'AzureTableStorage', 'Cassandra', 'CommonDataServiceForApps', 'Concur', 'CosmosDb', 'CosmosDbMongoDbApi', 'Couchbase', 'CustomDataSource', 'Db2', 'Drill', 'Dynamics', 'DynamicsAX', 'DynamicsCrm', 'Eloqua', 'FileServer', 'FtpServer', 'GoogleAdWords', 'GoogleBigQuery', 'GoogleCloudStorage', 'Greenplum', 'HBase', 'HDInsight', 'HDInsightOnDemand', 'HttpServer', 'Hdfs', 'Hive', 'Hubspot', 'Impala', 'Informix', 'Jira', 'LinkedService', 'Magento', 'MariaDB', 'Marketo', 'MicrosoftAccess', 'MongoDb', 'MongoDbAtlas', 'MongoDbV2', 'MySql', 'Netezza', 'OData', 'Odbc', 'Office365', 'Oracle', 'OracleServiceCloud', 'Paypal', 'Phoenix', 'PostgreSql', 'Presto', 'QuickBooks', 'Responsys', 'RestService', 'SqlServer', 'Salesforce', 'SalesforceMarketingCloud', 'SalesforceServiceCloud', 'SapBW', 'SapCloudForCustomer', 'SapEcc', 'SapHana', 'SapOpenHub', 'SapTable', 'ServiceNow', 'Sftp', 'SharePointOnlineList', 'Shopify', 'Snowflake', 'Spark', 'Square', 'Sybase', 'Teradata', 'Vertica', 'Web', 'Xero', 'Zoho'."
  type        = string

}
variable "type_properties_json" {
  description = "(REQUIRED) A JSON object that contains the properties of the Synapse Linked Service."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_properties" {
  description = "A map of additional properties to associate with the Synapse Linked Service."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Synapse Linked Service."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Synapse Linked Service."
  type        = string
  default     = null
}
variable "integration_runtime" {
  description = "A 'integration_runtime' block."
  type        = map(any)
  default     = null
}
#
# integration_runtime block structure:
#   name (string)                      : (REQUIRED) The integration runtime reference to associate with the Synapse Linked Service.
#   parameters (string)                : A map of parameters to associate with the integration runtime.


variable "parameters" {
  description = "A map of parameters to associate with the Synapse Linked Service."
  type        = string
  default     = null
}
