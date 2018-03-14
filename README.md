https://ayoungdrew.github.io/life-soundtrack-front/
https://life-soundtrack-back.herokuapp.com/

### Technologies used
-Ruby on Rails

### Project Intro: Life Soundtrack
Life Soundtrack is a journal of your life through your taste in music. After signing up, you you can compile all the songs that are important to you, through groupings called “Phases” which are ways of organizing songs by a time frame, like the four years you were in high school. Or that one year when you couldn’t get over your ex-girlfriend. Each song is unique entry that includes a comment about how you were introduced to it and/or why you listened to it during a certain period in your life.

LS would be used by those who like to journal or collect or keep some emotional record of their lives. Similar to websites like pinterest.com or Film Aficionado (www.filmaf.com), LS let’s you keep a fun and personal journal of your love for music and how it’s been with you throughout your life.

### Process: Life Soundtrack Back-End Development
The creation of the database was all done with Ruby on Rails with local testing via Grunt.

I ran into several issues along the way due to this being my first back-end web project. I struggled with the controller and serializer scripts as I needed to display data that would be related to certain data in a table that was neither a direct child or parent.

Also, when deploying the database on Heroku I ran into a pretty big roadblock due to my migration files being corrupt. I had accidentally replaced a migration file with another of the same name but different timestamp which prevented the database migration from completing. I had to completely reset the database with the db:schema:load method which was quite scary for a newbie to Rails.

### Development Materials
Initial Wireframes:
https://drive.google.com/open?id=1y1O1zWrmdtbkWBdECqKY9_eHQ4tUDaLs

ERD:
https://drive.google.com/open?id=1nteuEH-ujKlRvy0QDw_1uspiHEkOux8-

Initial Draft of User Stories:
https://drive.google.com/open?id=15Lt-yceiAllXtfCFfnTowm4nQaFM2fOKD9iT0Aoxn2w
