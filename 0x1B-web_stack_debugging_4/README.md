# Webstack Debugging #4

This project involves debugging and optimizing the Nginx web server to handle a high number of concurrent requests.

## Steps

1. Set open file limits for Nginx using `sed` in the `/etc/default/nginx` file.
2. Apply the Puppet manifest to automate the changes.
3. Test the server with ApacheBench.

## Puppet Manifest

The Puppet manifest `0-the_sky_is_the_limit_not.pp` uses `sed` to set the open file limits for Nginx.

## Usage

To apply the Puppet manifest, run:

```bash
puppet apply 0-the_sky_is_the_limit_not.pp
