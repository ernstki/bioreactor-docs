# Bioreactor User Manual
Flask+Python scaffolding for web-based bioinformatics analysis tools 

_If you are reading a printed or [PDF version](manual.pdf) of this
document, the current online version may be found at
https://github.uc.edu/pages/Bioreactor/bioreactor-docs (UC LDAP login may be
required)._

## Introduction
In today's fast paced world, it can be very challenging to network and meet
new people with similar interests and experiences with technology and
development. Developers may be working on very similar projects or may need
assistance with a project, but have no readily accessible means of meeting
other developers with knowledge and experience or find mentors to help further
refine their own skills.

### Scope
The Bioreactor project will initially target 

### Objectives and Success Criteria
The objectives of the project are to:

* Facilitate communication between users based on projects/ideas
  that rank according to their provided interests profile
* Create a system of peer rating and credentialing which can be used to
  certify individuals' skills and evaluate their suitability for collaboration
* Provide basic groupware functions such as email discussion lists or live chat*

\*_Stretch goals: only if primary functionality is implemented ahead of
    schedule_

### References
1. _Object Oriented Software Engineering Using UML, Patterns, and Java_, 3rd
   ed., Bernd Bruegge and Allen H. Dutoit

## Current System

There is currently no single industry-leading service which provides a
collaborative platform for creators seeking to recruit others to help with
their projects. 

## Proposed System

### Overview
We believe Bioreactor will differentiate itself on the market by providing
a unified platform for ...

### Definitions, Acronyms, and Abbreviations
#### Acronyms Used in This Document
1. __JSON__: _JavaScript Object Notation_
2. __REST__: _Representational State Transfer_
3. __API__: _Application Programmer Interface_

#### Bioreactor Vocabulary
1. __Job__: the central focus of the Bioreactor site; a collaborative
   effort to produce some desired end result, which may be a hardware or
   software product, a work of physical or performance art, or a civic
   activity
2. __User/Member__: a person who uses the Bioreactor web application
   while signed in to a registered account; a collaborator on an existing
   project
3. __Role__: a delegation of resposibilities by the Project Owner to
   Members of the project

### Functional Requirements

Cum Epicuro autem hoc plus estnegotii, quod e duplici genere voluptatis
coniunctus est, quodqueet ipse et amici eius etmulti postea defensores eius
sententiaefuerunt, et nescio quo modo, is qui auctoritatem minimam habet,
maximam vim,populus cum illis facit.

* __Search existing jobs__
    * User must be able to search for Jobs by any of the following criteria:
        * Project name 
        * Project location 

* __Create new jobs__
    * User must be able to apply for projects 
    * Users must be able to view detailed information about the job,
      including but not limited to:
        * job name  
        * job description

* __View a Profile__
    * Users must be able to view profile details for other users 
    * Profiles should show the number of projects done with a given skill  
    * Profiles should showcase previous work as much as possible
      (non-functional)
    * Users must be able to contact other users 
    * Email 

* __Edit Profiles__
    * Users must be able to edit their profiles 
    * Users should give a "level" to their skills  
    * Users should be able to make their profiles private (invite only) or
      searchable

* __Create a Profile__
    * Users must be able to create their profile from the app 
    * + all of "Edit Profiles"

* __Manage Project Roles__
    * Users will be able to add roles to their projects 
    * Roles will contain 
        * A name 
        * Skills required to fill the role 
        * A description of the role 
    * Be able to be filled by a user 
    * Users must be able to add other users to fill a role 

### Non-functional Requirements

#### Usability
* Profiles on the service should emphasize credibility by showing skills
  and project history
* Project owners should feel like they are hiring competent people 
* Every page should be accessible to from anywhere within the interface in
* as few possible clicks/taps as possible
* Profile images should be encouraged to professional

#### Reliability
* Project should be hosted on a scalable infrastructure which anticipates
  very large scale growth in a short period of time
* Project should have monitoring and notification systems in place to
  inform developers of problems and downtime

#### Performance
* Search functionality should be prominent and easily accessible in both the
  Android and web interfaces
* The mobile application should be easily navigated with the fewest clicks
  possible
* The web front end should utilize Ajax to push page "fragments" rather
  than whole page updates, and maximize the use of browser cache and HTML5
  offline storage APIs to improve responsiveness and resiliency to periods
  of disconnected use

#### Supportability
* Application should be develooped on Android and target the widest range of
  form factors and screen sizes possible
* Allow users to use their own email program for project messaging

#### Implementation
* The mobile application should work on the widest range of current-generation
  Android devices possible (Android 3.x and up)
* The back end should utilize RESTful APIs to allow for future integrations
  and third-party hooks

#### Interface
* The application UI and web site should look and feel professional  
* The mobile application should place notifications in the notification bar
  and/or lock screen for the targeted mobile platform(s)

#### Legal
* Service should have clear legal guidelines on who retains copyright to
  creative works submitted to the service
* Service should encourage works of software to be submitted under an
  [OSI-approved open source license](http://opensource.org/licenses/);
  documentation and other creative works should be encouraged to use
  [Creative Commons](http://creativecommons.org/licenses/) or
  [GNU FDL](https://gnu.org/licenses/fdl.html); allow "all rights reserved"
  copyright assignment as an optional fallback
* Service should have clear stipulations about privacy and disclosure of
  user data or personally-identifying information to law enforcement or
  other authorities

### Secondary Requirements

The following requirements are considered "stretch goals" which are only to
be undertaken if primary goals are on schedule for completion in the required
time frame.

#### Data Export
Users should be able to export their project data (membership, contact
information, role assignments, shared files, communications logs) in an
accessible format should they desire to leave the service at any time

#### Messaging 
Users must be able to contact other users 
1. IM 
2. Private messaging 
3. Group Mailing lists (address to mail to) 
4. auto-completing @-replies in comment/discussion areas on the site

#### Activity Feed 
Follow other users, view their project participation 

#### Project Management 
1. Delegate Roles 
2. Create Roles 

#### Integrations 
1. GitHub 
2. Cloud storage (Drive, Dropbox, etc.) 


### System Models

#### Scenarios

##### Scenario #1: New User

1. Create a new job
    * Quam ob rem tandem, inquit, non satisfacit?
2. Search for an existing job
    * Quam ob rem tandem, inquit, non satisfacit?
3. Collaborate with project 

#### Object Model

##### Job Object Fields

|     Field Name         | Public/Private | Required |
|------------------------|----------------|----------|
|  1. Name               | Public         | Yes      | 
|  2. Description        | Public         | Yes      |
|  3. Brief Description  | Public         | No       |

1. Name 
2. Description 
    * In depth description of the project 
3. Brief Description 
    * Description given when viewed from search 
        * If not given the first x characters will be taken from Description for this field 

##### Profile Object Fields

|    Field Name      | Public/Private | Required |
|--------------------|----------------|----------|
| 1. Name            | Public         | Yes      |
| 2. Email           | Either         | Yes      |
| 3. Location        | Either         | No       |
| 5. Profile Picture | Public         | No       |
| 6. Projects Joined | Either         | N/A      |
| 7. Bio             | Public         | No       |
| 8. Status          | Public         | Yes      |
| 9. Previous work   | Either         | No       |

1. Name 
2. Email 
    * Signup email 
3. Location 
    * Location of user 
5. Profile Picture  
6. Projects Joined 
    * A list of all the projects the user has joined 
    * Must be part of the project for at least x% of the project life for it to show up 
7. Bio 
    * Description of the user, similar to resume skills list
8. Status 
    * The status of the users project hunt 
    * Looking for project, Not looking for project, etc… 
9. Previous work done by the user 
    * Any work the user wants to share on their profile 
 
##### Role Object Fields

|    Field Name               | Public/Private         | Required |
|-----------------------------|------------------------|----------|
| 1. Name/Job Title           | Public                 | Yes      |
| 2. Description              | Public                 | Yes      |
| 3. Skills Required          | Public                 | No       |
| 4. Duties/Responsibilities  | Public                 | Yes      |
| 5. Filled                   | Public                 | Yes      |
| 6. Filled by                | Private to non-members | No       |

1. Name/Job Title 
    * The name or title of the role  
2. Description 
    * A brief description of the role and what it entails  
3. Skills Required 
    * The skills that will be required of the user to fill this role  
4. Duties/Responsibilities 
    * What the user will be doing if they take this role 
    * Should be detailed  
5.  Filled 
    * If the role is filled or not 
6. Filled by 
    * Whom the role is filled by 


#### Back-end Database Schema
Generated from Rails' `db/schema.rb` on 2014-07-31 using `uml_dumper.rb` by
[Miroslav Skultety][uml-dumper], rendered in [StarUML][staruml].

[uml-dumper]: http://blog.zmok.net/articles/2006/11/13/visualize-your-rails-schema
[staruml]: http://staruml.sourceforge.net/en/index.php

#### Dynamic Model

##### Overview

Sed possunt haec quadam ratione dici non modo non repugnantibus, verum etiam
approbantibus nobis.

##### Activity Diagrams

###### Create a New Job Workflow




#### User Interface

<!-- ## Glossary -->

## Credits
The HTML version of this document makes use of Junil Um's
[markdown-toc](https://github.com/powerumc/markdown-toc), which in turn makes
use of the [Tocify](http://gregfranko.com/jquery.tocify.js/) jQuery plugin by
Greg Franko, 

The PDF version of this document was created with John MacFarlane's
[Pandoc](http://johnmacfarlane.net/pandoc/index.html) document processing
system.

<!-- Vim modeline; please don't remove
 vim: tw=78 sw=4 ts=4 expandtab filetype=markdown
-->
