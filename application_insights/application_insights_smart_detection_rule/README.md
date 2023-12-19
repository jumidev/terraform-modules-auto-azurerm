# azurerm_application_insights_smart_detection_rule

Manages an Application Insights Smart Detection Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "application_insights/application_insights_smart_detection_rule"   
}

inputs = {
   name = "Specifies the name of the Application Insights Smart Detection Rule..."   
   # application_insights_id → set in component_inputs
}

component_inputs = {
   application_insights_id = "path/to/application_insights_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  `Slow page load time`, `Slow server response time`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Potential memory leak detected`, `Potential security issue detected`, `Abnormal rise in daily data volume`  |  Specifies the name of the Application Insights Smart Detection Rule. Valid values include `Slow page load time`, `Slow server response time`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Potential memory leak detected`, `Potential security issue detected` and `Abnormal rise in daily data volume`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Potential memory leak detected`, `Potential security issue detected`, `Abnormal rise in daily data volume`. Changing this forces a new resource to be created. | 
| **application_insights_id** | string |  -  |  The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Is the Application Insights Smart Detection Rule enabled? Defaults to `true`. | 
| **send_emails_to_subscription_owners** | bool |  `True`  |  Do emails get sent to subscription owners? Defaults to `true`. | 
| **additional_email_recipients** | string |  -  |  Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights Smart Detection Rule. | 

Additionally, all variables are provided as outputs.
