# Synse Juniper JTI Plugin

The [Synse Juniper JTI Plugin](https://github.com/vapor-ware/synse-juniper-jti-plugin) is a Synse plugin
which provides networking data from Juniper JTI data streams. 

## TL;DR;

```bash
$ helm install synse/juniper-jti
```

## Introduction

This chart bootstraps a [Synse Juniper JTI Plugin](https://github.com/vapor-ware/synse-juniper-jti-plugin)
deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release synse/juniper-jti
```

The command deploys a Synse Juniper JTI Plugin on the Kubernetes cluster in the default configuration. The
[configuration](#configuration) section lists the parameters that can be configured during installation.

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the Synse Juniper JTI Plugin chart and their default values.
A value of `-` indicates no default is defined.

| Parameter | Description | Default |
| :-------- | :---------- | :------ |
| `config` | The Juniper JTI Plugin configuration. | `{}` |
| `nameOverride` | Partially override the fullname template (will maintain the release name). | `""` |
| `fullnameOverride` | Fully override the fullname template. | `""` |
| `metrics.enabled` | Enable/disable application metrics export (via Prometheus) at `:2112/metrics`. | `false` |
| `metrics.labels` | Additional labels for the metrics Service. This is used by the service monitor to target the exposed metrics port. | `{}` |
| `image.registry` | The image registry to use. | `""` |
| `image.repository` | The name of the image to use. | `vaporio/juniper-jti-plugin` |
| `image.tag` | The tag of the image to use. | `0.1.0` |
| `image.pullPolicy` | The image pull policy. | `Always` |
| `deployment.annotations` | Additional annotations for the Deployment. | `{}` |
| `deployment.labels` | Additional labels for the Deployment. | `{}` |
| `deployment.replicas` | The number of replicas to deploy with. | `1` |
| `pod.annotations` | Additional annotations for the Pod. | `{}` |
| `pod.labels` | Additional labels for the Pod. | `{}` |
| `pod.securityContext` | Pod security definitions. | `{}` |
| `securityContext` | Security definitions for containers running in the Pod. | `{}` |
| `service.annotations` | Additional annotations for the Service. | `{}` |
| `service.labels` | Additional labels for the Service. | `{}` |
| `service.type` | The Service type, defining how it is exposed to the network. | `ClusterIP` |
| `service.port` | The Service port to expose (http). | `5010` |
| `service.clusterIP` | The cluster IP to assign when service type is ClusterIP. | `""` |
| `service.jti.port` | The port to expose for the plugin's UDP server for receiving streamed Juniper telemetry. | `""` |
| `service.jti.nodePort` | The node port to proxy requests from when service type is NodePort. | `-` |
| `monitoring.serviceMonitor.enabled` | Enable/Disable the ServiceMonitor. | `false` |
| `monitoring.serviceMonitor.name` | The name of the monitor job. It may contain ASCII letters and digits, as well as underscores. It must match the regex [a-zA-Z_:][a-zA-Z0-9_]. | `juniper_jti_monitor` |
| `monitoring.serviceMonitor.namespace` | Deploy the ServiceMonitor to a namespace other than the target for the Release. Required in some setups. | `""` |
| `monitoring.serviceMonitor.selectorNamespace` | Declares which namespace the prometheus tooling should interrogate to find the services and pods. | `"{{ .Release.Namespace }}"` |
| `monitoring.serviceMonitor.selectorLabels` | Labels used to select the service/pods to monitor. | `{}` |
| `monitoring.serviceMonitor.path` | The url segment to append to the discovered service endpoint. (eg: /metrics) | `"/metrics"` |
| `monitoring.serviceMonitor.port` | The network port to attempt to connect to. Named ports are preferred, but numeric port numbers will work. | `"metrics"` |
| `monitoring.serviceMonitor.timeout` | Timeout, in seconds, to terminate a scrape and classify as failed. | `"4s"` |
| `monitoring.serviceMonitor.interval` | How often to scrape the metric data. | `"5s"` |
| `monitoring.serviceMonitor.labels` | Labels to apply to the ServiceMonitor. | `{}` |
| `livenessProbe.enabled` | Enable/disable the liveness probe check. | `true` |
| `livenessProbe.initialDelaySeconds` | The delay before the probe starts, in seconds. | `15` |
| `livenessProbe.timeoutSeconds` | The timeout before the probe should fail, in seconds. | `2` |
| `livenessProbe.periodSeconds` | The frequency with which the probe should run, in seconds. | `5` |
| `readinessProbe.enabled` | Enable/disable the readiness probe check. | `true` |
| `readinessProbe.initialDelaySeconds` | The delay before the probe starts, in seconds. | `5` |
| `readinessProbe.timeoutSeconds` | The timeout before the probe should fail, in seconds. | `2` |
| `readinessProbe.periodSeconds` | The frequency with which the probe should run, in seconds. | `5` |
| `args` | Additional arguments to pass to the container. | `[]` |
| `env` | Additional environment variables to set for the container. This may be used for configuring the plugin as well. | `[]` |
| `resources` | Pod resource restrictions. | `{}` |
| `nodeSelector` | Node labels for Pod assignment. | `{}` |
| `tolerations` | Node taints to tolerate. | `[]` |
| `affinity` | Pod affinity. | `{}` |
