# color monster names in messages and menus and things
# by toft and Eidolos

# shortcut regexes so we can write e.g. "el$ves" instead of "el(?:f|ves)"
my $ves = qr/f|ves/;
my $the = qr/(?:[Tt]he )?/;
my $us = qr/us|i/;
my $es = qr/(?:es)?/;
my $ies = qr/y|ies/;

# chromatic stuff!
my @dim_colors = qw/red brown green cyan magenta blue/;
my @bold_colors = map {$colormap{$_}} map {"b$_"} @dim_colors;
@dim_colors = map {$colormap{$_}} @dim_colors;

my @colors = @dim_colors, @bold_colors;

sub random_color { $colors[     rand @colors     ] }
sub random_dim   { $dim_colors[ rand @dim_colors ] }
sub random_bold  { $bold_colors[rand @bold_colors] }

# deities {{{
if ($chromatic_gods)
{
  each_iteration { s/Marduk|Moloch|Quetzalcoatl|Camaxtli|Huhetotl|Mitra|Crom|Set(?! what opt)|Anu|Ishtar|Anshar|Athena|Hermes|Poseidon|Lugh|Brigit|Manannan Mac Lir|Shan Lai Ching|Chih Sung-tzu|Huan Ti|Mercury|Venus|Mars|Issek|Mog|Kos|Amaterasu Omikami|Raijin|Susanowo|Blind Io|The Lady|Offler|Tyr|Odin|Loki|Ptah|Thoth|Anhur/(join '', map {random_bold()."$_"} split '', $&)."\e[0m"/eg }
}
else
{
  recolor qr/Marduk|Moloch|Quetzalcoatl|Camaxtli|Huhetotl|Mitra|Crom|Set(?! what opt)|Anu|Ishtar|Anshar|Athena|Hermes|Poseidon|Lugh|Brigit|Manannan Mac Lir|Shan Lai Ching|Chih Sung-tzu|Huan Ti|Mercury|Venus|Mars|Issek|Mog|Kos|Amaterasu Omikami|Raijin|Susanowo|Blind Io|The Lady|Offler|Tyr|Odin|Loki|Ptah|Thoth|Anhur/ => \&random_color;
}
# }}}

# team a {{{
recolor qr/giant ants?/ => "brown";
recolor qr/killer bees?/ => "yellow";
recolor qr/soldier ants?/ => "blue";
recolor qr/fire ants?/ => "red";
recolor qr/giant beetles?/ => "gray";
recolor qr/queen bees?/ => "purple";
# }}}

# team b {{{
recolor qr/acid blobs?/ => "green";
recolor qr/quivering blobs?/ => "white";
recolor qr/gelatinous cubes?/ => "cyan";
# }}}

# team c {{{
recolor qr/chickatrices?/ => "brown";
recolor qr/cockatrices?/ => "bbrown";
recolor qr/pyrolisks?/ => "red";
# }}}

# team d {{{
recolor qr/jackals?|coyotes?/ => "brown";
recolor qr/wol$ves|wargs?/ => "brown";
recolor qr/foxes?/ => "red";
recolor qr/(?:little|large)? dogs?|dingos?/ => "bwhite";
recolor qr/winter wolf cubs?|winter wol$ves/ => "cyan";
recolor qr/hell hounds?|hell hound pups?/ => "red";
# }}}

# team e {{{
recolor qr/gas spores?/ => "gray";
recolor qr/floating eyes?/ => "bcyan";
recolor qr/freezing spheres?/ => "bwhite";
recolor qr/flaming spheres?/ => "red";
recolor qr/shocking spheres?/ => "bblue";
# }}}

# team f {{{
recolor qr/kittens?|(?:house|large )cats?/ => "bwhite";
recolor qr/jaguars?/ => "brown";
recolor qr/lynxes?/ => "cyan";
recolor qr/panthers?/ => "gray";
recolor qr/tigers?/ => "bbrown";
# }}}

# team g {{{
recolor qr/gremlins?/ => "green";
recolor qr/gargoyles?/ => "brown";
recolor qr/winged gargoyles?/ => "purple";
# }}}

# team h {{{
recolor qr/hobbits?/ => "green";
recolor qr/dwar$ves/ => "red";
recolor qr/bugbears?/ => "brown";
recolor qr/dwarf lords?/ => "blue";
recolor qr/dwarf kings?/ => "purple";
recolor qr/mind flayers?/ => "purple";
recolor qr/master mind flayers?/ => "purple";
# }}}

# team i {{{
recolor qr/manes|imps?/ => "red";
recolor qr/homuncul$us/ => "green";
recolor qr/lemures?/ => "brown";
recolor qr/quasits?/ => "blue";
recolor qr/tengus?/ => "cyan";
# }}}

# team j {{{
recolor qr/blue jellys?/ => "blue";
recolor qr/spotted jellys?/ => "green";
recolor qr/ochre jellys?/ => "brown";
# }}}

# team k {{{
recolor qr/kobolds?/ => "brown";
recolor qr/large kobolds?/ => "red";
recolor qr/kobold lords?/ => "purple";
recolor qr/kobold shamans?/ => "bblue";
# }}}

# team l {{{
recolor qr/leprechauns?/ => "green";
# }}}

# team m {{{
recolor qr/small mimics?/ => "brown";
recolor qr/large mimics?/ => "red";
recolor qr/giant mimics?/ => "purple";
# }}}

# team n {{{
recolor qr/wood nymphs?/ => "green";
recolor qr/water nymphs?/ => "blue";
recolor qr/mountain nymphs?/ => "brown";
# }}}

# team o {{{
recolor qr/goblins?/ => "gray";
recolor qr/hobgoblins?/ => "brown";
recolor qr/orcs?/ => "red";
recolor qr/hill orcs?/ => "bbrown";
recolor qr/Mordor orcs?/ => "blue";
recolor qr/Uruk-hai/ => "gray";
recolor qr/orc shamans?/ => "bblue";
recolor qr/orc-captains?/ => "purple";
# }}}

# team p {{{
recolor qr/rock piercers?/ => "gray";
recolor qr/iron piercers?/ => "cyan";
recolor qr/glass piercers?/ => "bwhite";
# }}}

# team q {{{
recolor qr/rothes?/ => "brown";
recolor qr/mumaks?|titanotheres?|baluchitheri(?:um|a)/ => "gray";
recolor qr/leocrottas?/ => "red";
recolor qr/wumpus$es/ => "cyan";
recolor qr/mastodons?/ => "gray";
# }}}

# team r {{{
recolor qr/(?:sewer |rabid |giant |were)rats?/ => "brown";
recolor qr/rock moles?/ => "gray";
recolor qr/woodchucks?/ => "bpurple";
# }}}

# team s {{{
recolor qr/cave spiders?/ => "gray";
recolor qr/centipedes?/ => "bbrown";
recolor qr/giant spiders?/ => "purple";
recolor qr/scorpions?/ => "red";
# }}}

# team t {{{
recolor qr/lurkers? above/ => "gray";
recolor qr/trappers?/ => "green";
# }}}

# team u {{{
recolor qr/white unicorns?/ => "white";
recolor qr/gray unicorns?/ => "gray";
recolor qr/black unicorns?/ => "gray";
recolor qr/pon$ies|(?:war)?horses?/ => "brown";
# }}}

# team v {{{
recolor qr/fog clouds?/ => "gray";
recolor qr/dust vortex$es/ => "brown";
recolor qr/ice vortex$es/ => "cyan";
recolor qr/energy vortex$es/ => "bblue";
recolor qr/steam vortexs$es/ => "blue";
recolor qr/fire vortexs$es/ => "bbrown";
# }}}

# team w {{{
recolor qr/(?:baby )?long worms?/ => "brown";
recolor qr/(?:baby )?purple worms?/ => "purple";
# }}}

# team x {{{
recolor qr/grid bugs?/ => "purple";
recolor qr/xans?/ => "red";
# }}}

# team y {{{
recolor qr/yellow lights?/ => "bbrown";
recolor qr/black lights?/ => "gray";
# }}}

# team z {{{
recolor qr/zruty$ies/ => "brown";
# }}}

# team A {{{
recolor qr/couatls?/ => "green";
recolor qr/Aleaxs?/ => "bbrown";
recolor qr/Angels?/ => "bwhite";
recolor qr/ki-rins?/ => "bbrown";
recolor qr/Archons?/ => "purple";
# }}}

# team B {{{
recolor qr/bats?/ => "brown";
recolor qr/giant bats?/ => "red";
recolor qr/ravens?/ => "gray";
recolor qr/vampire bats?/ => "gray";
# }}}

# team C {{{
recolor qr/plains centaurs?/ => "brown";
recolor qr/forest centaurs?/ => "green";
recolor qr/mountain centaurs?/ => "cyan";
# }}}

# team D {{{
recolor qr/(?:baby )?gray dragons?/ => "gray";
recolor qr/(?:baby )?silver dragons?/ => "cyan";
recolor qr/(?:baby )?red dragons?/ => "red";
recolor qr/(?:baby )?white dragons?/ => "bwhite";
recolor qr/(?:baby )?orange dragons?/ => "orange";
recolor qr/(?:baby )?black dragons?/ => "gray";
recolor qr/(?:baby )?blue dragons?/ => "blue";
recolor qr/(?:baby )?green dragons?/ => "green";
recolor qr/(?:baby )?yellow dragons?/ => "bbrown";
# }}}

# team E {{{
recolor qr/stalkers?/ => "bwhite";
recolor qr/air elementals?/ => "bblue";
recolor qr/fire elementals?/ => "bbrown";
recolor qr/earth elementals?/ => "brown";
recolor qr/water elementals?/ => "blue";
# }}}

# team F {{{
recolor qr/lichens?/ => "bgreen";
recolor qr/brown molds?/ => "brown";
recolor qr/yellow molds?/ => "bbrown";
recolor qr/green molds?/ => "green";
recolor qr/red molds?/ => "red";
recolor qr/shriekers?|violet fung$us/ => "purple";
# }}}

# team G {{{
recolor qr/gnomes?/ => "brown";
recolor qr/gnome lords?/ => "blue";
recolor qr/gnomish wizards?/ => "bblue";
recolor qr/gnome kings?/ => "purple";
# }}}

# team H {{{
recolor qr/giants?(?! ant| beetle| mimic| eel)/ => "red";
recolor qr/stone giants?/ => "gray";
recolor qr/hill giants?/ => "cyan";
recolor qr/fire giants?/ => "bbrown";
recolor qr/frost giants?/ => "bwhite";
recolor qr/storm giants?/ => "blue";
recolor qr/ettins?|minotaurs?/ => "brown";
recolor qr/titans?/ => "purple";
# }}}

# team J {{{
recolor qr/jabberwocks?/ => "bred";
# }}}

# team K {{{
recolor qr/Keystone Kops?|Kop Sergeants?/ => "blue";
recolor qr/Kop Lieutenants?/ => "cyan";
recolor qr/Kop Kaptains?/ => "purple";
# }}}

# liches L {{{
recolor qr/(?:demi|master |arch-)?lich$es/
     => sub
        {
            substr($&, 0, 1) eq 'd' ? $colormap{red}
          : substr($&, 0, 1) eq 'l' ? $colormap{brown}
          :                           $colormap{purple};
        };
# }}}

# mummies M {{{
recolor qr/kobold mumm$ies/ => "brown";
recolor qr/(?:orc|human) mumm$ies/ => "red";
recolor qr/(?:gnome|dwarf) mumm$ies/ => "gray";
recolor qr/elf mumm$ies/ => "green";
recolor qr/ettin mumm$ies/ => "blue";
recolor qr/giant mumm$ies/ => "cyan";
# }}}

# nagas N {{{
recolor qr/red nagas?(?: hatchlings?)??/ => "red";
recolor qr/black nagas?(?: hatchlings?)??/ => "blue";
recolor qr/golden nagas?(?: hatchlings?)??/ => "yellow";
recolor qr/guardian nagas?(?: hatchlings?)??/ => "green";
# }}}

# ogres O {{{
recolor qr/ogres?(?! lord|king)/ => "brown";
recolor qr/ogre lords?/ => "red";
recolor qr/ogre kings?/ => "purple";
# }}}

# puddings and other amoeboids P {{{
recolor qr/gray oozes?/ => "gray";
recolor qr/brown puddings?/ => "brown";
recolor qr/black puddings?/ => "blue";
recolor qr/green slimes?/ => "green";
# }}}

# quantum mechanics Q {{{
recolor qr/quantum mechanics?/ => "cyan";
# }}}

# rust monsters and disenchanters R {{{
recolor qr/rust monsters?/ => "brown";
recolor qr/disenchanters?/ => "blue";
# }}}

# snakes S {{{
recolor qr/garter snakes?/ => "green";
recolor qr/snakes?/ => "brown";
recolor qr/water moccasins?/ => "red";
recolor qr/pit vipers?|cobras?/ => "blue";
recolor qr/pythons?/ => "purple";
# }}}

# trolls T {{{
recolor qr/trolls?/ => "brown";
recolor qr/ice trolls?/ => "bwhite";
recolor qr/rock trolls?/ => "cyan";
recolor qr/water trolls?/ => "blue";
recolor qr/Olog-hai/ => "purple";
# }}}

# umber hulks U {{{
recolor qr/umber hulks?/ => "brown";
# }}}

# vampires V {{{
recolor qr/vampires?(?! lord)/ => "red";
recolor qr/vampire lords?/ => "blue";
recolor qr/Vlad the Impaler/ => "purple";
# }}}

# wraiths W {{{
recolor qr/barrow wights?/ => "gray";
recolor qr/wraiths?/ => "blue";
recolor qr/Nazguls?/ => "purple"; # yes it's "9 Nazgul" but NetHack sucks!
# }}}

# xorns X {{{
recolor qr/xorns?/ => "brown";
# }}}

# apelike creatures Y {{{
recolor qr/monkeys?|sasquatch$es/ => "gray";
recolor qr/apes?|owlbears?/ => "brown";
recolor qr/yetis?/ => "bwhite";
recolor qr/carnivorous apes?/ => "blue";
# }}}

# zombies Z {{{
recolor qr/(?:kobold|gnome) zombies?/ => "brown";
recolor qr/ghouls|orc zombies?/ => "gray";
recolor qr/dwarf zombies?/ => "red";
recolor qr/elf zombies?/ => "green";
recolor qr/skeletons|human zombies?/ => "bwhite";
recolor qr/ettin zombies?/ => "blue";
recolor qr/giant zombies?/ => "cyan";

# }}}

# golems ' {{{
recolor qr/(?:straw|gold) golems?/ => "yellow";
recolor qr/paper golems?/ => "bwhite";
recolor qr/(?:rope|leather|wood|clay) golems?/ => "brown";
recolor qr/flesh golems?/ => "red";
recolor qr/stone golems?/ => "gray";
recolor qr/(?:iron|glass) golems?/ => "cyan";
# }}}

# humans and elves @ {{{
recolor qr/humans?/ => "bwhite";
recolor qr/wererats?/ => "brown";
recolor qr/werejackals?/ => "red";
recolor qr/werewol$ves/ => "bred";
recolor qr/el$ves/ => "bwhite";
recolor qr/Woodland-el$ves/ => "green";
recolor qr/Green-el$ves/ => "bgreen";
recolor qr/Grey-el$ves/ => "gray";
recolor qr/elf-lords?/ => "bblue";
recolor qr/Elvenkings?/ => "purple";
recolor qr/doppelgangers?/ => "bwhite";
recolor qr/nurses?/ => "bwhite";
recolor qr/shopkeepers?/ => "bwhite";
recolor qr/guards?/ => "blue";
recolor qr/prisoners?/ => "bwhite";
recolor qr/${the}Oracle/ => "bblue";
recolor qr/priests?/ => "bwhite";
recolor qr/high priests?/ => "bwhite";
recolor qr/soldiers?/ => "gray";
recolor qr/sergeants?/ => "red";
recolor qr/lieutenants?/ => "green";
recolor qr/captains?/ => "blue";
recolor qr/watchm[ae]n/ => "gray";
recolor qr/watch captains?/ => "green";
recolor qr/Medusa/ => "bgreen";
recolor qr/${the}Wizard of Yendor/ => "purple";
recolor qr/Croesus/ => "purple";
# }}}

# ghosts and shades X {{{
recolor qr/ghosts?/ => "white";
recolor qr/shades?/ => "blue";
# }}}

# demons & {{{
recolor qr/Death|Pestilence|Famine/ => "purple";
recolor qr/Orcus|Baalzebub|Asmodeus/ => "purple";
recolor qr/Juiblex/ => "bgreen";
recolor qr/Yeenoghu|Geryon|Dispater|Demogorgon/ => "purple";

recolor qr/djinni?/ => "yellow";
recolor qr/balrogs?|pit fiends?|nalfeshnees?|horned devils?/ => "red";
recolor qr/barbed devils?|mariliths?|vrocks?|hezrous?/ => "red";
recolor qr/(?:suc|in)cub$us|sandestins?|bone devils?/ => "gray";
recolor qr/ice devils?/ => "white";
recolor qr/mail daemons?/ => "bblue";
recolor qr/water demons?/ => "blue";
# }}}

# sea monsters ; {{{
recolor qr/jellyfish/ => "blue";
recolor qr/piranhas?|krakens?/ => "red";
recolor qr/sharks?/ => "white";
recolor qr/giant eels?/ => "cyan";
recolor qr/electric eels?/ => "bblue";
# }}}

# lizards : {{{
recolor qr/newts?/ => "yellow";
recolor qr/geckos?|lizards?/ => "green";
recolor qr/chameleons?|(?:baby )?crocodiles?|iguanas?/ => "brown";
recolor qr/salamanders?/ => "bred";
# }}}

# player monsters {{{
recolor qr/archeologists?|barbarians?|cave(?:wo)?m[ae]n|healers?|knights?|monks?|priests?|priestess(?:es)?|rangers?|rogues?|samurai|tourists?|valkyries?|wizards?/ => "white";
# }}}

# quest nemeses {{{
if ($chromatic_nemeses)
{
    recolor qr/${the}Minion of Huhetotl/ => "red";
    recolor qr/Thoth Amon/               => "purple";
    recolor qr/${the}Chromatic Dragon/   => "purple";
    recolor qr/${the}Cyclops/            => "gray";
    recolor qr/Ixoth/                    => "red";
    recolor qr/Master Kaen/              => "purple";
    recolor qr/Nalzok/                   => "red";
    recolor qr/Scorpius/                 => "purple";
    recolor qr/${the}Master Assassin/    => "purple";
    recolor qr/Ashikaga Takauji/         => "purple";
    recolor qr/Lord Surtur/              => "purple";
    recolor qr/${the}Dark One/           => "blue";
}
else
{
    recolor qr/${the}Minion of Huhetotl/ => \&random_color;
    recolor qr/Thoth Amon/               => \&random_color;
    recolor qr/${the}Chromatic Dragon/   => \&random_color;
    recolor qr/${the}Cyclops/            => \&random_color;
    recolor qr/Ixoth/                    => \&random_color;
    recolor qr/Master Kaen/              => \&random_color;
    recolor qr/Nalzok/                   => \&random_color;
    recolor qr/Scorpius/                 => \&random_color;
    recolor qr/${the}Master Assassin/    => \&random_color;
    recolor qr/Ashikaga Takauji/         => \&random_color;
    recolor qr/Lord Surtur/              => \&random_color;
    recolor qr/${the}Dark One/           => \&random_color;
}
# }}}

# quest leaders {{{
recolor qr/Lord Carnarvon/          => "purple";
recolor qr/Pelias/                  => "purple";
recolor qr/Shaman Karnov/           => "purple";
recolor qr/Hippocrates/             => "purple";
recolor qr/King Arthur/             => "purple";
recolor qr/${the}Grand Master/      => "blue";
recolor qr/${the}Arch Priest/       => "white";
recolor qr/Orion/                   => "purple";
recolor qr/${the}Master of Thieves/ => "purple";
recolor qr/Lord Sato/               => "purple";
recolor qr/Twoflower/               => "bwhite";
recolor qr/${the}Norn/              => "purple";
recolor qr/Neferet the Green/       => "green";
# }}}

# quest guardians {{{
recolor qr/students?|chieftains?|neanderthals?|attendants?|pages?|abbots?|acolytes?|hunters?|thugs?|ninjas?|roshi|guides?|warriors?|apprentices?/ => "white";
# }}}

