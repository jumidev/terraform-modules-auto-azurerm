# azurerm_palo_alto_local_rulestack

Manages a Palo Alto Networks Rulestack.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Palo Alto Networks Rulestack. Changing this forces a new Palo Alto Networks Rulestack to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created. | 
| **var.anti_spyware_profile** | string | False | `BestPractice`, `Custom`  |  The setting to use for Anti-Spyware. Possible values include `BestPractice`, and `Custom`. | 
| **var.anti_virus_profile** | string | False | `BestPractice`, `Custom`  |  The setting to use for Anti-Virus. Possible values include `BestPractice`, and `Custom`. | 
| **var.description** | string | False | -  |  The description for this Local Rulestack. | 
| **var.dns_subscription** | string | False | `BestPractice`, `Custom`  |  TThe setting to use for DNS Subscription. Possible values include `BestPractice`, and `Custom`. | 
| **var.file_blocking_profile** | string | False | `BestPractice`, `Custom`  |  The setting to use for the File Blocking Profile. Possible values include `BestPractice`, and `Custom`. | 
| **var.url_filtering_profile** | string | False | `BestPractice`, `Custom`  |  The setting to use for the URL Filtering Profile. Possible values include `BestPractice`, and `Custom`. | 
| **var.vulnerability_profile** | string | False | `BestPractice`, `Custom`  |  The setting to use for the Vulnerability Profile. Possible values include `BestPractice`, and `Custom`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **anti_spyware_profile** | string  | - | 
| **anti_virus_profile** | string  | - | 
| **description** | string  | - | 
| **dns_subscription** | string  | - | 
| **file_blocking_profile** | string  | - | 
| **url_filtering_profile** | string  | - | 
| **vulnerability_profile** | string  | - | 
| **id** | string  | The ID of the Palo Alto Networks Rulestack. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_local_rulestack" 
}

inputs = {
   name = "name of palo_alto_local_rulestack" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```