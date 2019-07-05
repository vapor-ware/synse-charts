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
| `` |  |  |