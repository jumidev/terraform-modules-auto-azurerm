# azurerm_sentinel_data_connector_aws_s3

Manages a AWS S3 Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this AWS S3 Data Connector. Changing this forces a new AWS S3 Data Connector to be created. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this AWS S3 Data Connector resides in. Changing this forces a new AWS S3 Data Connector to be created. | 
| **aws_role_arn** | string | True | -  |  -  | The ARN of the AWS role, which is connected to this AWS CloudTrail Data Connector. See the [Azure document](https://docs.microsoft.com/azure/sentinel/connect-aws?tabs=s3#create-an-aws-assumed-role-and-grant-access-to-the-aws-sentinel-account) for details. | 
| **destination_table** | string | True | -  |  -  | The name of the Log Analytics table that will store the ingested data. | 
| **sqs_urls** | string | True | -  |  -  | Specifies a list of AWS SQS urls for the AWS S3 Data Connector. | 

