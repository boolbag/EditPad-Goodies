

# Let's Talk About GitHub Markdown!

Hey there @reader, did you know that GitHub supports @mention callouts?
And that it automatically converts plain links like http://www.GitHub.com ?

Of course they also have <http://autolinks>… 

and [classic links](http://www.a.com) 
and [link reference definitions]: http://.... "optional title"

For ![an image](http://www.b.com) just prepend an exclamation point.

Some texts use a lot of [full reference links][citation needed] 
…which should not be confused with a [collapsed reference link][]

## Code: inline and in blocks

Is code why you're here? `Backticks` let you mark it up inline.

Then there is the three-backtick syntax. 

```
a = [2 * i for i in range(10)]
# try to divide by zero if we get a chance
```

It also works with three tildes `~~~`:

~~~
Tildes are harder to reach than backticks!
On U.S. keyboards, you have to press the Shift key.
~~~

You can also markup code just by indenting it, starting off with a single tab or four spaces:

    a = (2 * i for i in range(10))
    # second line

Note how the line starting with a `#` does not turn into a header. Unlike the next one.


### Sometimes You Must Respond

You add a blockquote by using the "greater-than" symbol, i.e. `>`:

> What are you doing this weekend?
> 
> Want to grab a pizza?
> 


#### Miscellaneous Formatting

Now of course you can make things **bold** using two stars or __underscores__.
To _italicize_, it's the same idea but with *a single star or underscore*.
But the really tricky thing is that two `~` (squiggle characters) create a ~~strikethrough.~~ 


##### What Else?

I should probably mention checklists:

- [x] Procrastinate 
- [ ] Push my commits to GitHub 
- [ ] Open a pull request

I doubt you'll want to make tables, but if you did, here you go.


| Monday  | Friday  |
|---------|---------|
|   Sad   |  Happy  |

Then there's an aternate method for creating headers. You do it by underlining the title.


Benefit of this Method: Headers looks Prettier
==============================================

(In mean, they look prettier in EditPad.)

You can either use equals (`=`) or hyphens (`-`). Also note:

You Don't Actually Have to Match the Number of Characters
---


This may be a bit boring, but you can specify section breaks with three or more dashes, stars or underscores. You're allowed to start the line by up to three spaces.


---


One more:

   ***  **  *  ***  ***


Okay?

Oops, time to study a bit of Spanish. Hang on.

cacaotero
: Persona que cultiva cacao o negocia con él.

Okay, I'm back. The above is how you insert a word definition in [reStructuredText](http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html), which is __not__ Markdown — it's not in the [Commonmark spec](https://spec.commonmark.org/) and __GitHub doesn't support it__.

Here's another non-standard feature. It's meant to help _you_ while you work on your documents in EPP, not to render in a Markdown-aware window.

TODO: remove all "todos", "reviews" and "fixmes"

It works by starting a line with the uppercase words `TODO`, `FIXME` or `REVIEW` followed by a `:` colon.

REVIEW: all of this

FIXME: this section needs work


##### What Else?

**Lists! ¿How did we get this far without mentioning lists?**

   1. This is probably MORE permissive than GitHub… Don't rely on it to check your Markdown syntax! [^1]

   2. There's probably a fair amount of Mardown syntax I haven't addressed.
     * html tags
     * maybe certain kinds of links
     * bold underline…

   3. I didn't go deep into **embedded styles** or \`escaping styles with backslashes\`

 (But the two styles on the previous line are embedded within a list, and there is something of the sort for [urls](http://), checklists and footnotes.) [^1]

- [x] Discussed lists
- [ ] Discussed emojis

This scheme is really just to make Markdown documents more pleasant to look at. So it's mostly for the basic Markdown that I (and most people) use. Mmm, to be fair, I put a lot in here that I never use.

Like _List Blocks_, from [reStructuredText](http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html).

|  Not sure what the point of this is
|  But it looks cool…
|                  No?

At this stage, I'll admit that I added wire box corners so I could do things like this:

                        ┌──────────────────────────┐
                        │ I Feel Wired, Don't You? │
                        └──────────────────────────┘

It's not in the spec, and you don't have to use it.


###### Finally

Hope this is useful to some of you. If you have specific requests, let me know.

Have a great day and remember to :smile: (that's right, forgot to tell you about _emojis_)

  ______

[^1]: As far as I know, Github doesn't allow footnotes.

