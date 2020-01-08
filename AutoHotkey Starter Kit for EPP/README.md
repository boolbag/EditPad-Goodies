First: If you don't have EditPad **[click here for a free trial](http://yu8.us/eppdemo)**

AutoHotkey Starter Kit for EditPad Pro
==

On the EditPad forum, I've often found myself suggesting solutions that involve AutoHotkey. To make it dead-easy to get started, I thought I'd offer a "starter kit" containing some useful additions to EditPad. You can then expand the main file (*epp_ahk_starter_kit.ahk*)to suit your needs (or turn off features).


## Features

When you run this script (and typically you would include it in the list of programs that run at start-up), a few new keyboard shortcuts start functioning inside of EditPad. These shortcuts can be customized.

- **Zoom In** (increase font size): Ctrl + Numpad Plus  
- **Zoom Out** (increase font size): Ctrl + Numpad Minus  
- **Load Saved Layout (the first on the list)**: Shift + F5
- **Copy As HTML** (toggles ON, copies, toggles OFF): Ctrl + Alt + C

This last shortcut assumes that in EPP, Ctrl + Alt + Shift + C is mapped to _Edit/Copy as HTML_. It sounds like a macro could do this, but since EPP empties the html section of the Windows clipboard when the option is toggled off, it's a little more complex than that.

- **Paste the Underlying HTML** (when you copy syntax-colored text in EPP, or content on a web page, the shortcut pastes the "translated underlying html"): Ctrl + Alt + V

This last hotkey is set-up to work system-wide, as you might want to paste the underlying html in other environments. But if you want to make it specific to EPP, that's a simple edit.

## How to Install

- Install AutoHotkey by clicking the blue button at the top of [this page](https://www.autohotkey.com/download/). Don't worry, it won't eat your machine… **It's only three megabytes!** 
- Download _AutoHotkeyStarterKitforEPP.zip_ to a convenient folder
- Unzip
- Double-click *epp_ahk_starter_kit.ahk*

It's running! Now you can test it before you decide if you want to have it running at start-up.

### Testing "Zoom In / Out"

This only works if your keyboard has a numeric keypad. Of course you can change the hotkeys to something you prefer. In a text file, try Ctrl + Numeric Pad Plus, then Ctrl + Numeric Pad Minus

### Testing "Load Saved Layout"

If you don't already have a saved layout (the position of various panels on the screen) do so now via View / Custom Layouts / Save Layout.

Then move a few things around. They press Shift + F5: the saved layout should be restored.

### Testing "Paste the underlying HTML"
- In EPP8, make sure that Edit / Copy as HTML is checked
- In a document with syntax highlighting, copy some colored text via Ctrl + C
- In an empty file (Ctrl + N), paste via Ctrl + Alt + V
- Assuming this worked, try the same with text copied from a web page. 

Note that at the moment, the shortcut is system-wide (not limited to EPP), allowing you to paste the underlying HTML in a different context. If you'd like to limit the functionality to EPP, edit *epp_ahk_starter_kit.ahk*, search for the block that starts with _; Ctrl + Alt + V_ and follow the instructions (you just have to move it down a few lines).

I'm interested in feedback and ideas about this functionality.

The script transforms the content of the Windows clipboard a little bit before pasting, and this can be tweaked. At the moment, I strip the headers so that the HTML is ready to use, and for EPP I modify the CSS to apply the background color.

One limitation I've noted, which is from the WinClip library, is that you can only paste the html once. To paste the same html a second time, you have to copy again.


### Testing "Copy as HTML"

- In EPP8, make sure that _Edit / Copy as HTML_ is OFF
- In a document with syntax highlighting, copy some colored text via Ctrl + Alt + C
- Paste in Word (for instance) to see that formatting is preserved
- Paste in EPP (that will be the plain text)
- Paste again in EPP via Ctrl + Alt + V to see the underlying "translated html"

If you are not sure what this _Copy as HTML_ is about, please page down and read the section entitled "Can you explain the _Copy as HTML_ shortcut?" 


## How to Change the Hotkeys
- Edit *epp_ahk_starter_kit.ahk*
- As an example, take the line that starts with _^!v::_
- ^ stands for Ctrl
- ! stands for Alt
- v stands for the letter v
- + stands for Shift
- example: ^!+v:: maps to Ctrl + Alt + Shift + V
- for more, please look up AutoHotkey shortcut syntax

## How to Make the Shortcuts Available After Each Reboot

You need to run the script at Start-up. It's tiny, and IMO it's a good way to get started with AutoHotkey.

- Right-click *epp_ahk_starter_kit.ahk*, select _Create Shortcut_
- Assuming Windows 10, in your file manager, paste:
**C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp**
- Move the shortcut to that folder


## How to Kill the Script is Something Goes Wrong

In your taskbar icons, look for a green icon with a "H". Hover on it, it should have the right name. Right-click, exit.

## Can you explain the _Copy as HTML_ shortcut?

In EPP8 the new _Edit/Copy as HTML_ option lets you copy text in EPP (colored via a syntax-coloring scheme and color palette) and paste an "html translation" of it in a program that knows how to use the HTML drawer of the Windows Clipboard. The result is that you can see the text pretty close to how you have it in EPP. Love that.

This immediately triggers the question: how do I paste that "translated html" as text, to look at the actual code? This question is not limited to things you copy from EPP: when you copy some lines from a web page, your browser also feeds some html to a special section of the Windows clipboard — and I'm sure there are other relevant contexts. 

In EPP currently you can look at the "translated html" via _Block / "Export to HTML or RTF"_. This creates a file that you can then open in EPP and inspect. 

But that's not the same as a quick "Paste", and besides, it doesn't help you look at the underlying html you select and copy in your browser.

### Paste Special
At the moment, EPP does not have a "Paste Special" menu item to paste the html content of the Windows clipboard. (I'm sure someday that will come.) By the way, that is a feature available in Notepad++, via _Edit / Paste Special / Paste HTML Content_. I never use N++, but it works great, and you can even try it by copying colored text in EPP and pasting in N++. (Remember to have _Edit / Copy as HTML_ turned on in EPP before you copy.)

But let's stay focused on EPP. 
My goal was to have this "Paste Special" in EPP, so I wrote a little script that does just that — which is part of this starter kit. You copy as you normally do with Ctrl + C (or with Ctrl + Alt + C, see the list of shortcuts at the top). When you paste in EPP, using Ctrl + Alt + V instead of Ctrl + V, instead of getting the text, you get the HTML content of the Windows clipboard, minus the headers, for more convenient use.


## Credits for WinClip

The "library" that provides functions to get information out of the Windows clipboard (WinClip and WinClipAPI) is not mine. I modified the former because the function I needed messed up the UTF-8 clipboard. It was originally published by "Deo" on [this page](https://autohotkey.com/board/topic/74670-class-winclip-direct-clipboard-manipulations/)

There may be better libraries to do the same — if you have any thoughts, I'm interested. Python for instance has access to the Windows clipboard, but the hotkey functionality is stronger in ahk, and I'm reluctant to fire both Python and ahk, not to mention having to add a dependency.
