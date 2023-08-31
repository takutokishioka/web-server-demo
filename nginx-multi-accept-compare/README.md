# Nginx `multi-accept` Compare


## Purpose
The purpose of this project is to compare the performance impact of the Nginx `multi_accept` directive.

## Prerequisites
Before using this project, ensure you have Apache Bench (`ab`) installed on your system.

## How to Use
1. Run `docker-compose up` to start the Nginx servers with different `multi_accept` settings.
2. Run `./compare_ab_outputs.sh` to execute the performance tests and compare the results.

## Description

The primary objective of this project is to understand the effect of the `multi_accept` directive in Nginx configurations. The project includes two different Nginx server configurations: one with `multi_accept` enabled and another with it disabled. By running performance tests using Apache Bench (`ab`), you can observe the impact of this configuration option on the server's ability to handle incoming connections efficiently.