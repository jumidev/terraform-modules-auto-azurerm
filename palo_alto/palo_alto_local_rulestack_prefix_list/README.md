# azurerm_palo_alto_local_rulestack_prefix_list

Manages a Palo Alto Local Rulestack Prefix List.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "palo_alto/palo_alto_local_rulestack_prefix_list"   
}

inputs = {
   name = "The name which should be used for this Palo Alto Local Rulestack Prefix List..."   
   rulestack_id = "The ID of the Local Rulestack on which to create this Prefix List..."   
   prefix_list = "Specifies a list of Prefixes"   
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
| **name** | string |  The name which should be used for this Palo Alto Local Rulestack Prefix List. | 
| **rulestack_id** | string |  The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created. | 
| **prefix_list** | string |  Specifies a list of Prefixes. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **audit_comment** | string |  The comment for Audit purposes. | 
| **description** | string |  The description for the Prefix List. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Local Rulestack Prefix List. | 

Additionally, all variables are provided as outputs.
