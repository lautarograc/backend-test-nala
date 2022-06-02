#### Considerations:

Every pull request has an associated issue. Inside the pull request, changes made to the files are described. Inside the issues, steps for diagnosis and intended solutions are described.   
  
I tried to maintain an unverbose way of communicating things, as I feel it would be more appropiated for a development environment.   
  
About my code: I specifically tried to NOT be intrusive with the codebase. This means that I didn't add any new gem, created any new class, method or helper and overall tried to change as few lines of code as possible. The bugs were really easy to both locate and solve, but a few changes could be made to improve the general feeling of the demo project. For example, it would be nice to switch to a more decent database such as PostgreSQL (as I tried to use [enum types](https://www.postgresql.org/docs/current/datatype-enum.html) during the third pull request that are both supported in PG and MySQL but not in SQlite), rubocop offenses could be addresed and boilerplate unused bloat could be deleted (such as the test/ folder, and especially assets gems, they take too much time to bundle and serve no purpose to the spirit of this demo). But I fear that it would be a big de-rail from the intended work.
