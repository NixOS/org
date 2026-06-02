# Proposal: Grant program and initiative funding

## Motivation

- Currently there is no clear way to finance major improvements via a trusted entity
- Lack of a way to use NixOS Foundation income in a good and transparent way, also to encourage more donations
- Provide an easy way for contributors to get paid and work together

# Detailed Design

There are two inter-related parts to this proposal:

- Grant program: A way for contributors to propose ideas, work together and get paid for it via NixOS Foundation funding that can come from individual donations, and interested companies via initiative funding
- Initiative funding: A way for companies and individuals to give funds to the NixOS foundation with a guarantee that they will be used for a specific purpose, which can also be for specific grants

The grant program can be funded from both general donations, as well as initiative funding. The initiative funding can be used for grants, but also other aligned purposes.

![](./flow.svg)

([source](https://excalidraw.com/#json=5_AEWLNEueZTMOMT16Q6D,rr4-C7SQdrcmVoZ2eoEQhw), make sure to update the source link when changing anything)

## Grant program

Create a page on the website to explain this grant program.

### Proposal evaluation waves

A grant wave is 3 months long, comprised of two main phases, and executed by the board or someone delegated:

- Wave start: Decide how much funds are allocated for the next period. This generally includes part of the income and ear-marked funds.
  - The SC publishes its agenda that will be prioritised for the next period
- Proposal phase (1.5 months): Anybody can write a grant proposal by submitting a PR to a repository.
  - Proposals should primarily include the team to do the work, the milestones, timeline, the amount requested and the recipient of the funds (can be individuals or companies)
  - A team can be a single individual or multiple individuals with one of them acting as project manager
- Wave midpoint: Close proposal submissions
  - Initiate the feedback phase by reaching out to the various stakeholders
  - Reach out to companies with the list of proposals for potential funding
    - Also include team initiatives, same as on the website
- Feedback phase (1.5 months): Collect feedback from various stakeholders
  - Teams or individuals with relevant authority are encouraged to give feedback and/or a recommendation
  - Encourage companies to submit extra funding (via initiative funding) for specific proposals they care about
- Wave end: SC decides which proposals are accepted, which are then merged to signal that the work is approved to start
  - Standard rejection message that hints towards alternative funding partners

### Acceptance criteria

- Aligns with the NixOS Foundation's purpose (copied from [original](https://github.com/NixOS/foundation/blob/master/by-laws/Oprichtingsakte_NixOsFoundation.en.pdf)): Develop, propagate, and promote the adoption of a purely functional software deployment model and to support open-source projects that implement that model, as well as other activities that relate to, pertain to, and/or can be conducive to the foregoing in the broadest sense.
- We prioritise grant proposals that align with the SC's agenda
- Well-defined scope and milestones
- Confidence in the team being able to deliver by showing previous evidence of that

### Milestone evaluation

After grant proposals are kicked off, the applicants are expected to do the work and follow up after completing each milestone with detailed reports submitted as a PRs to the evaluation repo. An appointed evaluator will evaluate the work, request changes if necessary, and give approval if satisfactory, in which case the applicants will be paid.

- The board/SC trusts the evaluators to do the evaluation properly
- Evaluators are required to submit an evaluation report including deliverables, evaluation notes and approval decision
- Evaluators get 5% of the milestone amount

![](./waves.svg)

([source](https://excalidraw.com/#json=rRutoi8nEcpjv1UIj3X87,VCPIeHZP_6ouG0U7tWQxMg), make sure to update the source link when changing anything)

## Initiative funding

- Create a page on the website that showcases team-submitted initiatives that can be funded
  - Keep the number soft limited, don't want too many options
- There is a contact form (see below) where companies (or individuals) can reach out to the foundation board to initiate the process of submitting funding for either a specific initiative, a grant proposal, or a custom purpose.
  - The contents of this page is also sent to interested companies every 3 months for the grants feedback phase
- There is a 10% management overhead that will not be allocated to the initiative funding.
- The foundation board will handle communication and provide a contract that if signed guarantees that the funding (without the 10% management overhead) will be used for the stated purpose, and that if not all of the funding could be used as such, the rest is returned.
- The minimum required funding is 1000 EUR (+10% overhead, excl. VAT)
- Only companies that the SC approves of will be considered.

A rough mockup might look like this, but there should also be an clickable email link as an alternative:

![](./initiatives.svg)

([source](https://excalidraw.com/#json=xPRvVNuVKd2W3-yUpJLcg,a3QQ56AVTOv1E-xQ9-mfbw), make sure to update the source link when changing anything)

### Initiative submission process

- Official teams can submit initiatives by creating a PR against the nixos-homepage repo
- It will be reviewed by the board, with the SC being able to give a recommendation as well
- If approved it will be merged
- If there's a lot of interest by community individuals, we can also start a crowdsourcing campaign for initiatives
