## 1

Okay, I'm starting the [December Adventure](https://eli.li/december-adventure) but worried my first project is too much slog and not enough adventure. I need to rebuild my website! So this means I'll need to make it more fun for myself: an actual adventure.

I've tried to get the motivation to rebuild it many times previously. It mostly looked the same homepage for the past 6 years. Then a couple months ago I changed my front page to a HTML only page with dithered image. Nerdy, yes, but is this actually a good landing page for an artist? Mayhaps no. Anyway, the whole site is a hodgepodge now, and all of my projects that I crank out are not in the portfolio or linked from the gallery page. This needs must change!

Starting out, here are my goals:

* don't reinvent the wheel. If someone has built better, and is sharing their code, then it's to re-use and share as well.
* yes, brutalist and non-traditional design, but readable
* do your best to keep semantic HTML and accessibility ideas in mind
* can you make things lower bandwidth?
* make things flexible and fun so the site can grow and adapt to my idiosyncratic and changing projects and ways of working and grow over time
* Capture the spirit of my previous work with my webpage, e.g. [Studio visit](https://leetusman.com/studio-visit/), [404](https://leetusman.com/404), [everyday](https://leetusman.com/everyday) etc

My three spirit websites for this are [Elliot Cost](https://elliott.computer/)'s million sites that seem to constantly change and yet are always compelling, Paloma's accessible artist portfolio, and the miles of pages of Cory Arcangel. 

I started out by exploring [Paloma Kop's site](https://palomakop.tv/) because it's a clear and compelling design, keeping principles of low-bandwidth/consumption, clear design, well-organized and still an artist's portfolio site. Paloma's site is CC BY SA and they generously wrote a clear [website info page](https://palomakop.tv/website-info/) which has lots of information on the design, going into things like lazy-loading images, minimizing js, using system fonts. Seems like a great way to get started.

One problem I have is that I crank out a ton of projects. I have hundreds. You wouldn't know that from the current website portfolio page, and some are tiny projects and others are big. So I've also studied [Cory Arcangel's site](https://coryarcangel.com/), who is the Merzbow of joke gallery objects. His site is designed to just list all of his sale art objects, certainly minimal and brutalist. He uses Jekyll, which I have many years of experience working with now, though I'm not keen to build my own portfolio with it. To be honest, this is Cory's worst website. It's no longer fun to browse and his art has grown less interesting for me lately, but I'll just keep that to myself. 

I also looked at [Increpare's site](https://increpare.com/) since he cranks out dozens or hundreds of games too, to glean how that could look. The design is not fancy but it's fast and quickly shows what things look like and their info pages. I also looked at some friends' sites too. I determined that it is important to me to have at least one image for each project that links to the project page. In contrast, there are some websites that are text only lists that link to project pages, but that's not a fun way (for me) to browse when designing work meant to be seen.

I spent time perusing cargo.site since they have nice brutalist templates, but when I actually try those sitesI find many harder to navigate through or not nearly as expansive as my site needs to be to capture all my work.

Okay, so I've tried some things, looked at code, ran some code (I am not putting it live per se but re-built my own clone of Arcangel's site for example and eyeballed cloned his css).

One other aspect of this is to build my own static site generator. I generally prefer using pandoc for converting between formats, so I'll probably create a wrapper around that.

I built this very December Adventure page tonight starting with CSS from Paloma (thanks!) and then modifying.  

Here's the foundation of the static site builder, which runs after save:

```sh
#build.sh
pandoc -s index.md -o index.html -H assets/includes/header.html -c assets/css/main.css --metadata title="December Adventure"
```

The result of all that is this page you're looking at now.

Tomorrow: gallery view page experiments

