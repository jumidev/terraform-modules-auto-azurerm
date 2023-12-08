output "virtual_machine_data_disk_attachment.virtual_machine_id" {
  value = lookup(var.virtual_machine_data_disk_attachment, "virtual_machine_id", null)
}

output "virtual_machine_data_disk_attachment.managed_disk_id" {
  value = lookup(var.virtual_machine_data_disk_attachment, "managed_disk_id", null)
}

output "virtual_machine_data_disk_attachment.lun" {
  value = lookup(var.virtual_machine_data_disk_attachment, "lun", null)
}

output "virtual_machine_data_disk_attachment.caching" {
  value = lookup(var.virtual_machine_data_disk_attachment, "caching", null)
}

output "virtual_machine_data_disk_attachment.create_option" {
  value = lookup(var.virtual_machine_data_disk_attachment, "create_option", null)
}

output "virtual_machine_data_disk_attachment.write_accelerator_enabled" {
  value = lookup(var.virtual_machine_data_disk_attachment, "write_accelerator_enabled", null)
}

output "virtual_machine_data_disk_attachment.id" {
  description = "The ID of the Virtual Machine Data Disk attachment."
  value       = lookup(var.virtual_machine_data_disk_attachment, "id", null)
}

