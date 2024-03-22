---
layout: base
title: Release Testing
course: SDEV265
---

- [Release Testing](#release-testing)
  - [Requirements Based Testing](#requirements-based-testing)
  - [Scenario Testing](#scenario-testing)
  - [Performance Testing](#performance-testing)
  - [Regression Testing](#regression-testing)

# Release Testing

- Done when a version of the software is ready for release, prior to turning over to users.
- Done by dedicated test team (not devs).
- Well defined and formal protocols.

## Requirements Based Testing

Every requirement should have at least one test case. Establish minimal coverage.

E.g.:

| Requirement                                                 | Test Case                                                                                                             |
| ----------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| Transaction shall go to "Pending" state after user approval | 1. User approves transaction. 2. Verify transaction state is "Pending".                                               |
| Pending transactions shall go to "Released" state after 3AM | 1. Create transaction in Pending state. 2. Set system clock to 3AM. 4. Verify transaction state is "Released".        |
| Pending transactions shall go to "Released" state after 3AM | 1. Creat transaction in non-Pending state. 2. Set system clock to 3AM. 3. Verify transaction state is not "Released". |

## Scenario Testing

- Test software as real user might for common use cases.
- "Walkthrough" of some functionality.
- Expensive, but may be useful for
  - Completely new functionality
  - Big changes to existing functionality
  - Long sequences of operations; hard to test individually
  - Complex interactions between components; hard to test individually
  - High risk scenarios

## Performance Testing

**Stress testing / load testing:** make demands on software that are outside of normal operating conditions.

Try to:

- make sure software doesn't break under abnormal load
- reveal bottlenecks

E.g.:

- Many users trying to do same thing at once
- Many database calls
- Many expensive computations
- Abnormal data sizes; huge file comes in to process

\*May require dev team to assist with simulating abnormal conditions.

## Regression Testing

- After fixes, code refactoring, introducing new software components or hardware, etc.
- Re-run related tests to make sure nothing else was broken.
- May be done by test team or dev team.
- May be done during development or release testing.
