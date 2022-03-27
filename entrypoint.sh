#!/bin/sh -l

##
# Running a JulisOps Job for $1
####
#    --brokers <arg>                  The Apache Kafka server(s) to connect
#                                     to.
#    --clientConfig <arg>             The client configuration file.
#    --dryRun                         Print the execution plan without
#                                     altering anything.
#    --help                           Prints usage information.
#    --overridingClientConfig <arg>   The overriding AdminClient
#                                     configuration file.
#    --plans <arg>                    File describing the predefined plans
#    --quiet                          Print minimum status update
#    --topology <arg>                 Topology config file.
#    --validate                       Only run configured validations in
#                                     your topology
#    --version                        Prints useful version information.
###

julie-ops-cli.sh  \
    --brokers $1 \
    --topology $2 \
    --clientConfig $3
