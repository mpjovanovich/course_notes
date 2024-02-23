---
layout: base
title: Requirements Engineering
course: SDEV265
---

- [Requirements Engineering](#requirements-engineering)
  - [Feasibility Study](#feasibility-study)
  - [Detailing Requirements](#detailing-requirements)
    - [User Requirements](#user-requirements)
    - [System Requirements (Functional Specifications)](#system-requirements-functional-specifications)
    - [Keywords](#keywords)
    - [Natural vs Structured Natural Language](#natural-vs-structured-natural-language)

# Requirements Engineering

...

## Feasibility Study

An early step to figure out whether or not to move forward with a project.

**Technical Feasibility**: Determine if organization has the technical resources and expertise to meet the project requirements?

- Hardware
- Software
- Network
- Security
- Data
- Personnel

**Economic/Financial Feasibility**: Assess economic factors of the project to determine financial viability. Can use cost-benefit analysis to compare costs against projected benefits.

- Development costs
- Operating costs
- Maintenance costs
- Training costs
- Expected return
- Payback period

**Legal Feasibility**: Make sure project must meets legal requirements for all activities and deliverables in your project scope.

- Government compliance
- Domain-specific regulations
- Intellectual property
- Privacy

**Operational Feasibility**: Consider how well project matches the organization’s capacity planning, resources, strategic goals and business objectives.

- Is the solution compatible with the organization's existing systems and procedures?
- Does the solution align with the organization's culture and values?
- Is this where we want to go as an organization?

**Time Feasibility**: Estimate time that will take to execute the project. Set deadlines based on current operations, such as demand planning and production schedule.

- Time to develop
- Time to train
- Time to implement
- Time to support
- Downtime for rollout

## Detailing Requirements

_Reference:_

- [NASA: How to Write a Good Requirement](https://dl.acm.org/doi/abs/10.1007/978-3-030-44429-7_2)

### User Requirements

- High-level
- Abstract (relatively)
- Typically for non-technical stakeholders and initial planning

### System Requirements (Functional Specifications)

- Detailed
- Measurable
- Formal language

_Example:_

[NASA: Example of Functional and Performance Requirements](https://www.nasa.gov/reference/4-2-technical-requirements-definition/#hds-sidebar-nav-4)

- The TVC shall gimbal the engine a maximum of 9 degrees, ± 0.1 degree.
- The TVC shall gimbal the engine at a maximum rate of 5 degrees/second ± 0.3 degrees/second.
- The TVC shall provide a force of 40,000 pounds, ± 500 pounds.
- The TVC shall have a frequency response of 20 Hz, ± 0.1 Hz.

### Keywords

- Often use keywords to specify constraints:
  - **shall**: mandatory
  - **should**: recommended
  - **may**: optional
  - **will**: facts or declarations

### Natural vs Structured Natural Language

**Natural Language**: Simple, informal, and easy to understand. Often used for initial requirements gathering. Must common way to express requirements.

- "The system shall allow the user to log in."
- "The system should display the user's name after login."
- "The system may display a welcome message after login."

**Structured Natural Language**: More formalized, with a defined structure and syntax. Often used for more detailed requirements or speficic domains.

- Follow a template.
- Can be tabular (table format) or textual.
- [NASA: GATEWAY SYSTEM REQUIREMENTS](https://ntrs.nasa.gov/api/citations/20190029153/downloads/20190029153.pdf)
