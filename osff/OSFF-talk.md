

Open Source In Finance Forum London 2022
----------------------------------------

See schedule [here]([https://pages.github.com/](https://osfflondon2022.sched.com/)).


Talk Structure
--------------

- Intro
  - Project
    - This is a demo of a tech sprint done organised and run by FINOS to show the integration between open-source components to digitise regulatory reporting logic.
  - Team (Minesh/David/Hugo from REGnosys, Atilla/Stephen/Nwokafor Choongsaeng from Morgan Stanley, Mark from Microsoft)
    - 8 people, 4 locations, Round the clock hackathon, End to end solution for regulatory reporting
  -	How long did it take?
    - Just 3 days! (Around the clock!)
- Goal
  - There are 3 aspects of open-source in the context of regulatory reporting. There is the digitised regulatory reporting rules, validating the correctness of those rules and finally the execution engine that can product the reports. Together, we have all of the open source components to create an end to end solution. 
  - The goal of the tech sprint was to explore how we could be used to produce a totally open source solution for regulatory reporting, from open rules to open implementations.
-	Open Source Software
  -	DRR: The Global Digital Regulatory Reporting (DRR) programme is a cross industry initiative to transform the reporting infrastructure so that all reporting entities implement rules consistently and cost effectively. Open Source Digitised Rules.
  -	Rosetta DSL/Code Gen: Rosetta is a Domain-Specific Language (DSL) designed for the financial industry. Its purpose is to support the modelling of the industry's various operational processes (data formats, business logic, validation rules, etc.) to promote the consistency and inter-operability of their implementations.
  -	Morphir: Morphir is composed of a library of tools that facilitate the digitisation of business logic into multiple different languages & platforms.
  -	Bosque: The Bosque project provides tooling focused investigating the theoretical and the practical implications of; Explicitly designing a code intermediate representation language, developing high reliability & high performance applications.
-	What did we do?
  - Spoiler alert – we integrated all of the tech together to build an end to end solution on a very this slice of the DRR model
  - We took the model and selected a couple of simple rules
    - Trade date
    - Trade ID
  - We build a Rosetta Code generator that programmatically transformed the DRR rule into ELM. A language the can be loaded into the Morphir
  - We ELM was then transpiled into the Morphir IR where could make use of the Morphir User interface to inspect the business logic
  - The Morphir and Bosque have been building an integration layer. Leveraging this, we used Bosque to verify that the correctness of the business logic against some test data.
  - Morphir opens up the possibility to run the regulatory logic in many platforms. At REGnosys, we use Scala, so we selected Scala generator to create an execution platform that is able to take JSON inputs, and execute the rule and produce output.
  - Finally – we built a web based tool to show the end to end creation of the report using the Scala code.

  -	What does this accomplish?
    - I believe in the term “right tool for the right job”. DRR, Rosetta, Morphir and Bosque are all great tools that alone, can produce a lot of value.
    - But putting all of these tools together produces an end to end solution, from crowd sourcing the interpretation of rules in DRR, to representing them in a digital format that technical and non-technical users in Rosetta. Taking the rules and opening up the myriads of options of implementation using the Morphir IR. A missing part of the  
-	What are the next steps?

-	Why is it important?
-	Get involved
  - Learn more
  - Contribute
  - ...

-	What does this accomplish?

-	How did we organise ourselves? [2]
  - Using the FINOS GitHub issues
  - Plug James + FINOS
-	Final Words
  - MS
  - MS
  - FINOS
  - REGnosys
