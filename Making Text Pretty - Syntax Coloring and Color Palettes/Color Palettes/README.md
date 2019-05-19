If you don't have EditPad **[click here for a free trial](http://yu8.us/eppdemo)**

TL;DR Want to skip the mini-lecture on Color Palettes?
==


If you just want to use the [MishMash Color Palette](./MishMash), follow the link.

 ---


## What You Need To Know: the _direct_ point of an EditPad Color Palette is NOT to make your code look pretty!!!

No. A **palette** is just a range of colors attached to certain **labels**. The labels may have names like they sound like they mean something (for instance, a _Comment_ label attached to a green color), but _the names of the labels don't matter at all_. 

Note that the last statement is not the official view, but the one I've reached after failing to use EPP's color palettes in the conventional way when applying them to syntaxes as wildly different as those of Markdown or Autohotkey. For me it's much easier to see the palette as a repository of colors, and the labels as arbitrary names — giving me ultimate flexibility when I want to apply a specific color.

This screenshot sees how the same colors get recycled across four syntaxes: Autohotkey, Anki, INI and Markdown.


![use-in-schemes](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-use-in-schemes.jpg)



### Why the Names of the Labels in the Color Palette Do NOT Matter

To apply specific colors to certain tokens in your files, such as _if_ statements, each type of file has a "grammar file", known as a _syntax-coloring scheme_. For instance, in the syntax-coloring scheme for the language Python, there might be a section that defines the words relating to flow control (words such as _if_, _while_ and so on).

In that file, you assign sections of grammar (such as flow control) to the _labels_ they should use in color palettes. If you want your flow control words to look green and the only green available in your color palette is defined under the label _Comment_… Then you can assign _Comment_ to _Flow Control_ in the grammar file, whether or not the words make sense.

That's why you shouldn't get hung up on the names of labels in the color palette.  

 
### Implication: if you don't like the color of a code element but the palette is good, you don't need to mess with RGB values. You just pick another color from the palette.

This is how the same palette can be used across different languages. 

The label _Comment_ might have a green that is used by completely different types of tokens depending on the file type: flow control statements, variables, or even comments!


### When Labels DO Matter

I lied. The names of some labels in the color palette do matter sometimes. When you look at a color palette, you'll see three categories of labels: those relating to **Syntax**, those relating to **Editor functions** and those relating to **Regex**. Those whose names don't matter are only those that relate to **Syntax**, and that's because _you_ assign the relation between the syntax and the label. In contrast, the _Editor_ and _Regex_ labels relates to things that EPP decides itself, such as what constitutes a selected line or a line number. 


### A Template to Keep Things Straight

When I created the MishMash scheme, I found that the only way to keep the information straight was to create a template to keep track of colors as they appear, their RGB values and their uses.

This gave me a spreadsheet with several tables. Here are some screenshots. You can [download the template](./MishMash-AHK-EPP-Worksheet.xlsx) to adapt it to your needs. I won't explain everything because I believe that rather than reading words, the easiest will be to **pay attention to the headings** and start working it yourself to get some hands-on experience. 

Do notice that **the spreadsheet has two tabs.**

The **"Use in Schemes" tab** lets you check how you're using the palette's colors across syntax-coloring schemes. This is useful to check if some colors are unused.

![use-in-schemes](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-use-in-schemes.jpg)

The **"RGB Values" tab** has tables for (i) syntax elements in my language file, (ii) colors in the Color Palette, and (iii) potential colors I might want to use. 

![screen1](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-table1.jpg)

![screen2](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-table2.jpg)

![screen3](https://github.com/boolbag/EditPad-Goodies/blob/master/Making%20Text%20Pretty%20-%20Syntax%20Coloring%20and%20Color%20Palettes/Color%20Palettes/img/template-table3.jpg)




### How to Import a Color Palette?

Please follow the process explained on the [MishMash Color Palette page](./MishMash). 



