variable "cluster" {
  default = "cicd-example"
}
variable "app" {
  type        = string
  description = "Name of application"
  default     = "cicd"
}
variable "zone" {
  default = "eu-west"
}
variable "docker-image" {
  type        = string
  description = "name of the docker image to deploy"
  default     = "nginx:latest"
}