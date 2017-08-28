Docker Example
=================
This repo is just to illustrate, hopefully very simply, a .NET Core app running in a docker container. The main take-away I wanted to demonstrate here is a simple example of using docker, and **that this is using .NET Core 1.1 without it needing to be installed on your machine** - which is pretty cool.

_Note: I wrote and tested this all on a mac - but it should work the same on Windows._

I'm sure there are many other repos like this, but I wanted to build one quick to show a colleague.


After you get docker installed, you can start up this web app two ways:

Using `docker run`:
-----------
```sh
> docker build -t web-example .
> docker run docker run -p 80:3000 web-example
```

**Explaination**: `docker build` builds an image (kind of like compiling a container definition) and the `-t web-example` parameters give it the name_web-example_. `docker run` creates and runs a container from the `web-example` image (sort of like an instanciation). The `-p 80:3000` parameter means to map your machines port 80 to the container's port 3000. You could make 100 copies of this container and have each one mapped to a different port on your local machine without having to rebuild anything.

Using `docker-compose`:
-------------------
If you go this route, you will need to install `docker-compose`. `docker-compose` lets you define what you want docker to do in YAML files (`docker-compose.yml` is the default place) instead of having to do all the CLI commands directly to `docker` itself. 

```sh
> docker-compose up --build
```

I have already placed a `docker-compose.yml` file in this repo, so look there for how I set it up. It the same as the arguments given to `docker run` above, but this time in file form. 

PS: `docker-compose` is VERY good at letting you work with a group of containers - which is not part of this repo, but is very worth being aware of. 


Try it
-----
After doing one of the above methods, just opena  browser, and go to http://localhost. You should be a no frills `hello world` page, and some messages in the console about it receiving requests.




