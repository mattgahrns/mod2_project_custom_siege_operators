# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sight.create(name: "Iron Sights")
Sight.create(name: "Red Dot Sight")
Sight.create(name: "Holographic Sight")
Sight.create(name: "Reflex Sight")
Sight.create(name: "ACOG Sight")

Barrel.create(name: "Suppressor")
Barrel.create(name: "Flash Hider")
Barrel.create(name: "Compensator")
Barrel.create(name: "Muzzle Break")
Barrel.create(name: "Long Barrel")
Barrel.create(name: "None")

Grip.create(name: "Vertical Grip")
Grip.create(name: "Angled Grip")
Grip.create(name: "None")

Utility.create(name: "Breach Charges", attacker: true)
Utility.create(name: "Frag Grenades", attacker: true)
Utility.create(name: "Smoke Grenades", attacker: true)
Utility.create(name: "Stun Grenades", attacker: true)
Utility.create(name: "Claymore", attacker: true)

Utility.create(name: "Barbed Wire", attacker: false)
Utility.create(name: "Deployable Shield", attacker: false)
Utility.create(name: "Nitro Cell", attacker: false)
Utility.create(name: "Impact Grenades", attacker: false)
Utility.create(name: "Bulletproof Camera", attacker: false)

