If you don't have EditPad **[click here for a free trial](http://yu8.us/eppdemo)**

The MishMash Color Palette for EditPad Pro
===


The MishMash color palette can work with any file type, but let's start with screenshots of it with some languages that have tailor-made syntax-coloring schemes for it.

#### 1. with Markdown

![Markdown](https://github.com/boolbag/EditPad-Goodies/raw/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Syntax%20Coloring%20Schemes/Markdown/Markdown%20for%20MishMash/screenshots/demo.jpg)

#### 2. with an INI file

![INI](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Syntax%20Coloring%20Schemes/INI/INI%20for%20MishMash/demo/mishmash-ini.jpg)

#### 3. with AutoHotkey

![AHK](https://github.com/boolbag/Autohotkey-Goodies/blob/master/Syntax%20Coloring%20Scheme%20for%20EditPad%20Pro/demo/screen1.jpg)

#### 4. with Anki

![Anki](https://github.com/boolbag/Anki-Goodies/blob/master/Creating%20Notes%20in%20Text%20Editor/Syntax%20Coloring%20Scheme%20for%20EditPad%20Pro/demo/screen-clip.jpg)


# Schemes specifically made for MishMash

* [Anki for MishMash](https://github.com/boolbag/Anki-Goodies/tree/master/Creating%20Notes%20in%20Text%20Editor/Syntax%20Coloring%20Scheme%20for%20EditPad%20Pro)
* [Autohotkey for MishMash](https://github.com/boolbag/Autohotkey-Goodies/tree/master/Syntax%20Coloring%20Scheme%20for%20EditPad%20Pro)
* [INI for MishMash](https://github.com/boolbag/EditPad-Goodies/tree/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Syntax%20Coloring%20Schemes/INI/INI%20for%20MishMash)
* [Markdown for MishMash](https://github.com/boolbag/EditPad-Goodies/tree/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Syntax%20Coloring%20Schemes/Markdown/Markdown%20for%20MishMash)


Adapting an existing scheme for MishMash is easy. More about this further down this page. 


# How to Import the MishMash Color Palette into EditPad


First off, if you don't have EditPad **[click here for a free trial](http://yu8.us/eppdemo)**.

Second, here's the bad news. **In EditPad Pro 7, importing a color palette is not as easy as clicking a button. It will require about five minutes of your focused attention.**

Ready? Here are the steps.

### Phase 1: Be Warned

This procedure has you change some values in your EditPad configuration file **which is inherently hacky**.If you don't follow the steps below to back up that file and end up with a corrupted file that loses your other settings… You were warned. 

There is always a risk with this kind of procedure — my instructions could be unclear or slightly wrong — so just be conscious of this before you start, and tread lightly. Heck, I have messed up my EPP configuration file before just by breathing on the screen as it showed the unopened file in the file manager! If you don't like these odds, don't come to the race track.

 ![New Color Palette](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/MishMash/img/epp-ini.jpg)

TL;DR: if your dog gets the flu or you have to sell your house as a result of this operation, I don't want to hear about it.


### Phase 2: Create New Palette

* In EditPad, in any file, navigate to _Options / Configure File Types / Colors and Syntax Tab_
* At the top, next to the name of the current color palette, click _Customize_
* At the top of the next screen, click _Create New Color Palette_

![New Color Palette](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/MishMash/img/color-palette-name.jpg)

* In the _Palette Name_ box at the top right, rename the palette to _MishMash_
* Click OK as many times as needed, and close EditPad.


### Phase 3: Edit INI File


* Did you really close EditPad? Including the forum? Double-check, and make sure EditPad is closed.
* Navigate to your EditPad Pro options folder. To do so, copy this string and paste it in the address bar of your file manager (such as Windows Explorer or Directory Opus): `%APPDATA%\JGsoft\EditPad Pro 7` 
* Locate this file: `EditPadPro7.ini`
* Copy it three times to different locations so you have backups.
* Open **one of the backups** in EditPad. **Do not open the actual file**.
* At the top of the file, in the _Syntax Colors_ section, find the **number** corresponding to _MishMash_ (on the screenshot, it is the number 8).
 

![New Color Palette](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/MishMash/img/number-of-mish-mash.jpg)

* Still in that same file, **assuming the number was 8**, search for these two consecutive sections:

   1. `[SyntaxColors8]`
   2. `[SyntaxColorsRegex8]`

Note the huge line numbers on the screenshot: **search for the sections, don't try to scroll down!**

![New Color Palette](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/MishMash/img/section-to-delete.jpg)

* Note the line number at which the first section begins (_Options / Line Numbers_)
* Delete both sections completely (the screenshot above is partial, you have to select all the values under the two headings) 
* Save the file but don't close.
* Open [this file](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/MishMash/MishMash-Color-Palette.ini), click _Raw_ at the top right, save and open in EditPad. It contains the correct values for _MishMash_.


![New Color Palette](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/MishMash/img/raw-button.jpg)

* Look for the two same headings `[SyntaxColors#]` and `[SyntaxColorsRegex#]` and replace the numbers with your magic number for _MishMash_ noted above, **in both sections**
* Copy everything, tab to the file where you deleted that same section, and paste in the place where you deleted, if you wrote down the line number (otherwise it probably doesn't matter).
* Back up this backup file
* Close EditPad
* Rename the file you were working on to the name for the actual configuration file, _EditPadPro7.ini_, renaming the original if needed. 

### Phase 4: Start using the MishMash color palette

* Open EditPad and navigate to _Options / Configure File Types / Colors and Syntax Tab_. If you inspect the color palette, you should see that it contains the correct colors. 
* You can start using it, either by trying to assign it to random syntax-coloring schemes, or by using syntax-coloring schemes that are made for it (see the top of this file). 
* Remember that in each case, for each file type that you want to use _MishMash_ with, you need to go to _Options / Configure File Types / Colors and Syntax Tab_ and specify that you want to use it.



# Adapting Existing Schemes for MishMash: IT'S EASY!

Adapting existing schemes for MishMash is easy because of the palette's range. 

Here's a summary of the steps to follow **once you have installed MishMash**:

* Download my [Template to Adapt MishMash to any language](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/MishMash-EPP-Worksheet.xlsx), and read about how it works on the [page about color palettes](https://github.com/boolbag/EditPad-Goodies/tree/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes)

![use-in-schemes](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-use-in-schemes.jpg)

![screen1](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-table1.jpg)

![screen2](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-table2.jpg)

![screen3](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-table3.jpg)


* Download and install the [JGsoft Custom Syntax Coloring Scheme Editor](https://www.editpadpro.com/cscs.html), which is a free download for EditPad Pro users. 
* Navigate to your EditPad config folder (paste `%APPDATA%\JGsoft\EditPad Pro 7` in your file manager to go there).
* Syntax coloring schemes are files with a `jscscs` extension. Copy the file you want to adapt, (for instance `Csharp.jgcscs`) and rename it to something like `Csharp for Mishmash.jgcscs`
* Double-click the file: it opens in the JGsoft Custom Syntax Coloring Scheme Editor.
* Start in the _General_ tab. Edit the scheme name, for instance _Python for MishMash color palette_, and fill in the relevant fields.
* **Important**: still in that _General_ tab, at the bottom, select _Options / EditPad Pro 7 Palettes / MishMash_ 
* Now click the _Preview_ button and see how the sample text changes. You'll come back and check that after modifying the color classes.
* Now click on the _Coloring Scheme_ tab. Note that it shows a list of elements, which all have a _Name_. The only thing you need to do is select different colors in the _Color_ pull-down menu for each item. If you followed the _Important_ step above, the colors should be previews of the colors in MishMash.
* Do the same in the _Brackets_ tab.
* Return to the _General_ tab and click _Save_. Do not close the syntax-coloring editor.
* Close and restart EditPad. Open a file of the adequate type. Navigate to _Options / Configure File Types / Colors and Syntax Tab / Syntax Coloring Scheme pull-down menu_: your new scheme will be on the list. Select it.
* See if the file displays properly. Most likely, you'll want to tweak things. Rinse and repeat. 
* Before sharing your scheme, use it for a week so you can work out all the kinks.
* When you're ready to share your scheme, visit the [JGsoft Custom Syntax Coloring Scheme Editor](https://www.editpadpro.com/cscs.html) page and navigate to the _Upload_ section. Later, on that same page, you can edit or delete the scheme.

