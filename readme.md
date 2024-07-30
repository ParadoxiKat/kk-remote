# Kruise Kontrol Remote

This is a fork of [EliteHunter's fork](https://mods.factorio.com/mod/Kruise_Kontrol_Updated) of [Klonan's Kruise Kontrol](https://mods.factorio.com/mod/Kruise_Kontrol), adding a remote API matching the needs of [Factorio Access](https://mods.factorio.com/mod/FactorioAccess).  Full docs for this API are maintained in script/remote.lua.  It allows performing the same actions as one might with the mouse by providing an API to emulate `ctrl+alt+right click`. Put more simply, this is Kruise Kontrol plus you can use it as a library.  We expect to extend the remote API, fix bugs, and potentially add new features as development continues.

## Wait, What

So, as some motivation and background: Factorio Access is a mod that lets blind players play the game.  See, for example, [this demo video](https://www.youtube.com/watch?v=QW2-ujG9PSE) for how that is done.  But one of the things that's hard to make efficient is activities such as manual ghost building and deconstruction. For a while, we worked around this with the mouse using a custom launcher to trigger EliteHunter's fork, but that was always fragile.

Thus this mod, which can be driven additionally by the aforementioned remote API.  If you want something that can automate the character doing stuff via remote API, this is where you likely want to be.  And if you need it to do more, this is likely where you want to send the PR.  While not all Factorio Access users use Kruise Kontrol, 90%+ do, and so this will be maintained as long as Factorio Access is.  It might as well officially be a part of the main mod, in other words, to our knowledge, this is the only "active" fork and we are able to offer some weak guarantee of long-term upkeep.
