# Lesson Infrastructure Enhancement Proposal 001

Title: Adoption of Git for Windows v2.15.1

Author: Raniere Silva, raniere@rgaiacs.com

Status: Draft

Type: Informational

## Abstract

Git for Windows v2.15.1 has nano included. Adopting it will allow us to drop the [Windows installer](https://github.com/swcarpentry/windows-installer) which is not well maintained.

## Specification

All installation instructions for Git and Bash for Windows will need to mention that learners and instructors should have v2.15.1 or later installed.

## Motivation

In the past we had different reports that [nano was not found after installing Git for Windows](http://lists.software-carpentry.org/pipermail/discuss/2017-March/005085.html) or that users were unhappy with how it works, for example, [nano cleans the window Windows and previous commands aren't available](http://lists.software-carpentry.org/pipermail/discuss/2017-March/005140.html) even when scrolling the page. This problem with nano started a [long discussion](http://lists.software-carpentry.org/pipermail/discuss/2017-March/005140.html) covering the use of other text editors, for example Atom, but the consensus was that nano offers the best user experience for learners that are working in the terminal. We need to improve the learners experience during our workshops by offering reliable instructions to install nano on Windows.

## Rationale

We investigated many alternatives to install Bash, Git and nano and other tools on Windows. Some of the investigations included [Cywing](https://www.cygwin.com/), [MSYS2](http://www.msys2.org/) in [swcarpentry/workshop-template/issues/394](https://github.com/swcarpentry/workshop-template/issues/394) and [Conda](https://conda.io/docs/) in [swcarpentry/workshop-template/issues/395](https://github.com/swcarpentry/workshop-template/issues/395). None of these investigations have reached a level of confidence that we want to test on our learner base.

As [mentioned](https://github.com/swcarpentry/workshop-template/pull/447#issue-155348019) by [Oliver Stueker](https://github.com/ostueker), Git for Windows v2.15.1 includes nano, and it will enable Windows users to have it out of the box. [swcarpentry/workshop-template/pull/447](https://github.com/swcarpentry/workshop-template/pull/447) reached the consensus that dropping the Windows installer in favour of requiring Git for Windows v2.15.1 or later is the best way to offer the experience that our learners deserve.

## Backwards Compatibility

The Windows installer would also

- Install GNU Make and make it accessible from Git for Windows
- Install SQLite and make it accessible from Git for Windows
- Create a ~/nano.rc with links to syntax highlighting configs
- Make R (if we can find it) accessible from Git for Windows

## GNU Make

A small number of workshops teach GNU Make. Probably, learners that are interested in GNU Make are dealing with C or Fortran code and using HPC. It might be easier easier to require learners at these workshops to use a remote machine in case they use Windows on their laptop.

## SQLite

Lessons involving SQLite use different tools to teach learners. Some lessons use a SQLite add-on for Firefox (this add-on isn't working on Firefox 58, also know as Firefox Quantum, or later), Python or R. Each one of this approaches to use SQLite has their own way to install their own version of SQLite and not many learners will use SQLite from the bash environment right after the course.

## Syntax Highlighting

This is nice to have but isn't a requirement to teach a great workshop.

## R

Learners reported that this doesn't work in some cases, which is one of the reasons we are dropping the Windows installer.

## Reference Implementation

1. Take over [Oliver Stueker's pull request](https://github.com/swcarpentry/workshop-template/pull/447) to update the workshop template.

   Create a copy of the branch on your own copy of `workshop-template`, open a pull request with it and close [swcarpentry/workshop-template/pull/447](https://github.com/swcarpentry/workshop-template/pull/447).
2. Check that the instructions that Oliver Stueker wrote are still valid and update your pull request accordingly.
3. Record the [installation instruction video](https://www.youtube.com/watch?v=339AEqk9c-8) again.
4. Rewrite the instructions to install SQLite by getting the files from https://www.sqlite.org/download.html
5. Notify maintainers of the Shell lessons that we are planning to change the installer.

   - https://github.com/swcarpentry/shell-novice
   - https://github.com/swcarpentry/shell-extras
   - https://github.com/swcarpentry/shell-es
   - https://github.com/datacarpentry/shell-genomics
   - https://github.com/datacarpentry/shell-ecology
   - https://github.com/datacarpentry/shell-libcatalogue

   They probably need to change the setup page of their lesson and maybe a few sections on other pages.
6. Notify maintainers of the Git lessons that we are planning to change the installer.

   - https://github.com/swcarpentry/git-novice

   They probably need to change the setup page of their lesson and maybe a few sections on other pages.
7. Notify maintainers of the SQLite lessons that we are planning to change the installer.

   - https://github.com/swcarpentry/sql-novice-survey
   - https://github.com/datacarpentry/sql-ecology-lesson

   They probably need to change the setup page of their lesson and maybe a few sections on other pages.   
8. Notify maintainers of the GNU Make lessons that we are planning to change the installer.

   - https://github.com/swcarpentry/make-novice

   They probably need to change the setup page of their lesson and maybe a few sections on other pages.
9. Notify maintainers of the R lessons that we are planning to change the installer.

   - https://github.com/swcarpentry/r-novice-gapminder
   - https://github.com/swcarpentry/r-novice-inflammation
   - https://github.com/datacarpentry/R-ecology-lesson
   - https://github.com/datacarpentry/R-genomics
   - https://github.com/datacarpentry/r-spatial-data-management-intro

   They probably need to change the setup page of their lesson and maybe a few sections on other pages.
10. Write and publish a blog post announcing the change to be roll out in **one month**. The blog post must be published at least in

   - https://software-carpentry.org/
   - http://www.datacarpentry.org/

   The blog post **must** contain instructions for workshop coordinators to get the new workshop template when they are going to setup their workshop website or to update the website of a workshop that will take place only after one month from the date of publication.

   In addition to the blog post, a email to [discuss@lists.software-carpentry.org](http://lists.software-carpentry.org/listinfo/discuss) must be sent.

**After one month** of the blog post announcement:

1. Merge your pull request.
2. Notify the maintainers, see the list of Git repositories above, again that the change is being rolled out.
3. Write and publish a blog post announcing that the change is in place.
4. Send a email to [discuss@lists.software-carpentry.org](http://lists.software-carpentry.org/listinfo/discuss) mentioning that the change is in place.
5. Send a email to lead instructors of future workshops registered in AMY mentioning that installation instructions changed and with steps for them to update their workshop website.
