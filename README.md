# Fleet-Test

## Getting Started
1. Install Docker-cli
2. Install Rails dependencies by running `docker-compose run api bundle install`
3. Install Nuxt dependencies by running `docker-compose run client yarn install`
4. Build the appropriate images needed for the project with `docker-compose build`
5. Seed the database with `docker-compose run api rails db:reset`
6. Start the project with `docker-compose up`
7. View the seeded data in Nuxt with Vue.js at `localhost:3000`
  * Note: Sometimes Google Chrome does not run async functions, if this occurs try another browser (e.g. FireFox).
