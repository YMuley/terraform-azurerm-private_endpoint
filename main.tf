
# --------- Private Endpoint ------------
resource "azurerm_private_endpoint" "private_endpoint" {
  for_each            = local.private_endpoint
  name                = each.value.name
  location            = each.value.location
  resource_group_name = var.resource_group_output[each.value.resource_group_name].name
  subnet_id           = var.subnet_output[format("%s/%s", each.value.virtual_network_name, each.value.subnet_name)].id
  tags                = each.value.tags == null ? var.default_values.tags : each.value.tags

  private_service_connection {

    name                           = "private_service_connection_${each.value.name}"
    is_manual_connection           = false
    private_connection_resource_id = each.value.private_connection_resource_id
    subresource_names              = each.value.subresource_name
  }
}
