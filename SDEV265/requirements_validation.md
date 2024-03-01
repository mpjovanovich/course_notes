---
layout: base
title: Requirements Validation
course: SDEV265
---

- [Requirements Validation](#requirements-validation)
  - [Why validate?](#why-validate)
  - [How is it done?](#how-is-it-done)
  - [Agile Validation](#agile-validation)
  - [Requirements Management](#requirements-management)
    - [Software Tooling](#software-tooling)

# Requirements Validation

Check if finalized requirements are correct and complete according to customer's needs.

## Why validate?

- Requirements errors are more costly than bugs.
  - Proliferate / propagate through the system.
  - E.g. incorrect term starts being used in a few reports, then database, then UI...
- Requirements may have changed since start.
- Final check for understanding between client and developer.

## How is it done?

- **Review**: Peer review, walkthroughs, inspections.
- **Prototyping**: Give stakeholder limited functionality app to test.
- **Test-cases**: Writing test cases often turns up hidden requirements.

## Agile Validation

Since agile is in short iterations:

- Validation is done at the end of each iteration...
- But is also relatively continuous
- Changes are part of process; less costly to change requirements

## Requirements Management

- **Traceability**: Requirements should be traceable to source.

  - E.g. "This requirement came from [this stakeholder] and is documented [here]."

- **Tracking**: Requirements should be uniquely tracked and managed.

  - Tracking identifier - number, version, date, title, etc.
  - Progress should be tracked referencing tracking identifier.
  - Spin off requirements should reference original requirements.

Undocumented system changes inevitably happen due to unforeseen needs or critical bugs, **but should be documented afterwards**.

- Thorough incident reports
- Reference related requirements
- If another developer can't understand why a change was made, it's not documented well enough.

### Software Tooling

- Version control
- Issue tracking
- Wiki
- ~~E-mail~~ (save all communications, but not a tracking tool)
