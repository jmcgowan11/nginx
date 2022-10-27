terraform {
  required_providers {
    linode = {
      source  = "linode/linode"

      # version = "..."
    }
  }
}

  resource "linode_lke_cluster" "my-cluster" {
    label       = var.cluster
    region      = var.region
    k8s_version = var.kubernetes_ver
    tags        = [var.project]

    pool {
        type  = "g6-nanode-1"
        count = 3

        autoscaler {
          min = 3
          max = 10
        }
    }

  # Prevent the count field from overriding autoscaler-created nodes
  lifecycle {
    ignore_changes = [
      pool.0.count
    ]
  }
}