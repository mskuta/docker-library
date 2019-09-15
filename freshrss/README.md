About
=====

This bundle deploys the news reader [FreshRSS](https://github.com/FreshRSS/FreshRSS) backed by a MariaDB database. FreshRSS is derived from the very latest sources. PHP's own web server is used to run the application. You might want to put a reverse proxy in front of it.

Setup
=====

`docker` and `docker-compose` have to be installed.

1. Clone this repository.
2. Optional: Adjust the variables in file `.env` to your liking. The default port for accessing the web interface is 8081.
3. Execute `docker-compose build`.
4. Execute `docker-compose up --detach`.
5. Open the application with your preferred web browser.

Done!

