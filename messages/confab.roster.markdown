---
layout: message
name: confab.roster
---
Full list of currently online users, sent to a user when they first connect. Deltas are sent as
[confab.user-connected](confab.user-connected.html) and [confab.user-disconnected](confab.user-disconnected.html).

### Example

{% highlight javascript %}
{
    entries: [
        {
            session: "/sessions/1.2.3.4:5678",
            username: "jqrandom"
        },
        {
            session: "/sessions/4.3.2.1:1234",
            username: "dan"
        }
    ]
}
{% endhighlight %}
