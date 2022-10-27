//Export this cluster's attributes
output "kubeconfig" {
   value = linode_lke_cluster.my-cluster.kubeconfig
   sensitive = true
}

output "api_endpoints" {
   value = linode_lke_cluster.my-cluster.api_endpoints
}

output "status" {
   value = linode_lke_cluster.my-cluster.status
}

output "id" {
   value = linode_lke_cluster.my-cluster.id
}

output "pool" {
   value = linode_lke_cluster.my-cluster.pool
}