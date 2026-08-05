output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "spoke_vnet_id" {
  value = azurerm_virtual_network.spoke.id
}

output "acr_login_server" {
  value = azurerm_container_registry.main.login_server
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.main.name
}


