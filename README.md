# A Github Action to run JulieOps in your favourite CI/CD tool

This is a simple JulieOps Action to run your favourite Kafka Gitops solution in Github Actions.

You can configure this action like this:

```yaml
on: [push]

jobs:
  julieops_job:
    runs-on: ubuntu-latest
    name: A job to say hello
    steps:
      - uses: actions/checkout@v2
      - name: Hello world action step
        id: julieops
        uses: kafka-ops/julieops-github-action@v1
        with:
          brokers: 'my.kafka.host:9092'
          topology: '/opt/julieops/topology.yml'
          config: '/opt/julieops/config.properties'
      # Use the output from the `hello` step
      - name: Get the output state
        run: echo "The time was ${{ steps.julieops.outputs.state }}"
```

## Inputs

The required inputs for this Actions are:

* **brokers**: The list of hosts you're going to run this action for.
* **topology**: The topology file or directory you're using with your action.
* **config**: Th necessary configuration for running JulieOps, as properties file available in your system.

## Outputs

## `state`

By default, JulieOps will output the current deployment state as part of this variable (free text form) 
