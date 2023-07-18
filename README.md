# Synse Charts

Vapor IO open source software helm charts.

## Adding this chart repository

```sh
helm repo add synse https://charts.vapor.io
```

## How do I install these charts?

```sh
helm install synse/<chart>
```

## Development and Contributing

Requirements:

 - Helm v3
 - A credential for a kubernetes cluster
 - [Helm Charts Guide](https://helm.sh/docs/topics/charts/)

When updating a Helm chart, `appVersion` is used track the Semver of the application to be deployed. The corresponding chart version
is for changes to the values used in templating.

Applications with existing charts can also use the [chart-releaser-action](https://github.com/vapor-ware/chart-releaser-action) to
automate bumping versions on new releases.

Changes to charts should be linted via `helm lint` and validated with [kubeconform](https://github.com/yannh/kubeconform).

Once changes are merged, the chart with be automatically published.
