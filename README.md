# CS3203 Survival Guide

The project is a static program analyser (hasn't changed in quite a while).

## Module Content

Semi-TL;DR of the module follows in the paragraphs below. This information is public, so I have no qualms in sharing *exactly* what the module entails; pay it forward is my motto. I hope it helps.

You are given a [toy language](http://catb.org/~esr/jargon/html/T/toy-language.html) (named [SIMPLE](https://github.com/nus-cs3203/project-wiki/wiki/Full-(Basic-and-Advanced)-SPA-requirements#2-source-language-simple)) and the associated grammar rules, as well as a query language (named [PQL](https://github.com/nus-cs3203/project-wiki/wiki/Full-(Basic-and-Advanced)-SPA-requirements#4-query-language-pql)) and associated grammar rules. Both (as well as the rest of the module details) may be found in [this GitHub page](https://github.com/nus-cs3203/project-wiki/wiki/Full-(Basic-and-Advanced)-SPA-requirements).

You are to parse and extract queryable information from source code written in SIMPLE, and store it in some database, which may then be polled with queries written in PQL. Some examples include,

- 'Which line numbers are while-loop declarations?'
- 'Which line numbers are/contain function calls?'
- 'Does the variable `x` exist in this source code?'
- 'Is line number `x` a parent of line number `y`?`
- 'Does line number `n` affect the execution of line number `m`?'

These are just some examples; the GitHub link above contains a *lot* more.

The idea is really quite *simple* (pun not entirely unintentional), but the module beats around the bush a lot for the first three to four weeks.
With this in mind, you might be able to understand the project requirements a lot better, and maybe elide all the puffery in the lectures, and perhaps even get coding a good week or two ahead of your peers.
Time matters, and the earlier you start (contrary to what the profs say), the better.

The project is to be written in C++, but you don't really need to delve *that* deep into the language, at least not for the first half of the semester.
If you can write your CS2030/CS2040 assignments in C++, that is (generally) good enough.
There are two build options: a Visual Studio `.sln` file (only works on Windows, but supposedly easier and faster to set up), or a `CMakeLists.txt` file, that you can use with CLion/VS Code/other editors of choice (works across OSes, but apparently a bit more of a pain).

The project may be divided into three (somewhat) clear segments:

- parsing SIMPLE source, extracting information from said source, and storing this in the database (collectively called the **Front-end**);
- actually *implementing* the API and the database to store information from above, and to return information for polled queries from below (called the **Program Knowledge-base**, or **PKB** for short);
- parsing the query language and determining *which* information is asked for in the database, and returning the information in a human-readable manner (collectively called the **Program Query Language parser**, or **PQL parser**).

These three groupings are also sane sub-groups for your group of 6 to form (you can also do things differently; one guy to write test cases, etc).
Agreeing on a clear API from your **Front-end** to the **PKB**, and from the **PQL Parser** to the **PKB** will make your life very easy.

Below are some key words to research before you start the module:

- source code tokenisation
- recursive descent parsing
- abstract syntax trees
- left-recursion elimination
- regex parsing
- function call graphs
- shunting-yard algorithm
- control-flow graphs

You will certainly need to write comprehensive test cases.
As an example of a *system test*, you will have to cough up a full program in SIMPLE, eye-power the relationships and information from the source code you have written, and you will have to have *ALL* the relationships in code/text again, and see if your entire system works.
This is a good exercise in test-case writing, since your system might actually be *already* correct, and emit information/relationships you didn't account for in test cases.

This concludes the *programming* part of the module.
Notice I didn't mention typical SwE principles like CI/CD, version control, etc.
These are *optional* (ironically enough), and for some reason, the module focus appears to be on the algorithmic/correctness side of things.

## Admin Matters

Lecture attendance is *compulsory* (honestly a bit annoying, as there's nothing new taught after weeks 6-7, at least nothing that can't be read from the GitHub above), as there are impromptu questions thrown to random groups in the lecture, and marks are deducted for non-attendance.

There are two written exams (may have changed from last year, due to the remote nature of the module), which are (once again) mostly concerned with program analysis/parsing, various PQL queries given a sample source code in SIMPLE, etc etc.

There are *three* submission iterations, roughly set in the middle of recess week/week 7, week 9/10, and week 13, respectively.
Your group will progressively build up the project.
The bulk of the work is (generally) for iteration 1, since that's when you will decide on and write the base APIs and components, and check if they interact together properly, and decide on a code style, etc etc. Of course, make sure your code is easily extensible.

Each iteration also includes a project report that your team will have to write.
Some tips here: explain *why* you have done things the way you have, and *how* they work, rather than merely stating *what* you have done.
For instance, if you choose recursive descent over regex parsing, explain why—if your reason was that one is easier than the other, elaborate on *how*: do you think it was easier to implement/test/etc?
Explain how your tokenisation and your query parsing works, how you handle edge cases, etc etc.
Explain your testing methodology, and why you have chosen your particular test cases.

Knowing LaTeX/MarkDown/AsciiDoc or a similar text-based version-controllable document preparation system will help a lot, because the report can get very long indeed.
Word/Google Docs might start choking after 50+ pages and screw up your formatting.

That's pretty much everything I can recall about CS3203. It *is* an 8-MC module, but you can ease a *lot* of the work if you go in knowing what to expect, when.

___

P. S. If you have familiarity with language parsing, grammars, or perhaps taken any of CS4212, CS4215, or CS5218, you will find CS3203 very easy indeed.
