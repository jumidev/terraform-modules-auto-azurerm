# azurerm_cost_anomaly_alert

Manages a Cost Anomaly Alert.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/cost_anomaly_alert" 
}

inputs = {
   name = "name of cost_anomaly_alert" 
   display_name = "display_name of cost_anomaly_alert" 
   email_addresses = "email_addresses of cost_anomaly_alert" 
   email_subject = "email_subject of cost_anomaly_alert" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens. | 
| **var.display_name** | string | True | The display name which should be used for this Cost Anomaly Alert. | 
| **var.email_addresses** | string | True | Specifies a list of email addresses which the Anomaly Alerts are send to. | 
| **var.email_subject** | string | True | The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70. | 
| **var.message** | string | False | The message of the Cost Anomaly Alert. Maximum length of the message is 250. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cost Anomaly Alert. | 

Additionally, all variables are provided as outputs.
