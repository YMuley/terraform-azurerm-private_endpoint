
locals {  
    private_endpoint = {for private_endpoint in var.private_endpoint_list : format("%s/%s",private_endpoint.resource_group_name,private_endpoint.name) => private_endpoint}
}