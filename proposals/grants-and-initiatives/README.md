# Proposal: Grant program and purpose-bound funding

Alternative title: Filling funding flow gaps

## Motivation

- Enable companies to finance Nix ecosystem improvements in a more streamlined and transparent way
- Enable contributors to get paid for working on Nix ecosystem improvements in a more streamlined way
- Provide a way to connect funding partners to contributing individuals, e.g. for when:
  - Individuals don't want to be employed/contracted directly by a company, and don't want to be limited by receiving funding from only one company
  - Companies don't want to employ/contract an individual directly, and want to provide funding in a more flexible way to multiple individuals
  - Companies want a trusted third-party to hold the funds until work is complete
- Strengthen the ecosystem by providing funding resources to contributors using general NixOS Foundation donation profits not tied to any companies

# Detailed Design

There are two inter-related parts to this proposal:

- Grant program: A way for contributors to propose ideas and get paid by the NixOS Foundation for delivering milestones. The funds can come from both general-purpose donations and purpose-bound funding.
- Purpose-bound funding: A way for companies to provide funding for specific grants proposals or team initiatives.

These programs should incorporate messaging to encourage contributing individuals to seek employment contracts or contracting agreements with funding partners.

![](./flow.svg)

([source](https://excalidraw.com/#json=ZrF5CEDeZp5squJcqxXu_,LzsWVJZ_ZQXvCuoIPr9iwA), make sure to update the source link when changing anything)

## Grant program

Create a page on the website to explain this.

### Proposal evaluation waves

A grant wave is 3 months long, comprised of two phases, and executed by the board or someone delegated:

- Wave start: Widely announce the new wave, including:
  - Decided by the board: how much funds (and how they're ear-marked, if at all) are available to be allocated. This generally includes part of the income and ear-marked funds.
    - In addition to the funding directly available to the grant proposals, internally an extra 5% is budgeted for grant evaluators
  - Decided by the SC: The agenda that will be prioritised for this wave
- Proposal phase (1.5 months): Anybody can write a grant proposal by submitting a PR to a repository.
  - Proposals should primarily include the team (1+ persons, 1 contact person) to do the work, the milestones, timeline, the amount needed and the recipient of the funds (must be a company, can be self-proprietorship)
    - Proposals may also be for non-official projects
    - Timelines can be arbitrarily long and have arbitrarily many milestones in them
  - Teams and funding partners are encouraged to directly synchronise with each other about the scope of the work and grant amount. Ideally the team submits something to the grant program that the company then submits funding for using the purpose-bound funding mechanism
- Wave midpoint: Close proposal submissions, announce the feedback phase and reach out to:
  - Various stakeholders for feedback, including authoritative community teams or individuals
  - Companies for the opportunity to submit extra funding for specific proposals (via purpose-bound funding)
    - Also mention team initiatives, same as on the website
- Feedback phase (1.5 months): Collection of feedback and funds
  - Feedback from stakeholders can be discussed and acted upon
  - Sign purpose-bound funding contracts with funding companies wanting to submit funds for specific proposals
  - Any proposal PRs submitted during this time will only be eligible for the next wave
- Wave end: SC decides which proposals get funded, while prioritising the agenda and satisfying the [SC's evaluation criteria and process](#sc-evaluation-criteria-and-process), which are then merged to signal that the proposal is accepted for funding and the work can start
  - Proposals can get rejected due to either:
    - No SC majority to back the proposal -> Proposal PR gets closed
    - SC majority to back the proposal, but not enough funding this round -> Proposal PR is kept open, in case there's enough funding for a later wave
      - Be clear that in such a case, there's still no guarantee to receive funding later
  - The board ensures standard legal requirements

### Milestone evaluation

After grant proposals are kicked off, the applicants are expected to do the work and follow up after completing each milestone with detailed reports submitted as a PRs to the evaluation repo. An appointed evaluator will evaluate the work, request changes if necessary, and give approval if satisfactory, in which case the applicants will be paid.

- The evaluator is appointed from a list of trusted community individuals that have agreed to being evaluators
  - Changes to this list are decided by the SC
- The board picks an evaluator from the list
- Evaluators are required to submit an evaluation report including deliverables, evaluation notes and approval decision
- Evaluators get 5% of each milestone amount for its evaluation, independent of whether the work is passing or not
  - The 5% is budgeted internally by the foundation

![](./waves.svg)

([source](https://excalidraw.com/#json=rRutoi8nEcpjv1UIj3X87,VCPIeHZP_6ouG0U7tWQxMg), make sure to update the source link when changing anything)

## Purpose-bound funding

- Establish a process for going into contracts with companies to supply funding for specific purposes, with a guarantee that the funding (without an additional overhead) will be used for the stated purpose, and that if not all of the funding could be used as such, the rest is repurposed according to the funder companies wishes.
  - The minimum required funding is 1000 EUR (+overhead, excl. VAT).
  - The [SC's evaluation criteria and process](#sc-evaluation-criteria-and-process) have to be met
  - The board ensures standard legal requirements
  - This can be used for team-submitted initiatives (see below) and grant proposals from the current feedback phase
  - For team-submitted purpose-bound funding, the overhead fees are 10%:
    - 10% management overhead
  - For grant proposal funding, the overhead fees are 35%:
    - 10% management overhead
    - 20% maintenance overhead
    - 5% evaluator overhead
  - Team-submitted initiatives can have recurring payments (quarterly or yearly), which is the recommended option. Grant proposals can only be one-time payments
- Maintain a page on the website that showcases funding opportunities, with both team initiatives and current grant proposals, but with a highlight on team initiatives, and send this to interested companies every 3 months
  - Official teams can submit initiatives by creating a PR against the nixos-homepage repo, which is reviewed by the board/SC before merged. Team initiatives consist of a title, description and link to more info (e.g. a team roadmap, repo, board, ...)
  - There is a contact form for companies to reach out to initiate the process of submitting purpose-bound funding for either a listed opportunity, or a custom purpose, see below for a rough mockup
  - An email to reach out to should be provided as an alternative
- If there's a lot of interest by community individuals, the board can consider creating an OpenCollective crowd-funding campaign for team initiatives
  - As opposed to purpose-bound funding, such crowd-funding campaigns are a donation without a legal guarantee of the funding being used for the purpose

![](./initiatives.svg)

([source](https://excalidraw.com/#json=ibw0fNwkkGuL1QGhAhVIx,cJ-7--yHQVGMEH3Wfcj08A), make sure to update the source link when changing anything)

## SC evaluation criteria and process

To make the SC's funding decisions consistent, reviewable, and defensible, this sets out the criteria the SC evaluates against and how it records each one.

In addition to the existing requirements, the SC weighs whether a funder or proposal could harm the project, and whether the work being funded is genuinely useful.

Criteria under consideration include
- Reputational, financial, or moral harm to the project.
- Applicability and usefulness, whether consensus from relevant stakeholders exists or is needed, and whether the SC would be needed to shepherd the effort.
- Reduce risk of failure, such as by ensuring sufficient milestone granularity, feasability, and considering history of completion or non-completion by the parties involved.
- Opportunity cost of allocating funding here versus elsewhere, and a baseline bar for the work being worth the funding.
- Conflicts of interest among the funder, the proposal, the relevant governing parties, or the affected areas of work.

The SC can also set criteria in advance that rule out cases such as specific categories, projects, funders, recipients, where the likely harm outweighs the benefit. These standing criteria are reviewed from time to time and can be added or lifted the same way. The SC will also revisit a standing criterion when the facts that motivated it have shifted substantially.

SC members record and own their reasoning for every decision, alongside the SC's unified reasoning, and may approve or decline on any of these grounds. The SC refines the criteria as it learns, including when a funded effort ends up harming the ecosystem, so the decisions that follow are sharper.

# Considerations

- Why can only businesses (including self-proprietorships) receive grant funding?
  - Because sending funding to non-business entities is legally more tricky to get right. For now we need to keep the setup as simple as possible. We may be able to lift this restriction in the future.
