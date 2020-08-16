import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ArtifactBrain extends ChangeNotifier {

  List<Artifact> _currentArtifact = [
    Artifact(
      name: 'Empty',
      artIdNum: 0,
      acronym: '',
      maxLevel: 0,
      tier: '',
      description1: '',
      description2: '',
      builds: '',
      bonuses: '',
      image: AssetImage('lib/assets/images/artifacts/blank.png'),
    ),
  ];

  List<Artifact> _artifact = [
    Artifact(
      name: 'Empty',
      artIdNum: 0,
      acronym: '',
      maxLevel: 0,
      tier: '',
      description1: '',
      description2: '',
      builds: 'ALL',
      bonuses: '',
      image: AssetImage('lib/assets/images/artifacts/blank.png'),
    ),

    Artifact(
      name: 'Book of Shadows',
      artIdNum: 1001,
      acronym: 'BoS',
      maxLevel: 0,
      tier: 'S',
      description1: 'From the unexplored area of the realm, this book contains only the most malicious and spiteful magic',
      description2: 'The Prestige Relic bonus increases the amount of relics gained when you prestige',
      builds: 'ALL',
      bonuses: 'Relic Multiplier',
      image: AssetImage('lib/assets/images/artifacts/BookOfShadows.png'),
    ),
    Artifact(
      name: 'Stones of the Valrunes',
      artIdNum: 1002,
      acronym: 'SotV',
      maxLevel: 0,
      tier: 'S',
      description1: 'This stone was the prized possession of an ancient tribe long ago',
      description2: 'The Gold Per Activated Skill bonus increases your all gold bonus once for each enabled skill, up to a maximum of 4 enabled active skill',
      builds: 'ALL',
      bonuses: 'Gold Per Active Skill',
      image: AssetImage('lib/assets/images/artifacts/StoneOfValrune.png'),
    ),
    Artifact(
        name: 'Flute of the Soloist',
        artIdNum: 1003,
        acronym: 'FotS',
        maxLevel: 0,
        tier: 'S',
        description1: 'Everyone has heard the tales of how the Soloist\'s music saved the tribe, yet there is nobody who can remember the whole song. But they each hum their favorite parts when they enter battle',
        description2: 'The Damage Per Activated Skill bonus multiplies your all damage bonus once for each enabled active skill, up to a maximum of 4 enabled active skills',
        builds: 'ALL',
        bonuses: 'Damage Per Activated Skill',
        image: AssetImage('lib/assets/images/artifacts/FluteOfTheSoloist.png')
    ),
    Artifact(
        name: 'Heart of Storms',
        artIdNum: 1004,
        acronym: 'HoS',
        maxLevel: 0,
        tier: 'S',
        description1: 'A legendary object harvested from the absolute center of the mother of all storms',
        description2: 'The Pet Damage Bonuses bonus increases the effectiveness of your active and passive pet damage bonuses listed in the pets tab',
        builds: 'ALL',
        bonuses: 'All Legacy Damage Pet Boost',
        image: AssetImage('lib/assets/images/artifacts/HeartOfStorms.png')
    ),
    Artifact(
        name: 'Earrings of Portara',
        artIdNum: 1005,
        acronym: 'EoP',
        maxLevel: 0,
        tier: 'S',
        description1: 'Legend has it that these earrings belonged to a supreme being before it mysteriously fell from the heavens many eons ago',
        description2: 'The Titan Slayer Damage bonus increases the strength of your All Damage and Critical Damage',
        builds: 'ALL',
        bonuses: 'Titan Slayer Damage',
        image:AssetImage('lib/assets/images/artifacts/EarringsOfPortara.png')
    ),
    Artifact(
        name: 'Ring of Calisto',
        artIdNum: 1006,
        acronym: 'RoC',
        maxLevel: 0,
        tier: 'S',
        description1: 'Worn by the great Huntress bear, it is said that the Gods had given it to her. The ring is the treasure of her people and can only be worn by the worthy',
        description2: 'The All Equipment Boost bonus increases the strength of your multiplicative equipment bonuses',
        builds: 'ALL',
        bonuses: 'All Equipment Boost',
        image: AssetImage('lib/assets/images/artifacts/RingOfCalisto.png')
    ),
    Artifact(
        name: 'Invader\'s Gjalarhorn',
        artIdNum: 1007,
        acronym: 'IG',
        maxLevel: 0,
        tier: 'S',
        description1: 'A sacred horn used by nomadic invaders in battle. The rallying sounds of this horn increases an army\'s effectiveness',
        description2: 'The All Active Skill Effect bonus increases the primary effect strength of each of your six active skills',
        builds: 'ALL',
        bonuses: 'All Active Skill Effect',
        image:AssetImage('lib/assets/images/artifacts/Invader\'sGjalarhorn.png')
    ),
    Artifact(
        name: 'Boots of Hermes',
        artIdNum: 1008,
        acronym: 'BoH',
        maxLevel: 40,
        tier: 'S',
        description1: 'The wearer of these shoes is said to have the ability to travel between worlds as it\'s original wearer did',
        description2: 'The Portar Chance bonus increases the chance to spawn a Portar in place of a boss Titan',
        builds: 'ALL',
        bonuses: 'Portar Chance',
        image: AssetImage('lib/assets/images/artifacts/BootsOfHermes.png')
    ),
    Artifact(
        name:'Charged Card',
        artIdNum: 1101,
        acronym: 'Cca',
        maxLevel: 0,
        tier: 'A',
        description1: 'A legendary mercenary traveled with this card, recording the promises of each conquered foe vowing to seek revenge - a long trail of unsettled debts',
        description2: 'The Gold Per Total Card Levels bonus increases your all gold bonus based on the number of total raid card levels you own',
        builds:"ALL",
        bonuses: 'Gold Per Total Card Levels',
        image: AssetImage('lib/assets/images/artifacts/ChargedCard.png')
    ),
    Artifact(
        name:'Book of Prophecy',
        artIdNum: 1102,
        acronym: 'BoP',
        maxLevel: 0,
        tier: 'A',
        description1: 'Knowledge from all lands is written within. The words inside shift and change with each passing day',
        description2: 'The All Gold bonus increases the amount of gold earned from all gold sources',
        builds: "ALL",
        bonuses: 'All Gold',
        image: AssetImage('lib/assets/images/artifacts/BookOfProphecy.png')
    ),
    Artifact(
        name: 'Khrysos Bowl',
        artIdNum: 1103,
        acronym: 'KB',
        maxLevel: 0,
        tier: 'A',
        description1: 'It is said that any small rocks and pebbles placed in this mystical bowl is turned into golden nuggets',
        description2: 'The Stealth Gold bonus increases the strength of your All Gold and Inactive Gold multipliers',
        builds: 'ALL',
        bonuses: 'Stealth Gold',
        image:AssetImage('lib/assets/images/artifacts/KhrysosBowl.png')
    ),
    Artifact(
        name: 'The Bronzed Compass',
        artIdNum: 1104,
        acronym: 'TBC',
        maxLevel: 0,
        tier: 'A',
        description1: 'A compass that doesn\'t lead its holder anywhere. Instead, whatever they are searching for finds them, arriving right at their feet',
        description2: 'The Specialty Gold Bonus increases your Fairy Gold and Heart of Midas Gold bonuses',
        builds: 'ALL',
        bonuses: 'Specialty Gold',
        image:AssetImage('lib/assets/images/artifacts/TheBronzeCompass.png')
    ),
    Artifact(
        name: 'Evergrowing Stack',
        artIdNum: 1105,
        acronym: 'ES',
        maxLevel: 0,
        tier: 'A',
        description1: 'At the end of each victorious battle, a great warrior would add another card to this pile. As the stack grew higher, more powerful challengers arrived. After each one, another card on the pile',
        description2: 'The Damage Per Total Card Levels bonus increases your all damage bonus based on the number of total raid card levels you own',
        builds: 'ALL',
        bonuses: 'Damage Per Total Card Levels',
        image:AssetImage('lib/assets/images/artifacts/EverGrowingStack.png')
    ),
    Artifact(
        name: 'Heavenly Sword',
        artIdNum: 1106,
        acronym: 'HSw',
        maxLevel: 0,
        tier: 'A',
        description1: 'Guarded deep underwater, this legendary sword is destined to be wielded only by the chosen hero',
        description2: 'The All Artifact Damage bonus increases the additive artifact damage contributed by each of your individual artifacts',
        builds: 'ALL',
        bonuses: 'All Artifact Damage',
        image:AssetImage('lib/assets/images/artifacts/HeavenlySword.png')
    ),

    Artifact(
        name: 'Divine Retribution',
        artIdNum: 1107,
        acronym: 'DR',
        maxLevel: 0,
        tier: 'A',
        description1: 'The flames of this sword are fueled by the rage of its user',
        description2: 'The All Damage bonus increases the amount of damage done by all damage sources',
        builds: 'ALL',
        bonuses: 'All Damage',
        image:AssetImage('lib/assets/images/artifacts/DivineRetribution.png')
    ),
    Artifact(
        name: 'Drunken Hammer',
        artIdNum: 1108,
        acronym: 'DH',
        maxLevel: 0,
        tier: 'A',
        description1: 'The trusted weapon of Grog Boozebeard. It allows its wielder to deliver untold levels of punishment to their enemies by sacrificing all accuracy and balance',
        description2: 'The Tap Damage bonus increases the damage done by your Sword Master, Pets, Heavenly Strikes, and Shadow Clone',
        builds: 'ALL',
        bonuses: 'Tap Damage',
        image:AssetImage('lib/assets/images/artifacts/DrunkenHammer.png')
    ),
    Artifact(
        name: 'Samosek Sword',
        artIdNum: 1109,
        acronym: 'SS',
        maxLevel: 0,
        tier: 'A',
        description1: 'This magical sword unlocks the wielder\'s inner rage and strength. In battle, it is as if the sword swings itself',
        description2: 'The Sword Attack Damage bonus increases the amount of damage dealt by your Sword Master, Heavenly Strikes, and Shadow Clone',
        builds: 'ALL',
        bonuses: 'Sword Attack Damage',
        image:AssetImage('lib/assets/images/artifacts/SamosekSword.png')
    ),
    Artifact(
        name: 'The Retaliator',
        artIdNum: 1110,
        acronym: 'Ret',
        maxLevel: 0,
        tier: 'A',
        description1: 'Forged by the gods, this sword has the ability to protect its wielder, with the power to counter all enemies, the sword targets the weakest point of its target',
        description2: 'The Critical Damage bonus increases the amount of damage done by Sword Master critical hits, as well as your base Pet and Shadow Clone damage',
        builds: 'ALL',
        bonuses: 'Critical Damage',
        image:AssetImage('lib/assets/images/artifacts/TheRetaliator.png')
    ),
    Artifact(
        name: 'Stryfe\'s Peace',
        artIdNum: 1111,
        acronym: 'SP',
        maxLevel: 0,
        tier: 'A',
        description1: 'A sword from a long lost prophecy: \"Order in the chaos, calm in the storm, peace in the strike.\"',
        description2: 'The Fundamental Damage bonus increases the strength of your tap damage and all hero damage',
        builds: 'ALL',
        bonuses: 'Fundamental Damage',
        image:AssetImage('lib/assets/images/artifacts/Stryfe\'sPeace.png')
    ),
    Artifact(
        name: 'Hero\'s Blade',
        artIdNum: 1112,
        acronym: 'HB',
        maxLevel: 0,
        tier: 'A',
        description1: 'A sword that has been witness to the victories and deaths of many heroes across countless battles',
        description2: 'The All Hero Damage bonus increases the amount of damage done by each of your heroes',
        builds: 'ALL',
        bonuses: 'All Hero Damage',
        image:AssetImage('lib/assets/images/artifacts/Hero\'sBlade.png')
    ),
    Artifact(
        name: 'The Sword of Storms',
        artIdNum: 1113,
        acronym: 'TSoS',
        maxLevel: 0,
        tier: 'A',
        description1: 'A fabled sword hidden deep within a cavern in the Nyx forest, bathed in moonlight',
        description2: 'The Melee Hero Damage bonus increases the amount of damage done by your melee type heroes',
        builds: 'ALL',
        bonuses: 'Melee Hero Damage',
        image:AssetImage('lib/assets/images/artifacts/TheSwordOfStorms.png')
    ),
    Artifact(
        name: 'Furies Bow',
        artIdNum: 1114,
        acronym: 'FB',
        maxLevel: 0,
        tier: 'A',
        description1: 'Dropped and forgotten in the battlefield by a fallen Fury, it still has remnants of her power',
        description2: 'The Ranged Hero Damage bonus increases the amount of damage done by your ranged type heroes',
        builds: 'ALL',
        bonuses: 'Ranged Hero Damage',
        image:AssetImage('lib/assets/images/artifacts/FuriesBow.png')
    ),
    Artifact(
        name: 'Charm of the Ancient',
        artIdNum: 1115,
        acronym: 'CotA',
        maxLevel: 0,
        tier: 'A',
        description1: 'While the Old One was sleeping, this charm was created from a piece of his body in an attempt to harness his power',
        description2: 'The Spell Hero Damage bonus increases the amount of damage done by your spell type heroes',
        builds: 'ALL',
        bonuses: 'Spell Hero Damage',
        image:AssetImage('lib/assets/images/artifacts/CharmOfTheAncient.png')
    ),
    Artifact(
        name: 'Tiny Titan Tree',
        artIdNum: 1116,
        acronym: 'TTT',
        maxLevel: 0,
        tier: 'A',
        description1: 'A tree harvested by the heroes to help defeat Titans by giving those who stand by its greater strength in battle',
        description2: 'The Ground Hero Damage bonus increases the damage done by your ground heroes',
        builds: 'ALL',
        bonuses: 'Ground Hero Damage',
        image:AssetImage('lib/assets/images/artifacts/TinyTitanTree.png')
    ),
    Artifact(
        name: 'Helm of Hermes',
        artIdNum: 1117,
        acronym: 'HoH',
        maxLevel: 0,
        tier: 'A',
        description1: 'nly those found worthy are awarded with this helmet to protect the land, granting them the ability to fly',
        description2: 'The Flying Hero Damage bonus increases the damage done by your flying heroes',
        builds: 'ALL',
        bonuses: 'Flying Hero Damage',
        image:AssetImage('lib/assets/images/artifacts/HelmOfHermes.png')
    ),
    Artifact(
        name: 'O\'Ryan\'s Charm',
        artIdNum: 1118,
        acronym: 'ORC',
        maxLevel: 0,
        tier: 'A',
        description1: 'Remnants of a fallen star, it rouses the inner strength of all those around',
        description2: 'The Companion Damage bonus increases the damage of your companions: your Pets, Clan Ship, and Shadow Clone',
        builds: 'ALL',
        bonuses: 'Companion Damage',
        image:AssetImage('lib/assets/images/artifacts/O\'Ryan\'sCharm.png')
    ),
    Artifact(
        name: 'Apollo Orb',
        artIdNum: 1119,
        acronym: 'AO',
        maxLevel: 0,
        tier: 'A',
        description1: 'Created from the essence of a falling star. Some say this orb sines brighter to guide the way when its keepers are lost',
        description2: 'The Legacy Pet Gold Bonuses bonus increase the effectiveness of your active and passive pet gold bonuses for legacy listed in the pets tab',
        builds: 'ALL',
        bonuses: 'All Gold',
        image:AssetImage('lib/assets/images/artifacts/ApolloOrb.png')
    ),
    Artifact(
        name: 'Strange Fruit',
        artIdNum: 1120,
        acronym: 'SF',
        maxLevel: 0,
        tier: 'A',
        description1: 'An extremely delicious fruit that regrows itself after each bite. It cannot be planted as the seeds are forever trapped inside the regenerating flesh',
        description2: 'The Exotic Pet Damage bonus increases the effectiveness of your active and passive pet damage bonuses for exotic pets listed in the pets tab',
        builds: 'ALL',
        bonuses: 'Exotic Pet Damage Bonuses',
        image:AssetImage('lib/assets/images/artifacts/StrangeFruit.png')
    ),
    Artifact(
        name: 'Hades Orb',
        artIdNum: 1121,
        acronym: 'Hor',
        maxLevel: 0,
        tier: 'A',
        description1: 'A long forgotten trinket forged in the depths of a volcano. This orb gets heavier the closer it is to evil',
        description2: 'The Exotic Pet Gold bonus increase the effectiveness of your active and passive gold bonuses for exotic pets listed in the pets tab',
        builds: 'ALL',
        bonuses: 'Exotic Pet Gold Bonuses',
        image:AssetImage('lib/assets/images/artifacts/HadesOrb.png')
    ),
    Artifact(
        name: 'Avian Feather',
        artIdNum: 1122,
        acronym: 'AF',
        maxLevel: 0,
        tier: 'A',
        description1: 'This sacred feather once belonged to a mysterious clan of assassins. They used this feather to calm their minds into a statue of rest and increase their reaction instincts',
        description2: 'The Weapon Expert bonus increases the strength of your Sword Boost and Heavenly Strike Damage multipliers',
        builds: 'ALL',
        bonuses: 'Weapon Expert',
        image:AssetImage('lib/assets/images/artifacts/AvianFeather.png')
    ),
    Artifact(
        name: 'Helhein Skull',
        artIdNum: 1123,
        acronym: 'HSk',
        maxLevel: 0,
        tier: 'A',
        description1: 'Little is known about this dark artifact. Some say its origins are from the dark depths underworld',
        description2: 'The Boss Damage bonus increases the amount of damage dealt to boss Titans',
        builds: 'ALL',
        bonuses: 'Boss Damage',
        image:AssetImage('lib/assets/images/artifacts/HelheimSkull.png')
    ),
    Artifact(
        name: 'Oath\'s Burden',
        artIdNum: 1124,
        acronym: 'OB',
        maxLevel: 0,
        tier: 'A',
        description1: 'Those who aren\'t crushed under the weight of oath become strong enough to carry it',
        description2: 'The Knight Boost bonus increases the strength of your Tap Damage, Pet Damage, and Fire Sword Damage multipliers',
        builds: 'ALL',
        bonuses: 'Knight Boost',
        image:AssetImage('lib/assets/images/artifacts/Oath\'sBurden.png')
    ),
    Artifact(
        name: 'Crown of the Constellation',
        artIdNum: 1125,
        acronym: 'CotC',
        maxLevel: 0,
        tier: 'A',
        description1: 'An inscription on the inside of the crown reads \"They will follow you as if you were the North Star.\"',
        description2: 'The Warlord Boost bonus increases the strength of your All Hero damage, Clan Ship Damage, and War Cry Damage multipliers',
        builds: 'ALL',
        bonuses: 'Warlord Boost',
        image:AssetImage('lib/assets/images/artifacts/CrownOfTheConstellation.png')
    ),
    Artifact(
        name: 'Titania\'s Sceptre',
        artIdNum: 1126,
        acronym: 'TSc',
        maxLevel: 0,
        tier: 'A',
        description1: 'The forgetful fairy queen\'s domain is littered with impossibly powerful objects such as this - she simply regrows new ones to replace the lost',
        description2: 'The Sorcerer Boost bonus increases the strength of your Heavenly Strike, Hand of Midas, and Shadow Clone multipliers',
        builds: 'ALL',
        bonuses: 'Sorcerer Boost',
        image:AssetImage('lib/assets/images/artifacts/Titania\'sSceptre.png')
    ),
    Artifact(
        name: 'Blade of Damocles',
        artIdNum: 1127,
        acronym: 'BoD',
        maxLevel: 0,
        tier: 'A',
        description1: 'Those who pick up this blade are blessed with tremendous power, but cursed with the mark of the Titans',
        description2: 'The Sword Boost bonus increases the effectiveness of your sword equipment types',
        builds: 'ALL',
        bonuses: 'Sword Primary Boost',
        image:AssetImage('lib/assets/images/artifacts/BladeOfDamocles.png')
    ),
    Artifact(
        name: 'Helmet of Madness',
        artIdNum: 1128,
        acronym: 'HoM',
        maxLevel: 0,
        tier: 'A',
        description1: 'A cursed helmet forged in the darkest pits of the realm. It grants power beyond compare at the price of the wearer\'s sanity',
        description2: 'The Helmet Boost bonus increases the effectiveness of your helmet equipment types',
        builds: 'ALL',
        bonuses: 'Helmet Primary Boost',
        image:AssetImage('lib/assets/images/artifacts/HelmetOfMadness.png')
    ),
    Artifact(
        name: 'Titanium Plating',
        artIdNum: 1129,
        acronym: 'TP',
        maxLevel: 0,
        tier: 'A',
        description1: 'Once belonging to a great Titan boss, this plating has fallen off during a great fight conquest',
        description2: 'The Armor Boost bonus increases the effectiveness of your armor equipment types',
        builds: 'ALL',
        bonuses: 'Armor Primary Boost',
        image:AssetImage('lib/assets/images/artifacts/TitaniumPlating.png')
    ),
    Artifact(
        name: 'Moonlight Bracelet',
        artIdNum: 1130,
        acronym: 'MB',
        maxLevel: 0,
        tier: 'A',
        description1: 'The beads on this bracelet sway and sell, responding like the tide to the moon',
        description2: 'The Aura Primary Boost bonus increases the effectiveness of your aura equipment types',
        builds: 'ALL',
        bonuses: 'Aura Primary Boost',
        image:AssetImage('lib/assets/images/artifacts/MoonlightBracelet.png')
    ),
    Artifact(
        name: 'Amethyst Staff',
        artIdNum: 1131,
        acronym: 'AS',
        maxLevel: 0,
        tier: 'A',
        description1: 'A magical stone found in the mountains of a hidden city. It was reforged into a mighty staff which endows its user with cast strength',
        description2: 'The Slash Boost bonus increases the effectiveness of your slash equipment types',
        builds: 'ALL',
        bonuses: 'Slash Primary Boost',
        image:AssetImage('lib/assets/images/artifacts/AmethystStaff.png')
    ),
    Artifact(
        name: 'Sword of the Royals',
        artIdNum: 1132,
        acronym: 'SotR',
        maxLevel: 0,
        tier: 'A',
        description1: 'A gift from a determined companion. The Cup holds bounty in times of peace, The Coin builds empires, The Staff holds up the weary and the wise. But in this time of struggle, it is The Sword that cares the way forward',
        description2: 'The Duelist Boost bonus increases the strength of your Sword Boost and Melee Hero Damage multipliers',
        builds: 'ALL',
        bonuses: 'Duelist Boost',
        image:AssetImage('lib/assets/images/artifacts/SwordOfTheRoyals.png')
    ),
    Artifact(
        name: 'Spearit\'s Vigil',
        artIdNum: 1133,
        acronym: 'SV',
        maxLevel: 0,
        tier: 'A',
        description1: 'A gift from a powerful companion. The mask is light to hold, it is nearly weightless. But it carries the will of the one who has worn it: Protect. Defend. Redeem',
        description2: 'The Aviator Boost bonus increases the strength of your Helmet Bonus and Flying Hero Damage multipliers',
        builds: 'ALL',
        bonuses: 'Aviator Boost',
        image:AssetImage('lib/assets/images/artifacts/Spearit\'sVirgil.png')
    ),
    Artifact(
        name: 'The Cobalt Plate',
        artIdNum: 1134,
        acronym: 'TCP',
        maxLevel: 0,
        tier: 'A',
        description1: 'A gift from a stalwart companion. Though the armor itself is pristine, it has seen countless duels. The armor that guards the body is the last line of defence - but no oppontent has gotten that far',
        description2: 'The Gladiator Boost bonus increases the strength of your Armor Boost and Ground Hero Damage multipliers',
        builds: 'ALL',
        bonuses: 'Gladiator Boost',
        image:AssetImage('lib/assets/images/artifacts/TheCobaltPlate.png')
    ),
    Artifact(
        name: 'Sigils of Judgement',
        artIdNum: 1135,
        acronym: 'SoJ',
        maxLevel: 0,
        tier: 'A',
        description1: 'A gift from a primordial companion. These seals were constructed as a punishment for crimes not yet committed. Now they restore balance, amplifying the power they once restrained',
        description2: 'The Mystic Boost bonus increases the strength of your Aura Boost and Spell Hero Damage Multipliers',
        builds: 'ALL',
        bonuses: 'Mystic Boost',
        image:AssetImage('lib/assets/images/artifacts/SigilsOfJudgment.png')
    ),
    Artifact(
        name: 'Foliage of the Keeper',
        artIdNum: 1136,
        acronym: 'FotK',
        maxLevel: 0,
        tier: 'A',
        description1: 'A gift from a selfless companion. Each leaf comes from a different tree - the remaining might elms of the Garden of Eden. Each one holds a story, and each story holds their strength',
        description2: 'The Marksman Boost bonus increases the strength of your Slash Boost and Ranged Hero Damage multipliers',
        builds: 'ALL',
        bonuses: 'Marksman Boost',
        image:AssetImage('lib/assets/images/artifacts/FolaigeOfTheKeeper.png')
    ),
    Artifact(
        name: 'Laborer\'s Pendant',
        artIdNum: 1137,
        acronym: 'LP',
        maxLevel: 0,
        tier: 'A',
        description1: 'Legends say that a powerful, nigh-immortal being once passed this on to a suffering peasant',
        description2: 'The Hand of Midas Gold bonus increases the amount of tap and pot gold earned while Hand of Midas is active',
        builds: 'ALL',
        bonuses: 'Hand of Midas Gold',
        image:AssetImage('lib/assets/images/artifacts/Laborer\'sPendant.png')
    ),
    Artifact(
        name: 'Bringer of Ragnarok',
        artIdNum: 1138,
        acronym: 'BoR',
        maxLevel: 0,
        tier: 'A',
        description1: 'The appearance of this mighty weapon signals the twilight of a great battle with grave consequences',
        description2: 'The Fire Sword Damage bonus increases the damage bonus given by Fire Sword',
        builds: 'ALL',
        bonuses: 'Fire Sword Damage',
        image:AssetImage('lib/assets/images/artifacts/BringerOfRagnarok.png')
    ),
    Artifact(
        name: 'Parchment of Foresight',
        artIdNum: 1139,
        acronym: 'PoF',
        maxLevel: 0,
        tier: 'A',
        description1: 'Stolen from the Book of Prophecy, this parchment reveals the immediate future and consequences of the wielder\'s actions',
        description2: 'The War Cry Damage bonus increases the damage bonus given by War Cry',
        builds: 'ALL',
        bonuses: 'War Cry Damage',
        image:AssetImage('lib/assets/images/artifacts/ParchmentOfForesight.png')
    ),
    Artifact(
        name: 'Unbound Gauntlet',
        artIdNum: 1140,
        acronym: 'UG',
        maxLevel: 40,
        tier: 'A',
        description1: 'Crossing the bearer of this gauntlet will cost the Titans everything',
        description2: 'The Snap Spawn Chance bonus increases the chance to spawn Snap in place of a basic Titan',
        builds: 'ALL',
        bonuses: 'Snap Chance',
        image:AssetImage('lib/assets/images/artifacts/UnboundGauntlet.png')
    ),
    Artifact(
        name: 'Lucky Foot of Al-Mi-Raj',
        artIdNum: 1141,
        acronym: 'LF',
        maxLevel: 40,
        tier: 'A',
        description1: 'This foot once belonged to a mystical rabbit and those that possess it will have unimaginable luck',
        description2: 'The All Probabilities bonus increases the value of each probability bonus listed in the stats panel',
        builds: 'ALL',
        bonuses: 'All Probability Boost',
        image:AssetImage('lib/assets/images/artifacts/LuckyFootOfAl-mi\'Raj.png')
    ),
    Artifact(
        name: 'Morgelai Sword',
        artIdNum: 1142,
        acronym: 'MSw',
        maxLevel: 50,
        tier: 'A',
        description1: 'A gift from a king, a sword with a never sharpened blade. The king never swung it, yet it won him countless wars',
        description2: 'The Hero Weapon Boost bonus increases the damage bonus granted by individual hero weapons',
        builds: 'ALL',
        bonuses: 'Hero Weapon Boost',
        image:AssetImage('lib/assets/images/artifacts/MorgelaiSword.png')
    ),
    Artifact(
        name: 'Ringing Stone',
        artIdNum: 1143,
        acronym: 'RS',
        maxLevel: 50,
        tier: 'A',
        description1: 'Unlike the harsh scrape of metal against a common whetstone, honing a weapon on this stone emits a beautiful ringing, like a prescient cheer of victory',
        description2: 'The Hero Weapon Set Boost bonus increases the damage bonus granted by hero weapon sets',
        builds: 'ALL',
        bonuses: 'Hero Weapon Set Boost',
        image:AssetImage('lib/assets/images/artifacts/RingingStone.png')
    ),
    Artifact(
        name: 'Quill of Scrolls',
        artIdNum: 1144,
        acronym: 'QoS',
        maxLevel: 50,
        tier: 'A',
        description1: 'The ink records history while the writer creates it; As the pen marks the pages, the bearer shapes the ages',
        description2: 'The Hero Scroll Boost bonus increases the Hero Skill bonus granted by individual hero scrolls',
        builds: 'ALL',
        bonuses: 'Hero Scroll Boost',
        image:AssetImage('lib/assets/images/artifacts/QuillOfScrolls.png')
    ),
    Artifact(
        name: 'Old King\'s Stamp',
        artIdNum: 1145,
        acronym: 'OKS',
        maxLevel: 50,
        tier: 'A',
        description1: 'Anybody in the kingdom would recognize this seal - from the grim letter that revealed the Titans had risen. Or from the hopeful one that announced the Sword Master had returned',
        description2: 'The Hero Scroll Set bonus increases the Hero Skill bonus granted by hero scroll sets',
        builds: 'ALL',
        bonuses: 'Hero Scroll Set Boost',
        image:AssetImage('lib/assets/images/artifacts/OldKing\'sStamp.png')
    ),
    Artifact(
        name: 'The Magnifier',
        artIdNum: 1146,
        acronym: 'TM',
        maxLevel: 40,
        tier: 'A',
        description1: 'Anything that passes through this device is amplified: a whisper echos as a shout, a breath shakes the trees, power changes the world',
        description2: 'The Artifact Damage Bonuses bonus increases the strength of your multiplicative artifact damage bonuses(uncapped artifacts only)',
        builds: 'ALL',
        bonuses: 'Artifact Damage Bonuses',
        image:AssetImage('lib/assets/images/artifacts/TheMagnifier.png')
    ),
    Artifact(
        name: 'The Treasure of Fergus',
        artIdNum: 1147,
        acronym: 'ToF',
        maxLevel: 40,
        tier: 'A',
        description1: 'At the end of a rainbow there rested one brilliant coin, far more precious than any pot of gold',
        description2: 'The Artifact Gold Bonuses bonus increases the strength of your multiplicative artifact gold bonuses(uncapped artifacts only)',
        builds: 'ALL',
        bonuses: 'Artifact Gold Bonuses',
        image:AssetImage('lib/assets/images/artifacts/TheTreasureOfFergus.png')
    ),
    Artifact(
        name: 'The White Dwarf',
        artIdNum: 1148,
        acronym: 'TWD',
        maxLevel: 50,
        tier: 'A',
        description1: 'A hammer that is as heavy as its wielder is strong. Put all that you have into lifting it, the weight will do the rest',
        description2: 'The Damage Per Owned Artifact bonus multiplies your all damage bonus once for each artifact you own; salvaged artifacts do not count toward this bonus',
        builds: 'ALL',
        bonuses: 'Damage Per Owned Artifact',
        image:AssetImage('lib/assets/images/artifacts/TheWhiteDwarf.png')
    ),

//BTier
    Artifact(
        name: 'Chest of Contentment',
        artIdNum: 1201,
        acronym: 'CoC',
        maxLevel: 0,
        tier: 'B',
        description1: 'A box worn by time, it offers a great wealth and riches to those who can find it',
        description2: 'The Chesterson Gold bonus increases the amount of gold dropped by Chestersons and fairies, which can lead to increased splash and inactive gold earnings',
        builds: 'ALL',
        bonuses: 'Chesterson Gold',
        image:AssetImage('lib/assets/images/artifacts/ChestOfContentment.png')
    ),
    Artifact(
        name: 'Heroic Shield',
        artIdNum: 1202,
        acronym: 'HSh',
        maxLevel: 0,
        tier: 'B',
        description1: 'The mythical champion of Cobalt once carried this shield',
        description2: 'The Boss Gold bonus increases the amount of gold earned from boss Titans',
        builds: 'ALL',
        bonuses: 'Boss Gold',
        image:AssetImage('lib/assets/images/artifacts/HeroicShield.png')
    ),
    Artifact(
        name: 'Great Fay Medallion',
        artIdNum: 1203,
        acronym: 'GFM',
        maxLevel: 0,
        tier: 'B',
        description1: 'This medallion was created by the Great Fay of olde. Those who possess this medallion shall be blessed with riches from the Sacred Forest',
        description2: 'The Fairy Gold bonus increases the amount of gold dropped by fairies',
        builds: 'ALL',
        bonuses: 'Fairy Gold',
        image:AssetImage('lib/assets/images/artifacts/GreatFayMedallion.png')
    ),
    Artifact(
        name: 'Neko Sculpture',
        artIdNum: 1204,
        acronym: 'NS',
        maxLevel: 0,
        tier: 'B',
        description1: 'This little statue has passed from merchant to shopkeep to vendor but is never sold; each owner simply gives it away, having found such good fortune that money no longer matters to them',
        description2: 'The Heart of Midas Gold onus increases the amount of gold earned from your pets Heart of Midas skill',
        builds: 'ALL',
        bonuses: 'Heart of Midas Gold',
        image:AssetImage('lib/assets/images/artifacts/NekoSculpture.png')
    ),
    Artifact(
        name: 'Coin of Ebizu',
        artIdNum: 1205,
        acronym: 'CoE',
        maxLevel: 0,
        tier: 'B',
        description1: 'These coins were minted by the Gods of Wealth. Those who possess his coins will be blessed with an abundance of wealth',
        description2: 'The Multi-Spawn Gold bonus increases all Titan gold drops when multiple Titans spawn',
        builds: 'ALL',
        bonuses: 'Multi-Spawn Gold',
        image:AssetImage('lib/assets/images/artifacts/CoinsOfEbizu.png')
    ),
    Artifact(
        name: 'Fruit of Eden',
        artIdNum: 1206,
        acronym: 'FoE',
        maxLevel: 0,
        tier: 'B',
        description1: 'A delicious fruit found only in the Garden of Eden that mysteriously regenerates after every bite',
        description2: 'The Pet Damage bonus increases the damage done by Pets',
        builds: 'ALL',
        bonuses: 'Pet Damage',
        image:AssetImage('lib/assets/images/artifacts/FruitOfEden.png')
    ),
    Artifact(
        name: 'Influential Elixir',
        artIdNum: 1207,
        acronym: 'IF',
        maxLevel: 0,
        tier: 'B',
        description1: 'A secret potion whose recipe has long been forgotten. It increases the leadership and might of those brace enough to drink it',
        description2: 'The Clan Ship Damage bonus increases the amount of damage dealt by your Clan Ship',
        builds: 'ALL',
        bonuses: 'Clan Ship Damage',
        image:AssetImage('lib/assets/images/artifacts/InfluentialElixir.png')
    ),
    Artifact(
        name: 'Durendal Sword',
        artIdNum: 1208,
        acronym: 'DSw',
        maxLevel: 0,
        tier: 'B',
        description1: 'A legendary sword capable of cutting through giant boulders of stone with a single slash',
        description2: 'The Non-Boss Damage bonus increases the amount of damage done against non-boss Titans',
        builds: 'ALL',
        bonuses: 'Non-Boss Damage',
        image:AssetImage('lib/assets/images/artifacts/DurendalSword.png')
    ),
    Artifact(
        name: 'Fagin\'s Grip',
        artIdNum: 1209,
        acronym: 'FG',
        maxLevel: 0,
        tier: 'B',
        description1: 'This glove is best stored in a safe, secure place, far away from your purse or pockets',
        description2: 'The Rogue Boost bonus increases the strength of your Inactive Gold, Inactive Damage, and Deadly Strike multipliers',
        builds: 'ALL',
        bonuses: 'Rouge Boost',
        image:AssetImage('lib/assets/images/artifacts/Fagin\'sGrip.png')
    ),
    Artifact(
        name: 'Titan\'s Mask',
        artIdNum: 1210,
        acronym: 'TM',
        maxLevel: 0,
        tier: 'B',
        description1: 'This mask is said to grant its wearer the power of a Titan for a short period of time',
        description2: 'The Heavenly Strike Damage bonus increases the damage done by Heavenly Strikes',
        builds: 'ALL',
        bonuses: 'Heavenly Strike Damage',
        image:AssetImage('lib/assets/images/artifacts/Titan\'sMask.png')
    ),
    Artifact(
        name: 'Royal Toxin',
        artIdNum: 1211,
        acronym: 'RT',
        maxLevel: 0,
        tier: 'B',
        description1: 'The Most Royal of toxins created from the essence of Royal beings',
        description2: 'The Deadly Strike Damage bonus increases the damage bonus given by Deadly Strikes',
        builds: 'ALL',
        bonuses: 'Deadly Strike Damage',
        image:AssetImage('lib/assets/images/artifacts/RoyalToxin.png')
    ),
    Artifact(
        name: 'Elixir of Eden',
        artIdNum: 1212,
        acronym: 'EoE',
        maxLevel: 0,
        tier: 'B',
        description1: 'This elixir was created in the Garden of Eden to help its user bloom to their full potential',
        description2: 'The Shadow Clone Damage bonus increases the damage dealt by Shadow Clon',
        builds: 'ALL',
        bonuses: 'Shadow Clone Damage',
        image:AssetImage('lib/assets/images/artifacts/ElizerOfEden.png')
    ),
    Artifact(
        name: 'Hourglass of the Impatient',
        artIdNum: 1213,
        acronym: 'HotI',
        maxLevel: 40,
        tier: 'B',
        description1: 'Created by the keepers of time, the user wastes no time in unleashing powerful skills',
        description2: 'The All Active Skill Cooldown bonus increases the cooldown speed of each of your six active skills',
        builds: 'ALL',
        bonuses: 'Active Skill Cooldown Reduction',
        image:AssetImage('lib/assets/images/artifacts/HourglassOfTheImpatient.png')
    ),
    Artifact(
        name: 'Phantom Timepiece',
        artIdNum: 1214,
        acronym: 'PT',
        maxLevel: 30,
        tier: 'B',
        description1: 'Created in the vortex of time. Those who possess this will have the ability to extend time',
        description2: 'The All Active Skill Duration bonus increases the active duration of your six active skills',
        builds: 'ALL',
        bonuses: 'Active Skill Duration',
        image:AssetImage('lib/assets/images/artifacts/PhantomTimepiece.png')
    ),
    Artifact(
        name: 'Infinity Pendulum',
        artIdNum: 1215,
        acronym: 'IPe',
        maxLevel: 20,
        tier: 'B',
        description1: 'An artifact created in Metallic City by droids interested in heightening the human body\'s natural abilities',
        description2: 'The Heavenly Strike Mana Cost bonus decreases the mana cost of Heavenly Strike',
        builds: 'ALL',
        bonuses: 'Heavenly Strike Mana Reduction',
        image:AssetImage('lib/assets/images/artifacts/InfinityPendulum.png')
    ),
    Artifact(
        name: 'Glove of Kuma',
        artIdNum: 1216,
        acronym: 'GoK',
        maxLevel: 30,
        tier: 'B',
        description1: 'A glove created to mimic the power and strength of the Bear people',
        description2: 'The Deadly Strike Mana Cost bonus decreases the mana cost of Deadly Strike',
        builds: 'ALL',
        bonuses: 'Deadly Strike Mana Reduction',
        image:AssetImage('lib/assets/images/artifacts/GloveOfKuma.png')
    ),
    Artifact(
        name: 'Titan Spear',
        artIdNum: 1217,
        acronym: 'TS',
        maxLevel: 40,
        tier: 'B',
        description1: 'This deadly, multi-pronged spear is said to have been made from the bones of a dead Titan',
        description2: 'The Hand Of Midas Cost bonus decreases the mana cost of Hand of Midas',
        builds: 'ALL',
        bonuses: 'Hand of Midas Mana Reduction',
        image:AssetImage('lib/assets/images/artifacts/TitanSpear.png')
    ),
    Artifact(
        name: 'Oak Staff',
        artIdNum: 1218,
        acronym: 'OS',
        maxLevel: 30,
        tier: 'B',
        description1: 'Created from a sacred tree, this staff draws and channels the energy of all living things to protect nature',
        description2: 'The Fire Sword Mana Cost bonus decreases the mana cost of Fire Sword',
        builds: 'ALL',
        bonuses: 'Fire Sword Mana Reduction',
        image:AssetImage('lib/assets/images/artifacts/OakStaff.png')
    ),
    Artifact(
        name: 'The Arcana Cloak',
        artIdNum: 1219,
        acronym: 'AC',
        maxLevel: 40,
        tier: 'B',
        description1: 'An enchanted cloak, created by the Elders of the Arcanas',
        description2: 'The War Cry Mana Cost bonus decreased the mana cost of War Cry',
        builds: 'ALL',
        bonuses: 'War Cry Mana Reduction',
        image:AssetImage('lib/assets/images/artifacts/TheArcanaCloak.png')
    ),
    Artifact(
        name: 'The Hunter\'s Ointment',
        artIdNum: 1220,
        acronym: 'HO',
        maxLevel: 40,
        tier: 'B',
        description1: 'The Hunters of Nyx use this for its sacred effects. Recreated by a hero who traveled Nyx\'s dark woods and learned its secret recipe',
        description2: 'The Shadow Clone Mana Cost bonus decreases the mana cost of Shadow Clone',
        builds: 'ALL',
        bonuses: 'Shadow Clone Mana Reduction',
        image:AssetImage('lib/assets/images/artifacts/Hunter\'sOintment.png')
    ),
    Artifact(
        name: 'Mystical Beans of Senzu',
        artIdNum: 1221,
        acronym: 'MBS',
        maxLevel: 40,
        tier: 'B',
        description1: 'These rare magical beans are known only to grow from the Garden of Eden',
        description2: 'The Mana Refund Percent bonus refunds the listed percentage of mana spent each time an active skill is used',
        builds: 'ALL',
        bonuses: 'Mana Refund Percentage',
        image:AssetImage('lib/assets/images/artifacts/MysticalBeansOfSenzu.png')
    ),
    Artifact(
        name: 'Axe of Muerte',
        artIdNum: 1222,
        acronym: 'AoM',
        maxLevel: 40,
        tier: 'B',
        description1: 'An ominous aura surrounds this weapon, rumored to be used by the Grim Reaper himself',
        description2: 'The Critical Chance bonus increases the chance of Sword Master critical hits, and also increases your Pet and Shadow Clone\'s base damage',
        builds: 'ALL',
        bonuses: 'Critical Chance',
        image:AssetImage('lib/assets/images/artifacts/AxeOfMuerte.png')
    ),
    Artifact(
        name: 'The Master\'s Sword',
        artIdNum: 1223,
        acronym: 'TMS',
        maxLevel: 40,
        tier: 'B',
        description1: 'A sacred blade that evil may never touch. Only a true hero can wield this sword',
        description2: 'The Tap Damage From Heroes bonus converts a percentage of your Hero Damage into Tap Damage',
        builds: 'ALL',
        bonuses: 'Sword Master Upgrade Cost',
        image:AssetImage('lib/assets/images/artifacts/TheMasterSword.png')
    ),

//CTier
    Artifact(
        name: 'Forbidden Scroll',
        artIdNum: 1301,
        acronym: 'FS',
        maxLevel: 30,
        tier: 'C',
        description1: 'A scroll hidden by the Tori Clan to protect the powerful techniques that lie within',
        description2: 'The Deadly Strike Duration bonus increases the active duration of Deadly Strike',
        builds: 'ALL',
        bonuses: 'Deadly Strike Duration',
        image:AssetImage('lib/assets/images/artifacts/ForbiddenScroll.png')
    ),
    Artifact(
        name: 'Ring of Fealty',
        artIdNum: 1302,
        acronym: 'RoF',
        maxLevel: 30,
        tier: 'C',
        description1: 'Only the most resolved and trustworthy can wear this ring and be granted its powers',
        description2: 'The Hand Of Midas Duration bonus increases the active duration of Hand of Midas',
        builds: 'ALL',
        bonuses: 'Hand of Midas Duration',
        image:AssetImage('lib/assets/images/artifacts/RingOfFealty.png')
    ),
    Artifact(
        name: 'Glacial Axe',
        artIdNum: 1303,
        acronym: 'GA',
        maxLevel: 30,
        tier: 'C',
        description1: 'Once the Axe of Resolution, wielded by legendary heroes of the past, it is now enchanted by the Evetga',
        description2: 'The Fire Sword Duration bonus increases the active duration of Fire Sword',
        builds: 'ALL',
        bonuses: 'Fire Sword Duration',
        image: AssetImage('lib/assets/images/artifacts/GlacialAxe.png')
    ),
    Artifact(
        name: 'Aegis',
        artIdNum: 1304,
        acronym: 'AE',
        maxLevel: 30,
        tier: 'C',
        description1: 'Forged in the heavens for the gods of war, its use is granted only to the worthiest of heroes',
        description2: 'The War Cry Duration bonus increases the active duration of War Cry',
        builds: 'ALL',
        bonuses: 'War Cry Duration',
        image:AssetImage('lib/assets/images/artifacts/Aegis.png')
    ),
    Artifact(
        name: 'Swamp Gauntlet',
        artIdNum: 1305,
        acronym: 'SG',
        maxLevel:30,
        tier: 'C',
        description1: 'Stolen by the Swamp King, this guided him to defeat and enslave the ogres',
        description2: 'The Shadow Clone Duration bonus increases the active duration of Shadow Clone',
        builds: 'ALL',
        bonuses: 'Shadow Clone Duration',
        image:AssetImage('lib/assets/images/artifacts/SwampGauntlet.png')
    ),
    Artifact(
        name: 'Ambrosia Elixir',
        artIdNum: 1306,
        acronym: 'AE',
        maxLevel: 40,
        tier: 'C',
        description1: 'ome say that this is the drink of the Gods. Mortals that drink this elixir shall be temporarily blessed with the divine powers of the Gods',
        description2: 'The Mana Capacity bonus increases the maximum amount of mana that you may accumulate',
        builds: 'ALL',
        bonuses: 'Mana Capacity',
        image:AssetImage('lib/assets/images/artifacts/AmrbosiaElixir.png')
    ),
    Artifact(
        name: 'Mystic Staff',
        artIdNum: 1307,
        acronym: 'MS',
        maxLevel:40,
        tier: 'C',
        description1: 'A staff crafted by the elders of an ancient mage order. They created this staff to give an endless amount of magical energy for the chosen mage of ancient prophecy',
        description2: 'The Mana Regeneration bonus increases the rate that your mana is regenerated',
        builds: 'ALL',
        bonuses: 'Mana Regeneration',
        image:AssetImage('lib/assets/images/artifacts/MysticStaff.png')
    ),
    Artifact(
        name: 'Egg of Fortune',
        artIdNum: 1308,
        acronym: 'EoF',
        maxLevel: 40,
        tier: 'C',
        description1: 'An egg that fell from the heavens. It glows and emits a warm, soft aura that is said to bring great tidings',
        description2: 'The Chesterson Chance bonus increases the chance to spawn a Chesterson in place of a basic Titan',
        builds: 'ALL',
        bonuses: 'Chesterson Chance',
        image:AssetImage('lib/assets/images/artifacts/EggOfFortune.png')
    ),
    Artifact(
        name: 'Divine Chalice',
        artIdNum: 1309,
        acronym: 'DC',
        maxLevel: 50,
        tier: 'C',
        description1: 'The chalice of a great adventurer, said to impart great fortune on its owner',
        description2: 'The 10x Gold Chance bonus increases the chance to earn a Jackpot gold bonus',
        builds: 'ALL',
        bonuses: '10x Gold Chance',
        image:AssetImage('lib/assets/images/artifacts/DivineChalice.png')
    ),
    Artifact(
        name: 'Invader\'s Shield',
        artIdNum: 1310,
        acronym: 'IS',
        maxLevel: 50,
        tier: 'C',
        description1: 'A shield used by the nomadic invaders for its strength and simplicity',
        description2: 'The Multiple Fairy Chance bonus increases the chance to spawn multiple fairies',
        builds: 'ALL',
        bonuses: 'Multiple Fairy Chance',
        image:AssetImage('lib/assets/images/artifacts/Invader\'sShield.png')
    ),
    Artifact(
        name: 'Essence of the Kitsune',
        artIdNum: 1311,
        acronym: 'EoK',
        maxLevel: 40,
        tier: 'C',
        description1: 'Extracted from a divine mystical creature\'s essence. Its scent will attract all kinds of creatures',
        description2: 'The Multiple Spawn Chance bonus increases the chance to spawn multiple monsters at once during both active and inactive play',
        builds: 'ALL',
        bonuses: 'Multiple Spawn Chance',
        image:AssetImage('lib/assets/images/artifacts/EssenceOfTheKitsune.png')
    ),
    Artifact(
        name: 'Oberon Pendant',
        artIdNum: 1312,
        acronym: 'OP',
        maxLevel: 40,
        tier: 'C',
        description1: 'The king of the fairies tangled a leyline and bottled it in this pendant; all magic is drawn towards it',
        description2: 'The Manni Mana Chance bonus increases the change to spawn a Manni Mana in place of a basic Titan',
        builds: 'ALL',
        bonuses: 'Mani Mana Chance',
        image:AssetImage('lib/assets/images/artifacts/OberonPendant.png')
    ),
    Artifact(
        name: 'Lost King\'s Mask',
        artIdNum: 1313,
        acronym: 'LKM',
        maxLevel: 40,
        tier: 'C',
        description1: 'The wearer is said to receive a fortune only a King could imagine',
        description2: 'The All Upgrade Cost bonus decreases the gold cost of all active skill, hero, and Sword Master upgrades and unlocks',
        builds: 'ALL',
        bonuses: 'All Upgrade Cost',
        image:AssetImage('lib/assets/images/artifacts/LostKing\'sMask.png')
    ),
    Artifact(
        name: 'Staff of Radiance',
        artIdNum: 1314,
        acronym: 'SoR',
        maxLevel: 40,
        tier: 'C',
        description1: 'Forged from a sun stone, its light destroys darkness and acts as a guide for those who are lost',
        description2: 'The Hero Upgrade Cost bonus decreases the gold upgrade and unlock cost of heroes',
        builds: 'ALL',
        bonuses: 'Hero Upgrade Cost',
        image: AssetImage('lib/assets/images/artifacts/StaffOfRadiance.png')
    ),
    Artifact(
        name: 'Aram Spear',
        artIdNum: 1315,
        acronym: 'AS',
        maxLevel: 40,
        tier: 'C',
        description1: 'It belonged to the chief of a legendary horseman tribe who rode into battle with this spear and came out victorious each time',
        description2: 'The All Titan HP bonus decreases the hit points of all Titan types',
        builds: 'ALL',
        bonuses: 'Titan Health Reduction',
        image: AssetImage('lib/assets/images/artifacts/AramSpear.png')
    ),
    Artifact(
        name: 'Ward of the Darkness',
        artIdNum: 1316,
        acronym: 'WoD',
        maxLevel: 60,
        tier: 'C',
        description1: 'No one knows the origins of this ward. But it was said to have kept the Prince of Darkness and his minions at bay in this world',
        description2: 'The Boss Timer Duration bonus increases the duration of boss fights',
        builds: 'ALL',
        bonuses: 'Boss Timer Duration',
        image:AssetImage('lib/assets/images/artifacts/WardOfTheDarkness.png')
    ),
//FtierList
    Artifact(
        name: 'Zakynthos Coin',
        artIdNum: 1401,
        acronym: 'KB',
        maxLevel: 0,
        tier: 'F',
        description1: 'A cursed coin will grant the holder sudden wealth in exchange for their soul',
        description2: 'The Inactive Gold bonus increases the amount of gold earned during inactive play',
        builds: 'ALL',
        bonuses: 'Inactive Gold',
        image:AssetImage('lib/assets/images/artifacts/ZakynthosCoin.png')
    ),
    Artifact(
        name: 'Corrupted Rune Heart',
        artIdNum: 1402,
        acronym: 'CRH',
        maxLevel: 0,
        tier: 'F',
        description1: 'This rune was once used for healing. But then, corrupted by the darkness, changed to inflict pain and suffering by those who possess it',
        description2: 'The Splash Damage bonus increases the strength of your splash damage',
        builds: 'ALL',
        bonuses: 'Splash Damage',
        image:AssetImage('lib/assets/images/artifacts/CorruptedRuneHeart.png')
    ),
  ];

  UnmodifiableListView<Artifact> getArtList () {
    return UnmodifiableListView(_currentArtifact);
  }

  String getMaxLevel(){
    String _maxLevel;
    if(_currentArtifact[0].maxLevel==0)
      _maxLevel="\u221E";
    else
      _maxLevel=_currentArtifact[0].maxLevel.toString();
    return _maxLevel;
  }


  // ignore: non_constant_identifier_names
  AssetImage getPicture(int artID) {
    List<Artifact> _blank;
    _blank = _artifact.where((_artifact) => _artifact.artIdNum == artID).toList();
    return _blank[0].image;
  }

  void code(int artID) {
    _currentArtifact.removeLast();
    _currentArtifact=(_artifact.where((_artifact) => _artifact.artIdNum == artID).toList());
    notifyListeners();
  }

}

class Artifact {
  final String name;
  final int artIdNum;
  final String acronym;
  final int maxLevel;
  final String tier;
  final String description1;
  final String description2;
  final String builds;
  final String bonuses;
  final AssetImage image;

  Artifact ({this.name, this.artIdNum, this.acronym, this.maxLevel, this.tier, this.description1, this.description2, this.builds, this.bonuses, this.image});

}