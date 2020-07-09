# Synse LoadGen

[Synse LoadGen](https://github.com/vapor-ware/synse-loadgen) is a service which generates a request
load against the Synse Server API. It is useful for debugging and development. Primarily, it is used
to exercise Synse under a load, ensure that it handles failures correctly, and to expose any bugs
which may not yet be caught by unit tests.

## TL;DR;

```bash
$ helm install synse/synse-loadgen
```

## Introduction

This chart bootstraps a [Synse LoadGen](https://github.com/vapor-ware/synse-loadgen) deployment on
a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release synse/synse-loadgen
```

The command deploys Synse LoadGen on the Kubernetes cluster in the default configuration. The
[configuration](#configuration) section lists the parameters which may be configured during installation.

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the Synse LoadGen chart and their default values.

| Parameter | Description | Default |
| :-------- | :---------- | :------ |
| `config` | The [Synse LoadGen configuration YAML](https://github.com/vapor-ware/synse-loadgen#configuring). | `{}` |
| `nameOverride` | Partially override the fullname template (will maintain the release name). | `""` |
| `fullnameOverride` | Fully override the fullname template. | `""` |
| `image.registry` | The image registry to use. | `""` |
| `image.repository` | The name of the image to use. | `vaporio/synse-loadgen` |
| `image.tag` | The tag of the image to use. | `1.0.2-rc.2` |
| `image.pullPolicy` | The image pull policy. | `Always` |
| `deployment.labels` | Additional labels for the Deployment. | `{}` |
| `deployment.annotations` | Additional annotations for the Deployment. | `{}` |
| `deployment.replicas` | The number of replicas to deploy with. | `1` |
| `pod.labels` | Additional labels for the Pod. | `{}` |
| `pod.annotations` | Additional annotations for the Pod. | `{}` |
| `env` | Additional environment variables to set for the container. This may be used for configuring Synse LoadGen as well. | `{}` |
| `resources.requests` | Pod requests resources. | `{}` |
| `resources.limits` | Pod limits resources. | `{}` |
| `nodeSelector` | Node labels for Pod assignment. | `{}` |
| `tolerations` | Node taints to tolerate. | `[]` |
| `affinity` | Pod affinity. | `{}` |
