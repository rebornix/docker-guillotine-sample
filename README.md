# docker-guillotine-sample
Docker sample for [guillotine](https://github.com/technoweenie/guillotine), which is currently used by GitHub to shorten URLs

## build the image
1. Build guillotine image by yourself, `docker build -t rebornix/guillotine .`.
2. Fetch a redis images as adapter instead of memory, `docker pull redis`. You can change this to any adapter you like.

## run container
1. `docker run --name guillotine-redis -d redis`
2. `docker run -d --name urlshorten -v $(pwd)/:/opt/urlshorten -link guillotine-redis:redis -e RACK_ENV=production -p 80:80 rebornix/guillotine`
