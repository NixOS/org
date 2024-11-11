# Nix Governance Constitution

## Introduction

This document describes the highest level of governance structure for official Nix projects.

## Overview

There are two primary leadership bodies with different scopes:
- The Steering Committee (SC), composed of 7 elected individuals to represent the community, is broadly responsible for technical and community decisions and delegation
- [The NixOS Foundation board](https://nixos.org/community/teams/foundation-board/), composed of the board members of the Stichting NixOS Foundation, a non-profit organisation in Utrecht, the Netherlands, is broadly responsible for legal, financial and partnership decisions and delegation

This constitution roughly comprises these parts:
- The detailed responsibilities of each body
- How SC decisions are made
- How the SC is elected

## Detailed Responsibilities

### Steering Committee

The SC is responsible for guiding projects in alignment with Nix Community Values.
It has the following responsibilities, which it may delegate as appropriate:

- Project Direction:
  - Guide the direction of projects when necessary, ensuring that decisions are made explicit, along with their origins.
  - Ensure project decisions get made in a timely manner as far as possible.
  - If unavoidable, ensure that decisions are explicitly marked as stalled and recommend follow-up times or conditions.
- Decision-Making:
  - Ensure the existence and functionality of processes for regular decision-making within the community.
  - Maintain effective escalation points for issues that require further attention.
    - Decision authority may be delegated to other teams when significant analysis is needed, but the SC remains responsible if the delegated team fails to reach a decision.
  - Evolve the constitution, including governance structures and processes, as needed, subject to supermajority approval.
- Coordination with the NixOS Foundation Board:
  - Collaborate with the NixOS Foundation Board to set policies and priorities for high-visibility actions, events, and resources under the Foundation's care. Both the SC and the board need to approve such policies.
  - Any delegation of responsibilities related to these areas also delegates communication with the Board on the relevant topics.
  - Be involved in the [board composition change process](#board-composition-changes)
- Creation and Management of Teams:
  - Establish and manage teams to delegate authority on specific areas.
    - Specify formal decision procedures for teams.
  - Delegate authority to long-term teams and committees, allowing them to evolve policies as needed.
  - Form short-term teams to analyze arguments and reach a decision on contentious issues.
- Management of Official Resources:
  - Decide which resources are considered official
  - Oversee and manage official resources, including public communication channels and technical infrastructure.
  - Create and enforce appropriate rules for Nix project spaces, including issuing Nix-wide bans, which will affect voter eligibility.
  - Ensure the existence and proper execution of processes for granting access to projects and resources.
  - As of the establishment of the SC, [official resources](https://github.com/NixOS/org/blob/main/doc/resources.md) and access details are listed in the repository.

The SC has the authority to make decisions within the scope of its responsibilities; the restrictions on this authority are all explicitly listed in this constitution. The SC may make a decision to revoke delegation of a specific part of authority, if necessary — even if the authority in question has been with a certain team since before the current constitution.

### NixOS Foundation Board

The board is a partner with the SC in leadership and is primarily focused on corporate and general external relationships, fiscals/financials, legals and partnerships.

In particular, its responsibilities are to:
- Own and handle the administrative and legal
  - Serve as an interface between the community and the corporate/governmental/financial world
  - Manage trademarks
- Handle external relationships, partnerships, and donations
  - Work with the SC to establish foundation policies that balance the interests of volunteers, commercial actors, and public institutions, while staying within legal and administrative feasibility constraints. Both the SC and the board need to approve such policies. This includes sponsorship eligibility and trademark policies.
  - Build and maintain beneficial and collaborative relationships
  - Maintain and support grants/grant providers
- Provide a framework for the community to self-organise:
  - Handle payments for tooling, meetups, and infrastructure
  - Manage credentials and permissions
  - Review and approve constitution changes affecting the board's authority, responsibilities, or appointment procedures.
- Own and be responsible for financials
  - Provide fiscal planning and funding for community events and efforts
  - Decide how much funding is available for each broadly scoped type of events and efforts, while the SC decides the priorities within these scopes and limits of the allocated funds

#### Board Composition Changes

Prior to appointing a new board member, the board shall inform the SC and give the SC the opportunity to object to the appointment by simple majority. In case of objection, the SC shall privately provide the written reasons to the board. The objection of the SC is binding to the board unless recalled by the SC.

Board members have terms of no longer than 2 years. At the end of a term of a board member:
- If the member wishes to remain on the board, the board may approve a term renewal.
- If the board approves the renewal, the SC is given the ability to object with a supermajority.
- The board can override such an objection only by a unanimous decision.

The SC can always request a board decision with published votes over whether to remove a specific member.

### Steering Committee Decision process

#### Extraordinary Decisions

The following decisions require at least a 2/3 supermajority agreement of the full SC size (vacant seats count as abstaining).

- Changing the constitution
  - Changes to the constitution that change the board's authority, responsibilities, or appointment procedures need to be approved by the board.
- Forced removal of SC members
- Objecting to NixOS Foundation board member term renewals

Furthermore, the SC decides on the Election Committee (EC) with a 2/3 supermajority. If the SC cannot come to supermajority agreement on the list of EC members, they will elect an EC using the same tallying system as the previous SC election, where only SC members can vote.

Disqualifications of candidates in an election requires supermajority among the currently serving SC members.

Substantial amendments to the Nix Community Values require 90% agreement in a poll among eligible voters. Deciding that an amendment is not substantial can be done by unanimity among a full SC.

#### Ordinary decisions

Everything within the authority of SC that doesn't require an extraordinary decision can be decided with a simple majority (more than 50%) of a full SC (vacant seats count as abstaining).

An exception to that is when there is when the [conflict of interest balance](#conflict-of-interest-coi-balance) condition is suspected to be violated. In that case, all non-involved currently serving SC members will have a simple majority decision over whether there is a violation.

### Composition and Appointment

The SC consists of 7 elected members.
Regular elections are once a year, with half (alternating rounding every year) of the seats up for election,
such that each member holds a seat for one term of at most 2 years before it is up for election again.
Members can at most serve two consecutive terms. There is no lifetime maximum.

The previous SC appoints an Election Committee (EC) of at least 3 people to administer the election. If the SC cannot come to supermajority agreement on the list of EC members, they will elect an EC using the same tallying system as the previous SC election, where only SC members can vote.
SC members can be EC members only if they're leaving after the election.

#### Vote eligibility

Before the election (or poll) process is initiated, the EC selects a cutoff date.
Only contributions to official projects in the four years preceding the cutoff date are considered.

There are two automatic ways to become eligible for voting, either:
- Have authored enough merged PRs to the [NixOS GitHub organisation](https://github.com/nixos) to total at least 25 commits.
- Have exercised commit access by merging any PR to the NixOS GitHub organisation.

The list of automatically eligible voters is made public.

People not automatically eligible then have some time to send a request to the EC, which can then make an exception and approve them as voters. This is for people whose official contributions are not all visible in the NixOS GitHub organisation, but have contributed roughly the equivalent of 25 commits, also counting contributions such as:
- Participation in official teams
- Infrastructure maintenance
- Organisation of official events
- Maintenance of official third-party accounts (e.g. social media)
- etc.

After the decisions on exception requests are made, the list of approved requests is also made public.

Not eligible in any case are bot accounts and people that are banned at the time when the list of automatically eligible voters is published.

#### Candidates

The requirements to become a candidate for the SC elections are:
- To be eligible for voting
- To agree to be a candidate
- To provide a public position statement on why one should be elected
- To be publicly endorsed by at least 3 other people eligible to vote
  - How endorsements are collected will be specified by the EC
  - Among the candidate and their endorsers, there must be at least 4 individuals where no two have the same conflict of interest (e.g. employees of the same company or otherwise the same payer for Nix work), as decided by the EC.
  - One can endorse a person who has not yet agreed to be a candidate, which also serves as nominating them (subject to acceptance of nomination)
  - Eligible voters may endorse multiple nominees
- To have been not a member of the SC for at least two complete years of the two immediately preceding terms
- To not be a member of the EC
- To not have any conflicts of interest that would [prevent one from being appointed](#conflict-of-interest-coi-balance) to the SC, and publicly disclose all potential conflicts of interest
  - This includes conflicts of interest to arise during the term based on already finalised agreements

After the nomination deadline, the SC can prevent a nominee from becoming a candidate by unanimity (among the currently serving non-running members of the SC) in case their public image or conduct would not be compatible with the position in the SC.

#### Procedure

The election is done using a [proportional representation mode from Condorcet Internet Voting Service (CIVS)](http://web.archive.org/web/20240412235900/https://civs1.civs.us/proportional.html). The recommendation is to use [CIVS](https://civs1.civs.us/) itself, but if CIVS is unavailable, a reasonable alternative proportional representation election implementation is also permitted.

In any election where seats with different end-of-term dates are available, winning candidates with higher final election rankings are appointed to the longer terms.

#### Special considerations for the first SC election

- To stagger the terms, the first election will appoint half the members rounded up with 2-year terms and the remaining members with 1-year terms.
- The EC for the first election will be the members of the [Nix Constitutional Assembly (NCA)](https://github.com/nixos/nix-constitutional-assembly?tab=readme-ov-file#members), which are thus ineligible to be elected for the first SC
- All nominees become candidates for the first election, because there's no existing SC that would decide over disqualifying candidates.
- And to help the first elected SC establish itself, members of the NCA are integrated into the SC as non-voting members for 6 months after the appointment. The NCA ceases to exist at the moment of SC appointment.

#### Conflict of Interest (CoI) Balance

To encourage diversity, there is a soft limit of one individual with the same CoI (e.g. employees of the same company or otherwise the same payer for Nix work) immediately after election results coming into force. If the results of an election would result in multiple individuals with the same CoI being elected, the lowest vote getters with any particular CoI will be removed until the condition is satisfied. Note that everybody's vote still has the same impact, because each voter is asked to evaluate all candidates. In case of doubts on what constitutes the same CoI (subsidiaries, grants, part-time work, etc.), the election committee decides. The candidates must disclose already-agreed-upon changes of affiliation that are to happen during the term, and at the time of election these are also considered as relevant CoIs. After all candidates are known and before the voting period starts, the EC must publicly commit to the list of candidate pairs considered to have the same CoI.

Furthermore, there is a hard maximum of two members with the same CoI at any time. If this condition is suspected to be violated because of job changes, acquisitions, or other events, all non-involved currently serving SC members will have a simple majority decision over whether there is a violation. In case it is deemed a violation, sufficient members of the committee must resign until the max representation limit is achieved. If it is impossible to find sufficient members to resign, all members with that same CoI will be removed and a new special election shall be held.

#### Special Elections

In the event of a resignation or other loss of a steering committee member (including a [removal for conduct](#removal-for-conduct)), a special election for that position may be held if the SC deems it necessary, or the SC does not have half of the normal size. Otherwise, the missing positions are assumed to be abstaining from all the SC votes. A committee member elected in a special election will serve out the remainder of the term of the person they are replacing, regardless of the length of that remainder.

#### Full Reelections

A simple majority within the SC may call a reelection of the entire SC based on perceived loss of confidence. In this case, it also has to be decided whether this election is considered a special election for the remainders of all the corresponding terms, or an initial election for full 2-year terms for half of the seats rounded up and 1-year half-terms for the remaining seats.

### Removal for conduct

A supermajority within the SC may remove SC members for violating the community expectations for members in positions of high authority. The reasons include but are not limited to unfitting conduct and unavailability, and a summary of the reason should be respectfully described. The SC is explicitly expected to be held to higher standards than applied to project communication in general.

The removal can be justification for a special election where the removed person is not eligible to be a candidate.
