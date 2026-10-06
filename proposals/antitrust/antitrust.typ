We recognize that a fundamental change occured in the incentive systems and selection pressures
in the Nix(pkgs) community with the emergence of new corporate stakeholders,
which operate on multi-billion and multi-trillion dollar scales:
NVIDIA, (...), Anthropic, Jane Street, et c.

We recognize this development as a form of success,
and interpret it as a sign that we did something right.

We recognize this as creating new opportunities and new risks.

We hypothesize that the particular evolutionary dynamics in Nixpkgs played a crucial role in our successes: namely what sort of work, and what kind of contributors we attracted, and what kind of contributors we repelled (such as by helping them burn out sooner than others).

We recognize the need to identify those aspects
of our incentives and selection functions, past and possibly gone,
which have helped us grow to reach this point.

We seek to ensure that the future dynamics of Nix(pkgs) development
helps us interact with these new stakeholders in healthy and productive ways,
and access their wealth to tap into the project's true potential,
instead of creating a "short circuit" that could starve the processes
that had forced us to grow, occasionally create value and make the right choices.

Wishing so, we impose the following constraints on the NixOS Foundation Stichting ("Foundation"):

+ Foundation MUST NOT accept sponsorships from for-profit entities,
  unless in the form of voluntary "taxes" paid by individual eligible SC voters ("voters") or by independent voter majority-owned entities ("voter-owned entities"). This includes donations, purpose-bound funding, offers of hardware or services.

  Commentary: we mean "for-profit" to include e.g. "Public Benefit Corporations". As such, we mean any organization that is not NLNet or the EC. We use "independent" to say "not the Foundation".

+ Foundation MUST NOT hold assets that can be held by voter-owned entities.
  In particular, Foundation MUST NOT own physical hardware, or be counterpart to renting agreements.
  Foundation MAY hold trademarks, copyright, and domain names that are not associated with community teams.

  Commentary: this means that the Foundation is a point of contact, a task scheduler and distributor, but not a fiscal host, and not a competitor to maintainers.

  + Upon this document entering into force, Foundation will prepare a three-year ramp-down schedule for
    distributing the resources it currently holds.

    Commentary: this includes fastly, AWS, oxide relationships.

+ Foundation MAY receive third party inquiries concerning work or any changes they'd like to see in the ecosystem.
  Foundation MUST, without delay, notify Nixpkgs committers about all such inquiries through a private channel (e.g. Zulip).
  Foundation MAY reply to such inquiries after deliberation with Nixpkgs committers.
  Foundation's response MUST be either a rejection or a referral to one or several voter-owned entities.
  Foundation MUST, without delay, notify Nixpkgs committers about any such responses.

  Commentary: "committers" rather than "voters" to spread the signal as broadly in the community, but slow down the leaking of our reactions back to the requesting third parties.
  Commentary: notification requirement means that confidentiality is a service; a funder seeking confidentiality needs to buy it from a proxy.
  Commentary: this has the adverse effect of promoting external proxies, which are not owned by voters; maintainers will need to make educated guesses about the proxies' true customers.
  Commentary: we could also promise to only disclose the requesting parties' identities to the Foundation and the maintainers in the referral.

  + When referring a third party to a maintainer or a voter-owned entity, Foundation MAY advise the involved parties
    to avoid hourly rates in preference to lump-sum contracts. Foundation MAY advise the implementing party to pay a voluntary tax back to the Foundation.

+ Foundation MUST NOT have write-access to nixos.org or exert any influence over the Marketing Team.
