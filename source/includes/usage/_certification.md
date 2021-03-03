## Certification

When you are ready for your integration to be certified, let your customer success representative know.
Certification will take a week. If certification fails, the 1 week timeline will begin again.

Upon certification of your integration in the Sandbox environment, you will be provided
with a set of production credentials that will allow you access to our Production environment.

The goal of certification is to ensure that your integration uses the Thanx API correctly and is set up
to be successful long-term.

### Certification Checklist:

Notes: In the below list the term "experience" is used to refer to both app and web.

#### Legal Requirements
- Experience should show terms and conditions during signup
- Experience should implement special Visa flow
    - The text blobs below the card information fields are required
    - Two buttons for saving the card are required: one should enroll the card with Thanx and the other should not
<img src="images/cards/linkage.png" width="300"/>

#### General
- API requests should be authenticated when a user is logged in
- API requests should contain all required headers
- API error messages should be displayed to the user
- Experience should not make API requests more often than necessary

#### SSO requirements
- Users should be required to provide a name to complete registration
- A new user should be prompted to sign up
- An existing user should be sent a login email (experience should display a message about an email being sent)
- A user should be able to update their birthday and name

#### Cards requirements
- Experience should support displaying a list of cards
- Experience should allow a user to link a card (Visa, Mastercard, American Express)
- Experience should allow a user to delete a card

#### Rewards requirements
- Experience should display all available rewards
- Experience should allow the user to activate their reward
- Reward activation request should be made only on user action
- Manual redemption rewards should display a countdown timer
- Rewards should be correctly marked as used

#### Receipts requirements
- Experience should request all required information from the user
- Experience should allow the user to choose a card to associate the receipt with, if they have any

#### Feedback requirements
- Experience should submit numerical rating and optional text feedback
- Experience should present the option to leave text feedback for each purchase
- Rating should be on a 10 point scale

#### Communication settings requirements
- Experience should provide ability for user to edit communication settings

#### Push Registrations requirements
- App should make a call to register a user for push notifications after user confirmation

#### Tags requirements
- Experience should correctly write + delete tags (if applicable)

### Production Launch Requirements
- APNS push notification certificate should be provided to Thanx
- FCM server key and server ID should be provided to Thanx
