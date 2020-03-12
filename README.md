**IMPORTANT**: This examples are without any dependencies. We avoid to
use some dependencies to understand how to do our code testable.

You can use dependencies: mock, mox and meck.

### Run unit testing

> mix test.unit

### Run integration testing

Not implemented yet.

## Important testing comments.

- Mocks/stubs do not remove the need to define an explicit interface 
between your components.

- Avoid duplicate tests.

- **Making the code "testable"**: This sentence is not about making the "testeable" 
code, it is about improving the design of your code. A test is a consumer of your 
API like any other code you write. If you are saying "I don't want to make my code
testeable", you are saying "I don't want to desacouple some modules" or "I don't
want to think about the contract behind these components".

## What are the Stubs and Mocks?

- A **stub** is a piece of code that implements a contract, pre-programmed to 
return specific responses so you can test how your code behaves when handling 
those responses. Provide different outputs. Are most useful in porting and 
distributed computing.

- A **mock**, is similar, but also includes expectations (like "make sure this 
function is called N times with these args", etc). You will usually verify all 
these expectations at the end of your test case.

I always consider **mock** to be a noun, never a verd.

Mocks and Stubs must have the minimum information to work.

## Testing types.

**Unit testing** is a software testing method by which individual units of 
source code.

**Integration testing** is the phase in software testing in which individual 
software modules are combined and tested as a group. Integration testing is 
conducted to evaluate the compliance of a system or component with specified 
functional requirements.

**Functional testing** is a type of software testing whereby the system is tested 
against the functional requirements/specifications.

**Regression testing** is defined as a type of software testing to confirm that 
a recent program or code change has not adversely affected existing features.

**Validation testing** is the process of checking that a software system meets 
specifications and that it fulfills its intended purpose. It is normally the 
responsability of **Software Testers**.

General Guideline: for each test using a mock, you must have an integration test 
covering the usage of that mock. Without the integration test, there is guarantee
the system actually works when all pieces.

## Methods for create unit testing.
### Explicit Contracts.

This way is more useful when we have to access to an external service.
(Another Web API, Databases, etc...). 

The best characteristic is we can choose the best strategy to retrieve data 
from External service per environment.

How work with explicit contracts:
- Detect external dependency to be desacouple.
- Create a dependency contract.
- Create a implementation per environment implementing that contract.
- Add in env config the module of implementation.
- Replace dependency in your code.

The best way for this option is to use **STUBS** but you can use **MOCKS**.

### Mock as local or module.

This way is more useful when a module depends another heavy module.

We send the dependency mock (function or module) per parameters. How works:

- Add optional param in the function.
- This params has the production dependency as default value.
- In test we generate a anonym function as a mock and pass as a parameter.

### Using stubs

This way is more useful when we want differents results depending
of the parameters. For example to query to database:

Depending of the table and the query we have differents results.

the way to procedure is the same that use explicit contract with mocks.

## General

Using **DAMP** not **DRY** to testing. **D**escriptive **A**nd 
**M**eaningful **P**hrases 
on the tests. The most important is:

- Test code should maximize its readability.
- Test code is **untested code**. Minimize the logic in it and
try to keep it as simple as posible.
- All unit testing should run in parallel.
- Don't testing library codes.

## Goal

The goal here is that you should be able to look at a single test and instantly 
realise what’s going on, without having to jump around just to understand what’s 
this test doing.