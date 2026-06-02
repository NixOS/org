# Proposal: Grant program and initiative funding

## Motivation

- Currently there is no clear way to finance major improvements via a trusted entity
- Lack of a way to use NixOS Foundation profits in a good and transparent way, also to encourage more donations
- Provide an easy way for contributors to get paid and work together

# Detailed Design

There are two inter-related parts to this proposal:

- Grant program: A way for contributors to propose ideas, work together and get paid for it via NixOS Foundation funding that can come from individual donations, and interested companies via initiative funding
- Initiative funding: A way for companies and individuals to give funds to the NixOS foundation with a guarantee that they will be used for a specific purpose, which can also be for specific grants

The grant program can be funded from both general donations, as well as initiative funding. The initiative funding can be used for grants, but also other aligned purposes.

![](./flow.png)

## Part 1: Grant program

Create a page on the website to explain this grant program.

### Proposal evaluation waves

A grant wave is 3 months long, comprised of two main phases, and executed by the board or someone delegated:

- Wave start: Decide how much funds are allocated for the next period. This generally includes part of the profits and ear-marked funds.
  - Publish the SC's current agenda that will be prioritised for the next period
- Proposal phase (1.5 months): Anybody can write a grant proposal by submitting a PR to a repository.
  - Proposals should primarily include the team to do the work, the milestones and the amount requested.
- Wave midpoint: Close proposal submissions
  - Initiate the feedback phase by reaching out to the various stakeholders
  - Reach out to companies with the list of proposals for potential funding
- Feedback phase (1.5 months): Collect feedback from various stakeholders
  - SC can publish a recommendation
  - People with relevant authority can give feedback
  - Option for companies to submit extra funding via initiative funding for specific proposals
- Wave end: Decide which proposals are accepted and merge them to signal that the work is approved to start
  - Standard rejection message that hints towards alternative funding partners

### Acceptance criteria

- Aligns with the NixOS Foundation's purpose: Develop, propagate, and promote the adoption of a purely functional software deployment model and to support open-source projects that implement that model, as well as other activities that relate to, pertain to, and/or can be conducive to the foregoing in the broadest sense.
- We prioritise grant proposals that align with the SC's agenda
- Well-defined scope and milestones
- Confidence in the team being able to deliver
  - We prioritise well-known community members to receive grants

### Milestone evaluation

After grant proposals are kicked off, the applicants are expected to do the work and follow up after completing each milestone with detailed reports submitted as a PRs to the evaluation repo. An appointed evaluator will evaluate the work, request changes if necessary, and give approval if satisfactory, in which case the applicants will be paid.

![](./waves.png)

## Part 2: Initiative funding

- Create a page on the website that showcases team-submitted initiatives that can be funded.
- There is a contact form (see below) where companies (or individuals) can reach out to the foundation board to initiate the process of submitting funding for either a specific initiative, or a custom purpose.
- The foundation board will handle communication and provide a contract that if signed guarantees that at least 90% of the funding will be used for the stated purpose and be returned otherwise.
- The minimum required funding is 1000 EUR.
- Only companies that the SC approves of will be considered.

![](./initiatives.png)

### Initiative submission process

- Official teams can submit initiatives by creating a PR against the nixos-homepage repo
- It will be reviewed by the board, with the SC being able to give a recommendation as well
- If approved it will be merged
- If there's a lot of interest by community individuals, we can also start a crowdsourcing campaign for initiatives
