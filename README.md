**IMPORTANT:** Mocks/stubs do not remove the need to define an explicit interface between your components.

Avoid duplicate tests.

**Making the code "testable"**: This sentence is not about making the "testeable" code, it is about
improving the design of your code. A test is a consumer of your API like any other code you write.

## What are the Stubs and Mocks?

A **stub** is a piece of code that implements a contract, pre-programmed to return specific responses so you can test how your code behaves when handling those responses. Provide different outputs. Are most useful in porting and distributed computing.

A **mock**, is similar, but also includes expectations (like "make sure this function is called N times with these args", etc). You will usually verify all these expectations at the end of your test case.

I always consider **mock** to be a noun, never a verd.

Mocks and Stubs must have the minimum information to work.

## Testing types.

**Unit testing** is a software testing method by which individual units of source code.

**Integration testing** is the phase in software testing in which individual software modules are combined and tested as a group. Integration testing is conducted to evaluate the compliance of a system or component with specified functional requirements.

**Functional testing** is a type of software testing whereby the system is tested against the functional requirements/specifications.

**Regression testing** is defined as a type of software testing to confirm that a recent program or code change has not adversely affected existing features.

**Validation testing** is the process of checking that a software system meets specifications and that it fulfills its intended purpose. It is normally the responsability of **Software Testers**.

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

The goal here is that you should be able to look at a single test and instantly realise what’s going on, without having to jump around just to understand what’s this test doing.

## Testing implementations Contracts

The implementation crontracts has to have two conditions:
- Define the implementation callbacks.
- Define the default functions for this callbacks.



<!-- ## How to create tests that aren’t redundant  -->
<!-- 
### Incoming query

In this case we just want to assert on the result of the function
that's being tested. His means that we simply run the function and set the assertion according to the provided arguments. -->