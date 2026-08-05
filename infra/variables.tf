variable "location" {
  description = "Azure region where all resources will be deployed."
  type        = string
  default     = "centralindia"
}

variable "project" {
  description = "Project name used as a prefix for all Azure resources."
  type        = string
  default     = "campusconnect"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
  default     = "rg-campusconnect"
}

variable "aks_node_vm_size" {
  description = "Virtual machine size for the AKS node pool."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "postgres_admin_username" {
  description = "Administrator username for the Azure PostgreSQL server."
  type        = string
  default     = "pgadmin"
}

variable "postgres_admin_password" {
  description = "Administrator password for Azure PostgreSQL. Set using TF_VAR_postgres_admin_password."
  type        = string
  sensitive   = true
}

variable "aks_node_count" {
  description = "Number of nodes in the AKS cluster."
  type        = number
  default     = 1
}

variable "postgres_sku_name" {
  description = "SKU for the Azure PostgreSQL Flexible Server."
  type        = string
  default     = "B_Standard_B1ms"
}

variable "postgres_storage_mb" {
  description = "Storage allocated to PostgreSQL in MB."
  type        = number
  default     = 32768
}

variable "tags" {
  description = "Tags applied to all Azure resources."
  type        = map(string)

  default = {
    Project     = "CampusConnect"
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}