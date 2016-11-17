# Software Architecture

**Software architecture** refers to the fundamental structures of a **software system**, the discipline of creating such structures, and the documentation of these structures. These structures are needed to reason about the **software system**.

- "Organization of a system into **component subsystems of modules**" - Informal Definition
- **Iteratively refined** into multiple layers
- Often makes use of **stereotypical architectural styles**

A **software architect** is a software expert who makes high-level design choices and dictates technical standards, including software coding standards, tools, and platforms. The leading expert is referred to as the chief architect.

- [Arhitectural patterns](/docs/misc/architectural-pattern.md)
- [Tech jobs](/docs/misc/tech-jobs.md)

## Representing Architectures

- **Component** is a computational or data element plus interface to the rest of the system
    - Selecting Components
        - Required functionality
        - Exisiting reusable componenets
        - Physical machine arthitecture
        - Expertise of staff
        - Projected evolution trajectories
    - APIs (Application Programming Interface)
        - Names if access ports, argumnets, types
        - Can be described in a programmming language; language binding
        - Might be described in OCL
        - To describe API - ADLs (Architectural Description Languages)
- **Connector** is a communication protocol or between components
    - Examples
        - Procedure call/return
        - Pair of messages
        - Asymmetric, synchronous
- **Configuration** is a specific associations between components and connector

## Architecture Styles

**Architectural Styles** is a named collection of architectural desgin decisions

- Abstract data types (ADT, hide representation)
- Batch sequential (validate, edit, update cycle)
- Blackboard (repository, opportunistic control, cooperating agents)
- Big ball of mud (Monolithic)
- Client Server (transactional processing, multi-tiers)
- Component-based (reusable modules communicating through well-defined interfaces)
- Coroutines(symmetric, interaction)
- Data centric (use of stored database procedure)
- Domain Driven Design (DDD) (business-oriented, domain model)

## Path

       Software           Analytics             Mobile                IoT              Software
       Engineer            Engineer            Engineer            Engineer            Architect
           |       Java        |       Java        |       Java        |       Java        | Software
           |        PHP        |      Python       |       Swift       |     C/C++/C#      | Network
           |     Javascript    |         R         |   [Objective C]   |   Linux/Android   | Infrastructure
       ----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----
    0...   1    |    |         2         |    |    3    |    |         4                   5
                | Website                |    |         |   iOS
                |                    Big Data |         |         
          Web Services                        |      Android       
                                           Machine 
                                           Learning

## Resources

 - [Software Architecture Fundamentals](https://www.safaribooksonline.com/library/view/learning-path-software/9781491957974/) Safari Books Online
 - [Software Architecture & Design](https://www.udacity.com/course/software-architecture-design--ud821) by GeorgiaTech

