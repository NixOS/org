# Freescout

[Freescout](https://freescout.net/) is used on top of [email addresses](./mail.md) for shared inboxes, in particular our own instance: <https://freescout.nixos.org/>.

## Requests

You can request a shared inbox for your team, or changes to an existing inbox by opening an issue in this repository and pinging @infinisil.

For a new shared inbox, make sure to include:
- Team name (will be used in email footer):
- Email address: <email-handle>@nixos.org

<details><summary>@infinisil perform these steps to set up a new shared inbox:</summary>

- Generate a password for the email login (used to set up Freescout)
- Create a PR to `mailing-lists.nix` for the new email address:
  ```bash
  nix run .#encrypt-email login <email-handle>
  ```

  ```nix
    "<email-handle>@nixos.org" = {
      loginAccount = {
        encryptedHashedPassword = ../../secrets/<email-handle>-email-login.umbriel;
        storeEmail = true;
      };
    };
  ```
- Create a new freescout mailbox accordingly:
  - Set the mailbox name to the team name
  - Enable access for people that already have a Freescout account
  - In Edit Mailbox, set the email signature to
    ```
    --
    {%user.fullName%}
    {%mailbox.name%}
    ```
  - In Connection Settings > Fetching Emails:
    - Server: `umbriel.nixos.org`
    - Port: 993
    - Username: <email-handle>@nixos.org
    - Password: *************
    - Encryption: TLS (+StartTLS)
    - IMAP Folders: INBOX, Junk
      - Note: Legitimate mail has ended in the junk folder before
    - IMAP Folder To Save Outgoing Replies: Sent
  - In Permissions, check "Hide from Assign list" for "Silvan (admin) Mosberger"
- Invite everybody that doesn't have an account yet to freescout with access to the new mailbox
  - Look up emails in the maintainer list

</details>

## Freescout quick start

After you requested an account, you will receive a personal email titled "Welcome to NixOS Shared Mailbox Service!".
Click on "Create a Password" to get to the profile creation page.

You can't change your personal email by yourself after creating the account.
You can change your first/last name in the profile settings after creating the account.

### Essentials

Freescout extends email with the concept of _conversations_: Email threads annotated with status and assignee.
You can create and interact with conversations from the [web interface](https://freescout.nixos.org/).
Events can trigger _notifications_, which are sent to your personal email address.
The `#<number>` link in notification emails redirects you to the corresponding conversation in the web interface.

By default no notifications are sent, so make sure to designate at least one person to have notifications for new conversations enabled and act upon them.
To change notification settings: Your name on the top right > "Your Profile" > "Notifications" tab on the left.

### Interface

In a mailbox, the most important tabs on the left are:
- Unassigned: Unassigned conversations, generally new mail is here
- Mine: Conversations that are assigned to you

In a conversation, the most important actions in the top bar are:
- Left arrow: Compose a reply
  - Sending by default assigns to you and marks as pending
  - For 10 seconds you can undo the send with a pop-up
  - Unfinished replies are saved as drafts, which can be seen and resumed by other team members (but not collaboratively!)
- Note icon: Add an internal note to the conversation that's only visible to team members
- Person icon: Assign somebody (by default unassigned)
  - Assigning sends an email to the assignee
- Flag icon: Mark as:
  - Active (default): Waiting on you/assignee
  - Pending: Waiting on contact. Getting a reply marks it as active and sends a notification to the assignee
  - Closed: Not actionable. Getting a reply marks it as active and sends a notification to the assignee
  - Spam

The mail icon allows you to compose and send a new email to start a conversation.

### Extra

Freescout has a [lot of modules](https://freescout.net/modules/) to extend its functionality. The following modules are currently installed:
- [Extended Editor](https://freescout.net/module/extended-editor/)
- [Teams](https://freescout.net/module/teams/)

Feel free to request additional modules by adding it to the above list and opening a PR.
