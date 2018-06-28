# Docker support for Carpentry lessons

1. Install [Docker Engine](https://store.docker.com/search?type=edition&offering=community) and
[docker-compose](https://docs.docker.com/compose/install/)
2. Copy docker-compose.yml and Dockerfile into your lesson repository 
3. Run `docker-compose up -d site` to start a Jekyll Docker container that will use Jekyll to build and watch the
   current working directory
4. You can also run `make lesson-check; make lesson-check-all;` via `docker-compose up -d lesson-check`
5. An optional jupyter notebook docker-compose file is also available running the latest 
[jupyter/datascience-notebook stack](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook)
