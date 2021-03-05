## Push Notifications

Thanx sends users push notifications in a variety of situations, such as when
they make a purchase or earn a reward. We can send push notifications to your app
as well. When you are ready to register your app with Thanx for push notifications,
you should send your CSM at Thanx your APNS certificate, FCM server key, and sender ID
via a secure mechanism, such as Dropbox Transfer.

The rest of this page provides information regarding the types of push notifications
that Thanx currently sends.

A push notification payload will contain an event key and a merchant key. Each notification type may have other information provided. The sample notification text provided is not set in stone and will
sometimes vary depending on the kinds of campaigns a merchant is running.

```
Notification object example for iOS:
{
  aps: {
    "alert": "You just made your first purchase at Pizza Merchant! You're now 56% towards your next reward here!",
    "badge": 1,
    "sound": "default",
    "content-available": 1
  }
  "merchant_id": "oiu234oiurw",
  "event":       "purchase_discount_applied",
  "purchase_id": "wotu310589"
}

Notification object example for Android:
{
  "content_available": true,
  "data": {
    "message": "You just made your first purchase at Pizza Merchant! You're now 56% towards your next reward here!",
    "merchant_id": "oiu234oiurw",
    "event":       "purchase_discount_applied",
    "purchase_id": "wotu310589"
  },
  "notification": {
    "title": "You just made your first purchase at Pizza Merchant! You're now 56% towards your next reward here!"
  }
}
```

### Purchase notifications
When a user makes a purchase, one of the following notifications is sent:

#### Discount Applied

A user activated a statement credit reward, and this reward was applied to
the purchase.

<i>Thanx! You just saved $10 at Pizza Merchant!
It'll show up on your credit card statement in about two days.</i>

`event: :purchase_discount_applied`

Additional payload keys:

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Reward Unlocked
A user unlocked a reward by making this purchase. This reward would have been
received as a result of a referral.

<i>The reward ($5 off) you got from Alice for signing up is now available for you to use.</i>

`event: :referral_reward_unlocked`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

#### Granted
A user's receipt was accepted and they were granted progress toward their loyalty reward.

<i>Heads up: Pizza Merchant granted you credit for $15.63 toward your next reward.</i>

`event: :progress_granted`

Additional payload keys:

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Under Minimum
A user had activated a statement credit reward, but didn't spend enough money on their subsequent purchase.

<i>We couldn't apply your statement credit reward at Pizza Merchant - it was less than the $25 minimum! We'll try to apply it to your next purchase.</i>

`event: :reward_under_minimum`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Reward Earned
This purchase resulted in a user earning their loyalty reward.

<i>Cha-ching! You just earned $10 off your purchase at Pizza Merchant! Open up Pizza Merchant and activate it when you're ready to use it.</i>

`event: :purchase_reward_earned`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Initial Purchase
The user made their first purchase.

<i>You just made your first purchase at Pizza Merchant! You're now 56% towards your next reward here!</i>

`event: :first_purchase`

Additional payload keys:

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Reward Unused
A user made an purchase and had a reward they could have used.

<i>Heads up: you had a reward waiting for you at Pizza Merchant that you could have used! Activate it before your next visit!</i>

`event: :purchase_reward_unused`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Invalid Purchase Amount
A user made a purchase that was too small to count for loyalty progress.

<i>Your purchase came in from Pizza Merchant but it was under the minimum purchase. Make a purchase over $5 to earn loyalty progress.</i>

`event: :purchase_under_minimum`

Additional payload keys:

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Settlement Required
A merchant's settings require a settlement to come in before the user can be granted loyalty progress.

<i>Your Pizza Merchant purchase came through but reward progress won't apply until your credit card purchase settles. Stay tuned!</i>

`event: :purchase_settlement_required`

Additional payload keys:

`purchase_id: 'to35yu2o4i6y34io2j24'`

#### Tier Purchase Progress
A user made a purchase that counted toward tier progress. If a merchant has both a loyalty campaign
and tiers, the loyalty progress message will be sent instead.

<i>You're on your way! Spend $670.56 before the end of the year to earn Silver.</i>

`event: :purchase_tier_progress`

#### Loyalty Progress
A user made a purchase that counted toward loyalty progress.

<i>You're almost there! You're now 45% toward your next reward at Pizza Merchant.</i>

`event: :purchase_loyalty_progress`

Additional payload keys:

`purchase_id: 'to35yu2o4i6y34io2j24'`

### Tiers notifications

#### On track to reach the silver tier
<i>You're on track to reach Silver for Pizza Merchant - spend $35.24 more by Dec 31st!</i>

`event: :tier_silver_on_track`

#### Reached the silver tier
<i>Silver rewards at Pizza Merchant are yours! Congrats on achieving Silver status!</i>

`event: :tier_silver_reached`

#### On track to reach the gold tier
<i>You're on track to reach Gold for Pizza Merchant - spend $23.45 more by Dec 31st!</i>

`event: :tier_gold_on_track`

#### Reached the gold tier
<i>Congrats on achieving Gold status at Pizza Merchant! Open up the app to see your new perks!</i>

`event: :tier_gold_reached`

#### Tier status expiring soon
<i>Your Gold status runs out in four weeks. Spend $450.24 to keep it for another year!</i>

`event: :tier_status_expiring`

### Vip notifications
As users earn toward VIP status, they receive the following messages.

#### VIP active
<i>You're a Pizza Merchant VIP! Open up the app to check out your VIP Reward!</i>

`event: :vip_active`

#### VIP at risk
<i>You're almost out of time! You still need to spend $35 before Dec 1st to remain a Pizza Merchant VIP.</i>

`event: :vip_at_risk`

#### VIP eligible
<i>You're eligible for VIP this month at Pizza Merchant! Spend $50 before the end of the month to earn VIP status through Jan 1st!</i>

`event: :vip_eligible`

#### VIP on track
<i>Your spending makes you eligible to earn VIP at Pizza Merchant! Spend $50 *next* month to earn a free pizza all month!</i>

`event: :vip_on_track`

#### VIP nearly there
<i>You're almost a Pizza Merchant VIP! Spend $45 before Dec 1st to earn a free cactus all month!</i>

`event: :vip_visible`

### Reward notifications

#### A reward is issued
This text is customizable by the merchant when they run a campaign. If customized text isn't provided, the following text is used.

<i>You have a new reward from Pizza Merchant!</i>

`event: :reward_issued`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

#### A reward is expiring
<i>Heads up! Your $5 off at Pizza Merchant expires on 12/15! Don’t miss out!</i>

`event: :reward_expiring`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

#### A reward was granted
The merchant issued a user a reward as a result of NPS feedback.

<i>Pizza Merchant granted you a new reward: a free pizza!</i>

`event: :reward_granted`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

#### Reminder about an unused reward
<i>Don't forget! You have a reward ($15 off) waiting for you at Pizza Merchant!</i>

`event: :reward_reminder`

Additional payload keys:

`reward_id: 'ri3of2o5i46o32iu4u4k'`

### Other notifications

#### Invite progress earned
A user's referral made their first purchase.

<i>Your friend Bob just made their first purchase! Here's $5 off as our way of saying thanx.</i>

`event: :invitation_progress_earned`

#### NPS prompt
<i>How was your visit to Pizza Merchant?</i>

`event: :purchase_nps_prompt`

Additional payload keys:

`purchase_id: 'to35yu2o4i6y34io2j24'`

`feedback_id: 'ghjh2k34j5l23kj44566'`
