# docker-flyspray
A docker container for flyspray by [Alejandro Baez](https://twitter.com/a_baez)

## DESCRIPTION
A docker container for flyspray bug tracker. The latest version from source
is what used for the build. It currently still has initial setup configuration
for ease of use.

## INSTALLATION

### From source
If using from source, simply clone the repository and run by using the
contained `fig.yml` file.

    hg clone <abaez/docker-flyspray source> docker-flyspray
    cd docker-flyspray
    fig build

### From docker directly
If using the docker container hub, then you can use the docker build.

    docker pull abaez/flyspray

## USAGE
Installation is simple enough, but running, you may want to mount the `/app`
on location of your choosing. This `/app` will be where your flyspray
configuration will go. I may end up changing this to only use a configuration
file, but for right now it requires full `/app` directory.

### From source
You edit line 15 on `fig.yml` to where you have your flyspray configuration.
Then simply run `fig up`

### from docker directly
You need to give where you have your flyspray configuration and you need to
give where is your database located.

    docker run -v ./app:/app --link db -p "80:80" abaez/flyspray


## LICENSE
The MIT License (MIT)

Copyright (c) 2015 [Alejandro Baez](https://twitter.com/a_baez)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
