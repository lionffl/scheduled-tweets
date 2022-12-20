# Tweet Schedule

A straight forward application that allows you to create an account, connect to one or more Tweeter Accounts and schedule tweets to be posted afterwards.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [Rails](https://rubyonrails.org/)
- [Bundler](https://bundler.io/)

### Installation

1. Clone the repository: `git clone git@github.com:lionffl/scheduled-tweets.git`

2. Navigate to the directory: `cd scheduled-tweets`

3. Switch to development branch `git checkout development`

4. Install the required dependencies: `bundle install`

5. Set up the database: `rails db:migrate`

6. Start the server `rails server`

The server should now be running at http://localhost:3000.

## Usage

Local environment is set to use sqlite as database.

Production (deployment setup) is defined to use fly.io and uses postgresql.

## Contributing

If you'd like to contribute to the project, please follow these guidelines:

1. Fork the repository.
2. Create a feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request.

## Next features

* Set up mailer for password reset;
* Contact/About page
* Footer

## Contact

* lionffl@gmail.com / felipelima@geografialinks.com

