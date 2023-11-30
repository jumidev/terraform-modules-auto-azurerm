# azurerm_palo_alto_local_rulestack_fqdn_list

Manages a Palo Alto Local Rulestack FQDN List.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_local_rulestack_fqdn_list" 
}

inputs = {
   name = "name of palo_alto_local_rulestack_fqdn_list" 
   rulestack_id = "rulestack_id of palo_alto_local_rulestack_fqdn_list" 
   fully_qualified_domain_names = "fully_qualified_domain_names of palo_alto_local_rulestack_fqdn_list" 
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
| **var.name** | string | True | The name which should be used for this Palo Alto Local Rulestack FQDN List. | 
| **var.rulestack_id** | string | True | The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created. | 
| **var.fully_qualified_domain_names** | string | True | Specifies a list of Fully Qualified Domain Names. | 
| **var.audit_comment** | string | False | The comment for Audit purposes. | 
| **var.description** | string | False | The description for the FQDN List. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Local Rulestack FQDN List. | 

Additionally, all variables are provided as outputs.
