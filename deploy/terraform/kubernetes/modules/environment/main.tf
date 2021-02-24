resource "kubernetes_service" "web" {
  metadata {
    name = "web"
    namespace = var.namespace
    #annotations = {
    #  beta.cloud.google.com/backend-config: "{'default': 'web-backend-config'}"
    #}
  }
  spec {
    selector = {
      component = "web"
    }
    port {
      name = "web" 
      port = 80
      target_port = 80
    }
    type = "NodePort"
  }
}

resource "kubernetes_deployment" "web" {
  metadata {
    name = "web"
    namespace = var.namespace
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        component = "web"
      }
    }
    template {
      metadata {
        labels = {
          component  = "web"
        }
      }
      spec {
        container {
          image = "reactivetradercloud/nginx:${var.image_tag}"
          name  = "nginx"
          port {
            container_port = 3000
          }
          resources {
            requests = {
              memory = "10M"
              cpu = "15m"
            }
          }
        }
      }
    }
  }
}

#resource "kubernetes_backend_config" {
#
#}

