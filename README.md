# Projeto Prático Programa Intensivo em Containers e Kubernetes - Desenvolvimento e Otimização Segura de Aplicações Kubernetes

## Visão Geral
O objetivo deste projeto é criar e implementar uma aplicação em Kubernetes, utilizando as melhores práticas de segurança e otimização. Este projeto é um fork do giropops-senhas.

## Tecnologias Utilizadas
- **Docker**
- **kube-prometheus**
- **Ingress NGINX Controller**
- **Cert Manager**
- **Trivy**
- **Cosign** 
- **Locust**
- **GitHub Actions**

## Requisitos
Para rodar os manifestos no seu cluster Kubernetes, deve realizar a instalação dos seguintes componentes:
-   [Ingress NGINX Controller](https://kubernetes.github.io/ingress-nginx/deploy/)
-   [kube-prometheus](https://prometheus-operator.dev/docs/prologue/quick-start/)
-   [Cert-Manager](https://cert-manager.io/docs/installation/kubernetes/)

## Deployment no Kubernetes
- **Manifestos YAML**: Dentro da pasta `/manifests` temos algumas pastas com arquivos YAML necessários para subir nossa infraestrutura, Deployments, Services, Ingress, Prometheus, Configmaps
- **Práticas de Segurança e Eficiência**: Os Deployments contém liveness e readiness probes, limites de recursos e outras configurações.

## Integração e Monitoramento
- **Configuração do Prometheus**: Utilizado o `kube-prometheus` para obter Prometheus e Grafana. Além do mais, estamos utilizando ServiceMonitor e PrometheusRule.

## Pipeline de CI/CD
- **Trigger**: Push para `main`
- **Steps**: Checkout, Docker Build, Scanner, Docker Push & Sign

## Testes de Performance
-  **User Actions**: - POST to `/api/gerar-senha`  - GET from `/api/senhas`
