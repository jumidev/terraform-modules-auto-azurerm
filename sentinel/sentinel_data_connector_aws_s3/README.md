# azurerm_sentinel_data_connector_aws_s3

Manages a AWS S3 Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_aws_s3" 
}

inputs = {
   name = "name of sentinel_data_connector_aws_s3" 
   # log_analytics_workspace_id → set in tfstate_inputs
   aws_role_arn = "aws_role_arn of sentinel_data_connector_aws_s3" 
   destination_table = "destination_table of sentinel_data_connector_aws_s3" 
   sqs_urls = "sqs_urls of sentinel_data_connector_aws_s3" 
}

tfstate_inputs = {
   log_analytics_workspace_id = "path/to/log_analytics_workspace_component:id" 
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
| **name** | string |  The name which should be used for this AWS S3 Data Connector. Changing this forces a new AWS S3 Data Connector to be created. | 
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this AWS S3 Data Connector resides in. Changing this forces a new AWS S3 Data Connector to be created. | 
| **aws_role_arn** | string |  The ARN of the AWS role, which is connected to this AWS CloudTrail Data Connector. See the [Azure document](https://docs.microsoft.com/azure/sentinel/connect-aws?tabs=s3#create-an-aws-assumed-role-and-grant-access-to-the-aws-sentinel-account) for details. | 
| **destination_table** | string |  The name of the Log Analytics table that will store the ingested data. | 
| **sqs_urls** | string |  Specifies a list of AWS SQS urls for the AWS S3 Data Connector. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the AWS S3 Data Connector. | 

Additionally, all variables are provided as outputs.
