# azurerm_palo_alto_local_rulestack

Manages a Palo Alto Networks Rulestack.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  The name which should be used for this Palo Alto Networks Rulestack. Changing this forces a new Palo Alto Networks Rulestack to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created. | 
| **var.location** | string  The Azure Region where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.anti_spyware_profile** | string  `BestPractice`, `Custom`  |  The setting to use for Anti-Spyware. Possible values include `BestPractice`, and `Custom`. | 
| **var.anti_virus_profile** | string  `BestPractice`, `Custom`  |  The setting to use for Anti-Virus. Possible values include `BestPractice`, and `Custom`. | 
| **var.description** | string  -  |  The description for this Local Rulestack. | 
| **var.dns_subscription** | string  `BestPractice`, `Custom`  |  TThe setting to use for DNS Subscription. Possible values include `BestPractice`, and `Custom`. | 
| **var.file_blocking_profile** | string  `BestPractice`, `Custom`  |  The setting to use for the File Blocking Profile. Possible values include `BestPractice`, and `Custom`. | 
| **var.url_filtering_profile** | string  `BestPractice`, `Custom`  |  The setting to use for the URL Filtering Profile. Possible values include `BestPractice`, and `Custom`. | 
| **var.vulnerability_profile** | string  `BestPractice`, `Custom`  |  The setting to use for the Vulnerability Profile. Possible values include `BestPractice`, and `Custom`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Networks Rulestack. | 

Additionally, all variables are provided as outputs.
