resource "aws_eks_cluster" "this" {
  name                      = "dvn-workshop-eks-cluster"
  version                   = "1.31"
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  role_arn                  = aws_iam_role.eks_cluster.arn

  access_config {
    authentication_mode = "API_AND_CONFIG_MAP"
  }

  vpc_config {
    subnet_ids = data.aws_subnets.private.ids
  }

  lifecycle {
    precondition {
      condition     = length(data.aws_subnets.private.ids) >= 2
      error_message = "At least 2 private subnets are required for EKS cluster. Please apply the networking infrastructure in ../01-networking first."
    }
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_AmazonEKSClusterPolicy,
  ]
}
