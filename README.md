# SAM Lambda Generate

Simple script to generate Lambda-associated files for AWS SAM projects.

## Description

`sam-lambda-generate` is a command-line tool designed to simplify the process of generating Lambda-associated files for AWS SAM (Serverless Application Model) projects. It creates a folder structure and copies template files required for Lambda functions.

## Installation

You can install `sam-lambda-generate` globally using npm or yarn:

```
bash
# Using npm
npm install -g sam-lambda-generate

# Using yarn
yarn global add sam-lambda-generate
```

Alternatively, you can use npx to run the script without installing it:

```
npx sam-lambda-generate -d <folder_name>
```

## Usage

To use sam-lambda-generate, run the following command:

```
sam-lambda-generate -d my_lambda_function
```

This will create a folder named my_lambda_function in the current directory and copy template files required for Lambda functions into it.
