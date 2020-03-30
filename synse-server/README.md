# Synse Server

[Synse Server](https://github.com/vapor-ware/synse-server) is the API server component of the Synse
platform, which enables control and monitoring of physical and virtual infrastructure.

## TL;DR;

```bash
$ helm install synse/synse-server
```

## Introduction

This chart bootstraps a [Synse Server](https://github.com/vapor-ware/synse-server) deployment on
a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release synse/synse-server
```

The command deploys Synse Server on the Kubernetes cluster in the default configuration. The
[configuration](#configuration) section lists the parameters that can be configured during installation.

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the Synse Server chart and their default values.

| Parameter | Description | Default |
| :-------- | :---------- | :------ |
| `config` | The [Synse Server configuration YAML](https://synse.readthedocs.io/en/v3/server/user/configuration/). This is mounted into `/etc/synse/server/config.yaml` if specified. | `{}` |
| `nameOverride` | Partially override the fullname template (will maintain the release name). | `""` |
| `fullnameOverride` | Fully override the fullname template. | `""` |
| `rbac.create` | Create RBAC resources and a ServiceAccount for the Synse Server deployment to use. This must be done if Synse Server is configured to use plugin discovery via Kubernetes endpoints. | `false` |
| `metrics.enabled` | Enable/disable application metrics export (via Prometheus) at `/metrics`. | `false` |
| `image.registry` | The image registry to use. | `""` |
| `image.repository` | The name of the image to use. | `vaporio/synse-server` |
| `image.tag` | The tag of the image to use. | `v3.0.0` |
| `image.pullPolicy` | The image pull policy. | `Always` |
| `deployment.labels` | Additional labels for the Deployment. | `{}` |
| `deployment.annotations` | Additional annotations for the Deployment. | `{}` |
| `deployment.replicas` | The number of replicas to deploy with. | `1` |
| `pod.labels` | Additional labels for the Pod. | `{}` |
| `pod.annotations` | Additional annotations for the Pod. | `{}` |
| `service.labels` | Additional labels for the Service. | `{}` |
| `service.annotations` | Additional annotations for the Service. | `{}` |
| `service.type` | The type of the Service. | `ClusterIP` |
| `service.port` | The Service port to expose. | `5000` |
| `ingress.enabled` | Enable/disable creation of an Ingress resource. | `false` |
| `ingress.labels` | Additional labels for the Ingress. | `{}` |
| `ingress.annotations` | Additional annotations for the Ingress | `{}` |
| `ingress.hostname` | The Ingress hostname. | `""` |
| `ingress.tls` | Ingress TLS configuration (YAML). | `[]` |
| `livenessProbe.enabled` | Enable/disable the liveness probe check. | `true` |
| `livenessProbe.initialDelaySeconds` | The delay before the probe starts, in seconds. | `30` |
| `livenessProbe.timeoutSeconds` | The timeout before the probe should fail, in seconds. | `5` |
| `livenessProbe.periodSeconds` | The frequency with which the probe should run, in seconds. | `5` |
| `readinessProbe.enabled` | Enable/disable the readiness probe check. | `true` |
| `readinessProbe.initialDelaySeconds` | The delay before the probe starts, in seconds. | `5` |
| `readinessProbe.timeoutSeconds` | The timeout before the probe should fail, in seconds. | `2` |
| `readinessProbe.periodSeconds` | The frequency with which the probe should run, in seconds. | `5` |
| `args` | Additional arguments to pass to the container. | `[]` |
| `env` | Additional environment variables to set for the container. This may be used for configuring Synse Server as well. | `{}` |
| `resources.requests` | Pod requests resources. | `{}` |
| `resources.limits` | Pod limits resources. | `{}` |
| `nodeSelector` | Node labels for Pod assignment. | `{}` |
| `tolerations` | Node taints to tolerate. | `[]` |
| `affinity` | Pod affinity. | `{}` |
