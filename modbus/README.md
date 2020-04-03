# Modbus IP Plugin

The [Synse Modbus IP Plugin](https://github.com/vapor-ware/synse-modbus-ip-plugin) is a Synse plugin
which provides generic support for reading and writing to modbus devices over IP.

## TL;DR;

```bash
$ helm install synse/modbus
```

## Introduction

This chart bootstraps a [Synse Modbus IP Plugin](https://github.com/vapor-ware/synse-modbus-ip-plugin)
deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release synse/modbus
```

The command deploys a Synse Modbus IP Plugin on the Kubernetes cluster in the default configuration. The
[configuration](#configuration) section lists the parameters that can be configured during installation.

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the Synse Modbus Plugin chart and their default values.

| Parameter | Description | Default |
| :-------- | :---------- | :------ |
| `config` | The Modbus Plugin configuration. | `{}` |
| `devices` | Configuration for the modbus devices which the plugin should interface with. | `{}` |
| `nameOverride` | Partially override the fullname template (will maintain the release name). | `""` |
| `fullnameOverride` | Fully override the fullname template. | `""` |
| `metrics.enabled` | Enable/disable application metrics export (via Prometheus) at `:2112/metrics`. | `false` |
| `image.registry` | The image registry to use. | `""` |
| `image.repository` | The name of the image to use. | `vaporio/modbus-ip-plugin` |
| `image.tag` | The tag of the image to use. | `2.0.0` |
| `image.pullPolicy` | The image pull policy. | `Always` |
| `deployment.annotations` | Additional annotations for the Deployment. | `{}` |
| `deployment.labels` | Additional labels for the Deployment. | `{}` |
| `deployment.replicas` | The number of replicas to deploy with. | `1` |
| `pod.annotations` | Additional annotations for the Pod. | `{}` |
| `pod.labels` | Additional labels for the Pod. | `{}` |
| `service.annotations` | Additional annotations for the Service. | `{}` |
| `service.labels` | Additional labels for the Service. | `{}` |
| `service.port` | The Service port to expose. | `5004` |
| `livenessProbe.enabled` | Enable/disable the liveness probe check. | `true` |
| `livenessProbe.initialDelaySeconds` | The delay before the probe starts, in seconds. | `30` |
| `livenessProbe.timeoutSeconds` | The timeout before the probe should fail, in seconds. | `5` |
| `livenessProbe.periodSeconds` | The frequency with which the probe should run, in seconds. | `5` |
| `readinessProbe.enabled` | Enable/disable the readiness probe check. | `true` |
| `readinessProbe.initialDelaySeconds` | The delay before the probe starts, in seconds. | `5` |
| `readinessProbe.timeoutSeconds` | The timeout before the probe should fail, in seconds. | `2` |
| `readinessProbe.periodSeconds` | The frequency with which the probe should run, in seconds. | `5` |
| `args` | Additional arguments to pass to the container. | `[]` |
| `env` | Additional environment variables to set for the container. This may be used for configuring the plugin as well. | `{}` |
| `resources.requests` | Pod requests resources. | `{}` |
| `resources.limits` | Pod limits resources. | `{}` |
| `nodeSelector` | Node labels for Pod assignment. | `{}` |
| `tolerations` | Node taints to tolerate. | `[]` |
| `affinity` | Pod affinity. | `{}` |