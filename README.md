# Watir QA Automation Framework

This repository contains a lightweight QA automation framework built using **Watir**, **Cucumber**, and other essential Ruby gems. It is designed to provide fast, reliable, and scalable automation for web applications.

## Features

- **Page Object Model (POM):** Encapsulation of page elements and actions to ensure maintainability.
- **Data-Driven Testing:** Uses FactoryBot and Faker for flexible and reusable test data generation.
- **Cucumber BDD:** Behavior-Driven Development approach for writing clear and concise test scenarios.
- **Comprehensive Reporting:** Integrated with ReportBuilder for test execution summaries.
- **Browser Management:** Headless execution capability and CI-friendly configuration.

## Prerequisites

1. **Ruby**: Ensure Ruby is installed on your system. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/).
2. **Bundler**: Install Bundler to manage gem dependencies.
   ```bash
   gem install bundler
   ```
3. **Chrome Browser**: Ensure Google Chrome is installed.
4. **Chromedriver**: Download the compatible version of Chromedriver for your Chrome browser.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Ashish-chamoli002/Watir-QA-automation.git
   cd Watir-QA-automation
   ```
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Configure the environment settings in `config/config.yml`.

## Framework Structure

```plaintext
Watir-QA-automation/
├── Gemfile                 # Gem dependencies
├── features/              # Cucumber features and step definitions
│   ├── login.feature       # Example feature file
│   ├── step_definitions/   # Step definitions for Cucumber scenarios
│   │   └── login_steps.rb
│   ├── factories/          # FactoryBot data definitions
│   │   └── user_data.rb
│   ├── support/            # Support files for Cucumber execution
│   │   ├── env.rb          # Environment configuration
│   │   ├── hooks.rb        # Hooks for pre/post scenario execution
│   │   ├── pages/          # Page object classes
│   │   │   ├── base_page.rb
│   │   │   ├── login_page.rb
│   │   └── helper/         # Helper modules
│   │       └── element_helper.rb
├── config/                # Configuration files
│   └── config.yml
└── README.md               # Project documentation
```

## Usage

1. To run tests, use the following command:
   ```bash
   bundle exec cucumber
   ```
   For headless execution:
   ```bash
   HEADLESS=true bundle exec cucumber
   ```
2. Customize test execution by specifying tags:
   ```bash
   bundle exec cucumber --tags @tag_name
   ```

