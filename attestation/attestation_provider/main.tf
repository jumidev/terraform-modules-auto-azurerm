data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_attestation_provider" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  policy_signing_certificate_data = var.policy_signing_certificate_data
  open_enclave_policy_base64      = var.open_enclave_policy_base64
  sgx_enclave_policy_base64       = var.sgx_enclave_policy_base64
  tpm_policy_base64               = var.tpm_policy_base64
  sev_snp_policy_base64           = var.sev_snp_policy_base64
  tags                            = var.tags
}
