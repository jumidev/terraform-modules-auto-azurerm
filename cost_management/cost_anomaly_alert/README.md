# azurerm_cost_anomaly_alert

Manages a Cost Anomaly Alert.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens. | 
| **display_name** | string | True | -  |  -  | The display name which should be used for this Cost Anomaly Alert. | 
| **email_addresses** | string | True | -  |  -  | Specifies a list of email addresses which the Anomaly Alerts are send to. | 
| **email_subject** | string | True | -  |  -  | The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70. | 
| **message** | string | False | -  |  -  | The message of the Cost Anomaly Alert. Maximum length of the message is 250. | 

