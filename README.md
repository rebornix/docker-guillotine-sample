# docker-guillotine-sample
Docker sample for [guillotine](https://github.com/technoweenie/guillotine), which is currently used by GitHub to shorten URLs

## build the image
`docker build -t rebornix/guillotine .`

## run container
`docker run -i -e RACK_ENV=production -p 80:80 rebornix/guillotine`
