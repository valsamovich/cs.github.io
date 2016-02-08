# Travis

In software development, **Travis CI** is an open-source hosted, distributed continuous integration service used to build and test projects hosted at GitHub.

- Travis

## Setup

Setting up Travis to build your own project(s) is quick and straightforward: Once you have signed in with your GitHub account and granted Travis a set of access permissions, you can select which repositories should be built.

> Image

From there on a build is triggered whenever a commit is made. Though Travis is able to somehow build the code, you usually will want to add a file named .travis.yml to the root of each of the selected repositories. This YAML format text file specifies how you want your project to be built.

A minimal `.travis.yml` for a Java project can be as short as:

    language: java

as long as you use a common build system such as Gradle, Maven or Ant. A slightly longer `.travis.yml` might look like this:

    jdk:
      - openjdk6
    script:
      mvn verify
    after_success:
      - chmod a+x deploy.sh
      - ./deploy.sh
    after_failure:
      - cat com.codeaffine.module-a/target/surefire-reports/*.txt
      - cat com.codeaffine.module-b/target/surefire-reports/*.txt

Each build runs in its own virtual machine image that can be customized with additional packages, users, environment settings and so on. After a build is done, the virtual machine image is reset. This ensures that there is a clean and consistent environment for each build. However, there is another consequence to this: All build output that you want to keep for later use must be saved somewhere else.

## Deployment

Since Travis is meant to build GitHub projects, it integrates well with GitHub Releases. With a few extra lines in the `.travis.yml`, arbitrary files can be uploaded to GitHub Releases. But this is just one deployment option among many – see the deployment guide for a full list of out of the box supported providers. If build artifacts should be sent somewhere else, you can always hook into the after_success event. Like shown in the example above, the deploy.sh script could push the build artifacts to a repository, e.g. under the gh-pages branch.

What is kept forever though is everything that is written to the console during the build. If a build fails, you may want to cat error logs or test reports to the console to preserve them like shown in the above example. That might help you to diagnose the failure.

## Pull Requests

Travis not only builds every commit that is made by repository collaborators but also takes care of Pull Requests. Every commit in the Pull Request triggers a build that – once it is done – leaves a comment in the Pull Request discussion.

 > Image

## Build Status

By default, email notifications are sent if a build was broken. However, the notification policy is configureable. Recipients, occasions (success or failure) and channels (email, IRC, Campfire, webhooks, ect.) can be specified in the `.travis.yml` file.

To publish the build status, for example on the project’s home page, you can embed a link to an image that indicates **success** or **failure**.

