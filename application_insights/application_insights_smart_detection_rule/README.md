# azurerm_application_insights_smart_detection_rule

Manages an Application Insights Smart Detection Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  `Slow page load time`, `Slow server response time`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Potential memory leak detected`, `Potential security issue detected`, `Abnormal rise in daily data volume`  | Specifies the name of the Application Insights Smart Detection Rule. Valid values include `Slow page load time`, `Slow server response time`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Potential memory leak detected`, `Potential security issue detected` and `Abnormal rise in daily data volume`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Potential memory leak detected`, `Potential security issue detected`, `Abnormal rise in daily data volume`. Changing this forces a new resource to be created. | 
| **application_insights_id** | string | True | -  |  -  | The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  -  | Is the Application Insights Smart Detection Rule enabled? Defaults to `true`. | 
| **send_emails_to_subscription_owners** | bool | False | `True`  |  -  | Do emails get sent to subscription owners? Defaults to `true`. | 
| **additional_email_recipients** | string | False | -  |  -  | Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule. | 

