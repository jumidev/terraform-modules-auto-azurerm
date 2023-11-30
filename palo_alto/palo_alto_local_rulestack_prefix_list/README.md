# azurerm_palo_alto_local_rulestack_prefix_list

Manages a Palo Alto Local Rulestack Prefix List.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_local_rulestack_prefix_list" 
}

inputs = {
   name = "name of palo_alto_local_rulestack_prefix_list" 
   rulestack_id = "rulestack_id of palo_alto_local_rulestack_prefix_list" 
   prefix_list = "prefix_list of palo_alto_local_rulestack_prefix_list" 
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
| **var.name** | string |  The name which should be used for this Palo Alto Local Rulestack Prefix List. | 
| **var.rulestack_id** | string |  The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created. | 
| **var.prefix_list** | string |  Specifies a list of Prefixes. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.audit_comment** | string |  The comment for Audit purposes. | 
| **var.description** | string |  The description for the Prefix List. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Local Rulestack Prefix List. | 

Additionally, all variables are provided as outputs.
