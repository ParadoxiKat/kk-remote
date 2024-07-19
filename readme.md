## Kruise Kontrol for Factorio Access (aka Kruise Kontrol Remote)

For now this is a readme for developers.

In Factorio Access we need to be able to invoke KK.  Right now we do that with
the mouse.  That's incredibly, horribly flaky both in terms of getting it to be
precise.  This is a fork of Kruise Kontrol Updated (found
[here](https://mods.factorio.com/mod/Kruise_Kontrol_Updated)), not the original
by Clonan.  We add a remote API for Factorio Access, which also happens to be
generally useful, as this basically makes the mod a library.

Note that we cannot apply stylua until or unless we decide not to go upstream. I
(ahicks) cannot find the author for contact and there is no repo against which
we may make a PR.

Steps to test:

- Get rid of the kk zip in the mods folder.
- Clone this repo to Kruise_Kontrol_Updated under the mods folder.  This is case
  sensitive (for the blind, first letters capitalized).
- After that just start things and this fork replaces.

We'll handle packaging later.