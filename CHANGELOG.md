# Changelog

## 0.3 (4/23/2014)

- Preserve tags when attributes hash is set
- Remove ability to specify automatic/default/override attributes (these are for recipes!)
- Preserve automatic/default/override attributes when modifying nodes (don't overwrite what recipes wrote)
- @doubt72 new Cheffish::RecipeDSL.stop_local_servers method to stop all local servers after running a recipe

## 0.2.2 (4/12/2014)

- make sure private keys have the right mode (not group or world-readable)

## 0.2.1 (4/11/2014)

- fix missing require
