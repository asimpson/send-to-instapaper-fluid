A simple Userscript for Fluid that adds a Read Later button for Instapaper to any tweets containing a URL.

Initial version checks for new tweets every 5 seconds.

# Steps to Install

1. Add ```*www.instapaper.com*``` to your Fluid Whitelist.
![Whitelist](http://cl.ly/NegE)
You will have to log in the first time you try to save a link.

2. Edit the body style declaration in the [Twitter for minimalist Userstyle](http://craigmod.com/satellite/twitter_for_minimalists/)

```body.logged-in {
    background-image: none !important;
    background-color: #333 !important;
}```

This makes sure the Read Later buttons (which are iframes) will not have the dark background.