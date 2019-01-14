# Adding Images to Lessons

**TL;DR**: Adding images is good.

We have to upload them to S3. We link these assets from outside of GitHub
because Learn can't see the image files that are in the lesson repo (despite
GitHub being able to render them). Also, be aware that organizing images in a
subdirectory in the repo might change the way the lesson is perceived in Learn
(i.e. as a lab or a README). Read further for more detail.

1. Credentials
1. Hosting
1. Learn inference of lesson type

<a name="creds"></a>

## Credentials

You will need S3 credentials.

If you are not in the Curriculum team and do not have access to the
credentials, please put your images into an archive (`zip`, `tar.gz`, etc.).
The curriculum team will upload your archive for you into the appropriate place
and return the S3 URL(s).


We use [Cyberduck](https://cyberduck.io/) as a transfer program.

You need to create a connection to Amazon S3 using the credentials.

Via Cyberduck you'll be able to create folders / subfolders / etc. There aren't
any hard and fast rules here. Try to honor a sensible folder organization
scheme.

<a name="hosting"></a>

## Hosting

You need to host the images on S3. While GitHub's preview view will find and
locate local images, Learn **does not** make this same inference.

You need to upload the image **and** we recommend you link it with an `<img>`
tag. While GitHub markdown certainly supports remote linking, an `<img>` tag
affords the ability to size the asset, etc.

<a name="type-inference"></a>

## Type Inference

Learn has some non-intuitive logic for guessing whether a given repo is a
lesson or a lab. The mere presence of a subdirectory (say `images/`) will cause
Learn to infer that a repo is **not** a Codealong or a README but is an
RSpec-driven lab.
