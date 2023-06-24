# Sigma Token

The Sigma Token is a smart contract developed using Solidity and JavaScript, incorporating features such as a sales system, account system, and test suite. You have the flexibility to modify this template according to your requirements and create your personalized smart contract.

To execute all the Truffle commands effectively, it is recommended to install [Ganache](https://trufflesuite.com/ganache/.

Begin by creating a workspace in Ganache and initiating it. Ensure that Ganache remains operational while you work on your Truffle project.

# Install Truffle

```bash
npm install -g truffle
```

Install truffle to use all the below commands and create a new truffle project if needed (**truffle init**)

# Building

```bash
truffle build
```

Build your truffle project before testing it

# Compile

```bash
truffle compile
```

Compile your truffle project after building

# Migrate

```bash
truffle migrate
```

Migrate your truffle migrations after building and compiling

# Run Tests

```bash
truffle test
```

Run tests for your truffle projects, never forget to create and run tests

# Important

- Create tests only in **test** folder

- All Solidity files that define your token must be in **contracts** folder

- Migrations that import those contracts must be in **migrations** folder

- Always remember to test, build, compile after big changes in the project

- Do not edit truffle config unless strongly necessary

# License

MIT License

Copyright (c) 2023 Arya Praneil Pritesh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
