# Synse Emulator Plugin

The [Synse Emulator Plugin](https://github.com/vapor-ware/synse-emulator-plugin) is a Synse plugin
which provides generated reading data for emulated devices.

## TL;DR;

```bash
$ helm install synse/emulator
```

## Introduction

This chart bootstraps a [Synse Emulator Plugin](https://github.com/vapor-ware/synse-emulator-plugin)
deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release synse/emulator
```

The command deploys a Synse Emulator Plugin on the Kubernetes cluster in the default configuration. The
[configuration](#configuration) section lists the parameters that can be configured during installation.

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the Synse Emulator Plugin chart and their default values.

| Parameter | Description | Default |
| :-------- | :---------- | :------ |
| `` |  |  |