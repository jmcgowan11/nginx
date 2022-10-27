terraform {
  required_providers {
    linode = {
      source  = "linode/linode"

      # version = "..."
    }
  }
}

  resource "linode_lke_cluster" "my-cluster" {
    name        = var.cluster
    k8s_version = "1.21"
    region      = var.region
    tags        = [var.project]

    pool {
        type  = "g6-standard-2"
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