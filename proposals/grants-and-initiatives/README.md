# Proposal: Grant program and initiative funding

Alternative title: Filling funding flow gaps

## Motivation

- Use NixOS Foundation donations for beneficial purposes in a more transparent way
- Enable companies to finance Nix ecosystem improvements in a more streamlined way
- Enable contributors to get paid for working on Nix ecosystem improvements in a more streamlined way

# Detailed Design

There are two inter-related parts to this proposal:

- Grant program: A way for contributors to propose ideas and get paid by the NixOS Foundation for delivering milestones. The funds can come from both general-purpose donations and initiative funding.
- Initiative funding: A way for companies and individuals to provide purpose-bound funding, such as specific grants or team initiatives.

![](./flow.svg)

([source](https://excalidraw.com/#json=5_AEWLNEueZTMOMT16Q6D,rr4-C7SQdrcmVoZ2eoEQhw), make sure to update the source link when changing anything)

## Grant program

Create a page on the website to explain this.

### Proposal evaluation waves

A grant wave is 3 months long, comprised of two phases, and executed by the board or someone delegated:

- Wave start: Widely announce the new wave, including:
  - Decided by the board: how much funds (and how they're ear-marked, if at all) are available to be allocated. This generally includes part of the income and ear-marked funds.
  - Decided by the SC: The agenda that will be prioritised for this wave
- Proposal phase (1.5 months): Anybody can write a grant proposal by submitting a PR to a repository.
  - Proposals should primarily include the team to do the work, the milestones, timeline, the amount needed and the recipient of the funds (can be individuals or companies)
    - Proposals may also be for non-official projects
  - A team can be a single individual or multiple individuals with one of them acting as project manager
- Wave midpoint: Close proposal submissions, announce the feedback phase and reach out to:
  - Various stakeholders for feedback, including teams or individuals
  - Companies for the opportunity to submit extra funding for specific proposals (via initiative funding)
    - Also mention team initiatives, same as on the website
- Feedback phase (1.5 months): Collection of feedback and funds
  - Feedback from stakeholders can be discussed and acted upon
  - Sign initiative funding contracts with funding companies wanting to submit funds for specific proposals
- Wave end: SC decides which proposals get funded, while proritising the agenda, which are then merged to signal that the proposal is accepted for funding and the work can start
  - Standard rejection message that hints towards alternative funding partners

### Acceptance criteria

Beyond standard legal requirements, the grant proposals must:
- Have well-defined scope and milestones
- Have a team that the SC is confident in being able to deliver by showing previous evidence of that

### Milestone evaluation

After grant proposals are kicked off, the applicants are expected to do the work and follow up after completing each milestone with detailed reports submitted as a PRs to the evaluation repo. An appointed evaluator will evaluate the work, request changes if necessary, and give approval if satisfactory, in which case the applicants will be paid.

- The board/SC trusts the evaluators to do the evaluation properly
- Evaluators are required to submit an evaluation report including deliverables, evaluation notes and approval decision
- Evaluators get 5% of the milestone amount

![](./waves.svg)

([source](https://excalidraw.com/#json=rRutoi8nEcpjv1UIj3X87,VCPIeHZP_6ouG0U7tWQxMg), make sure to update the source link when changing anything)

## Initiative funding

- Establish a process for going into contracts with companies to supply funding for specific purposes, with a guarantee that the funding (without an additional 10% management overhead) will be used for the stated purpose, and that if not all of the funding could be used as such, the rest is repurposed according to the funder companies wishes.
  - There is a 10% management overhead that will not be allocated to the initiative funding.
  - The minimum required funding is 1000 EUR (+10% overhead, excl. VAT).
  - Only companies that the SC approves of will be considered.
- Create a page on the website that showcases a list of efforts that are looking for funding
  - This includes team-submitted initiatives and grant proposals from the current feedback phase
    - Official teams can submit initiatives by creating a PR against the nixos-homepage repo, which is reviewed by the board/SC before merged
  - There is a contact form for companies to reach out to initiate the process of submitting funding for either a listed effort, or a custom one
  - A rough mockup might look like this, but there should also be a clickable email link as an alternative:
  - The contents of this page is also sent to interested companies every 3 months for the grants feedback phase
- If there's a lot of interest by community individuals, we can also start a crowd-funding campaign for initiatives
  - Crowd-funding campaigns are seen as a donation without a legal guarantee of the funding being used for the purpose or returned

![](./initiatives.svg)

([source](https://excalidraw.com/#json=xPRvVNuVKd2W3-yUpJLcg,a3QQ56AVTOv1E-xQ9-mfbw), make sure to update the source link when changing anything)
