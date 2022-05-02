import 'package:flutter/material.dart';

class Plants {
  Plants({
    this.externalImage = '',
    this.plantName = '',
    this.plantType = '',
    this.ScientificName = '',
    this.light = '',
    this.plantImage = '',
    this.Description = '',
    this.temp = '',
    this.water = "",
  });

  String plantName;
  String externalImage;
  String plantImage;
  String plantType;
  String ScientificName;
  String temp;
  String water;
  String light;
  String Description;
}

var plants = [
  /* Indoor  ---------------------------------------------------------- */
  Plants(
      plantImage: "assets/images/Indoor/Strelitzia.png",
      plantName: 'Birds of paradise ',
      plantType: "Indoor",
      ScientificName: "Strelitzia Reginae Banks",
      temp: " 18°C - 30°C ",
      water: " Once every 1-2 weeks",
      light: "high ",
      Description:
          "Strelitzia is a South African perennial plant genus with five species. It is a member of the Strelitziaceae family of plants. Because the blooms resemble those of birds-of-paradise, the genus is known as bird of paradise flower/plant. It's also known as the crane flower in South Africa.It grows best indoors in a bright, sunny location with healthy, loamy, well-drained soil"),
  Plants(
      plantImage: "assets/images/Indoor/Algerian Ivy.png",
      plantName: 'Algerian Ivy',
      plantType: "Indoor ",
      ScientificName: "Hedera algeriensis",
      temp: " 40°C - 90°C ",
      water: " Once every 9 days ",
      light: "Partial ",
      Description:
          " Algerian ivy is a woody climbing vine with big leaves. It grows to be 8-10 tall but may climb to great heights. It may be grown as a ground cover, but it must be limited because it can be weedy and may require extensive pruning to keep in check. To avoid leaf drop, moisture levels should be generally stable."),
  Plants(
      plantImage: "assets/images/Indoor/Mexican Snowball.png",
      plantName: 'Mexican snowball ',
      plantType: "Indoor ",
      ScientificName: "Echeveria",
      temp: " 15.5°C - 24°C ",
      water: " Once every 2-3 weeks",
      light: "high ",
      Description:
          "Echeveria is a genus of plants in the Crassulaceae family. Because of their gritty texture, these plants make wonderful complements in rock or crevice gardens. They're also a popular home plant due to their modest size at maturity, which is often less than a foot.These plants thrive in bright sunshine and well-drained soil with a small amount of organic materials. Too much direct sunshine can cause leaf burn, yet not enough light can cause color loss. Water once a week, never allowing the soil completely dry up. They are beginner-friendly houseplants that are simple to care for."),
  Plants(
      plantImage: "assets/images/Indoor/Corn plant.png",
      plantName: 'Corn plant ',
      plantType: "Indoor ",
      ScientificName: "Dracaena fragrans",
      temp: " 16°C - 24°C ",
      water: " Once every week",
      light: "medium ",
      Description:
          "Corn plant is a slow-growing, broadleaf evergreen perennial shrub native to tropical Africa, however it is commonly grown as a houseplant . It belongs to the Asparagaceae (asparagus) family and is known as a corn plant due to the tall, unbranched stem's similarity to a corn stalk.Indoors, keep it in bright to moderate filtered light. It thrives in low-light environments. The foliage can be burned by direct sunlight, but if the light levels are too low, the leaves will narrow. During the growth season, keep the soil wet, but reduce the amount of water used in the winter. Plant in a container with drainage holes and commercially packaged potting soil. Place a saucer beneath the plant to collect any excess water and then discard it."),
  Plants(
      plantImage: "assets/images/Indoor/Ceriman.png",
      plantName: 'Ceriman ',
      plantType: "Indoor ",
      ScientificName: "Monstera deliciosa",
      temp: " 15°C - 26°C ",
      water: " Once every week",
      light: "high ",
      Description:
          "Ceriman is a woody epiphytic vine that climbs via adventitious roots, not a philodendron. It begins life as a terrestrial plant, but when it comes into touch with a robust tree it can climb, it transforms into an epiphyte, sending down long roots to obtain nutrients from the soil. It is native to tropical parts of North and South America and may reach a height of 70 feet, while most home situations keep it around 6-8 feet. In its natural environment, delicious fruit is produced that is claimed to taste like a hybrid between a banana and a pineapple. The rest of the plant is poisonous. It can be grown as a houseplant."),
  Plants(
      plantImage: "assets/images/Indoor/Snake plant.png",
      plantName: 'Snake plant ',
      plantType: "Indoor ",
      ScientificName: "Dracaena trifasciata",
      temp: "21°C - 32°C ",
      water: " Once every week",
      light: "high ",
      Description:
          "Snake plant belongs to the Asparagaceae (asparagus) family and is an upright, clumping broadleaf evergreen houseplant. It is an African species.It will withstand very low light, so place it in a spot where it will only receive direct sunlight for a portion of the day, 2 to 6 hours. A well-drained soil and cautious watering are essential; overwatering will cause the roots to rot. Allow the soil to dry between waterings from spring to October. Only water once every one to two months in the winter. It can withstand low humidity and temperatures as low as 50 degrees. This plant is long-lasting, easy to cultivate, and hard to destroy."),
  Plants(
      plantImage: "assets/images/Indoor/Bamboo palm.png",
      plantName: 'Bamboo Palm  ',
      plantType: "Indoor ",
      ScientificName: "Chamaedorea elegans",
      temp: " 18°C - 26°C ",
      water: " Once every 2 weeks",
      light: "low ",
      Description:
          "Bamboo Palm is a subtropical palm that grows up to 7 feet tall in indoor situations. It is upright, spreading, and multistemmed. Because it survives in inside settings that other plants can't, it's one of the most popular indoor palms. The leaves are elegantly spread out and drooping. It can grow to be 6-7 feet tall and 2-3 feet wide when planted outside in a temperate zone; as a houseplant, it only grows to be 2-7 feet tall."),
  Plants(
      plantImage: "assets/images/Indoor/Lady palm.png",
      plantName: 'Lady palm ',
      plantType: "Indoor ",
      ScientificName: "Rhapis excelsa",
      temp: " 15°C - 26°C ",
      water: " Several times a week",
      light: "low ",
      Description:
          "The Lady Palm is a cycad-like, evergreen fan palm. As an indoor plant, it prefers indirect light, can tolerate heavy shadow, and requires low humidity. Except in the winter, when watering can be reduced, it requires well-drained potting soil and regular watering. Because of its chilly air tolerance in the winter, it's a wonderful specimen to use near doors. During the growth season, use a balanced slow-release fertilizer."),
  Plants(
      plantImage: "assets/images/Indoor/Baby Rubber plant.png",
      plantName: 'Baby Rubberplant ',
      plantType: "Indoor ",
      ScientificName: "Peperomia obtusifolia",
      temp: "26°C ",
      water: " Once every 1-2 weeks",
      light: "high ",
      Description:
          "It is a tropical evergreen herbaceous shrub that grows up to 2' tall and is upright and bushy. Key ID features include glossy cupped, obovate leaves on branching, distinct stems and pink-tinged petioles. Leaf attachment is a kind of sub-peltate attachment. This plant is frequently used as a desktop or indoor specimen. This plant, especially non-variegated varieties, can survive low light for several months without becoming stressed. Wet soil, extremely dry soil, and drafty places are not suitable for it. This plant requires bright indirect sunshine, dry soil, and a relative humidity of medium to low. The leaves will be burned if the sun is too bright or direct. This plant is widely cultivated as a houseplant because it has no severe insect or disease concerns."),
  Plants(
      plantImage: "assets/images/Indoor/Asparagus Fern.png",
      plantName: 'Asparagus Fern ',
      plantType: "Indoor ",
      ScientificName: "Asparagus plumosus",
      temp: "21°C ",
      water: " Once every 1-2 weeks",
      light: "high ",
      Description:
          "If support is provided, asparagus fern grows into a wiry shrub with scrambling or climbing branches. It's one of the easiest houseplants to cultivate and maintain. Asparagus ferns are asparagus, not ferns. The popular names are derived from their look, which resembles delicate, lacy ferns with their plumes of feathery leaf.They require strong indirect light that is free of direct sunlight and heavy humidity. Yellow needles will fall as a result of a lack of light and water. The yellow needles will not regenerate if these conditions harm the plant; however, if the correct conditions are fulfilled, new growth will sprout at the soil line."),
  /* Flowers ---------------------------------------------------------- */
  Plants(
      plantImage: "assets/images/Flowers/Liluim.png",
      plantName: 'Liliums',
      plantType: "Flower ",
      ScientificName: "Lilium",
      temp: "32°C ",
      water: " Water once every week",
      light: "meduim ",
      Description:
          "Liliums are perennial herb summertime bulbous geophytes that survive winter well without the need to be dug up and stored. White or yellow fleshy scales cover the plant's bulbs. For the foliage, they prefer full sun to PM sun, shade for the roots, and well-drained, healthy soil and mulch to keep the root zone cool. Bulb rot can be caused by too damp soil, however it should not be allowed to dry out completely. From June to August, plant bulbs 8 feet deep in the fall and be rewarded with spectacular aromatic flowers."),
  Plants(
      plantImage: "assets/images/Flowers/Roses.png",
      plantName: 'Roses',
      plantType: "Flower ",
      ScientificName: "Rosa",
      temp: "21°C",
      water: " Water twice every week",
      light: "meduim ",
      Description:
          "Roses are beautiful blooming shrubs native to the Northern Hemisphere. Heat and frost are not a problem for roses.Botrytis, blights, powdery mildew, leaf spots, and anthracnose are just a few of the diseases that can affect your plants. Thrips, mites, aphids, scales, and whiteflies are some of the pests that might cause issues."),
  Plants(
      plantImage: "assets/images/Flowers/Tulip.png",
      plantName: 'Tulip',
      plantType: "Flower ",
      ScientificName: "Tulipa",
      temp: "12°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "Tulipa, or common Tulip, is a bulbous perennial plant with flowers in all solid or mixed hues except true blue that blooms in mid- to late spring. Tulips may be grown in full sun on organically rich, fertile, medium moisture, well-drained soils. They thrive in climates with mild, wet winters and hot, dry summers. They are usually cultivated in large groups."),
  Plants(
      plantImage: "assets/images/Flowers/Moon orchid.png",
      plantName: 'Moon orchid',
      plantType: "Flower ",
      ScientificName: "Phalaenopsis",
      temp: "26°C ",
      water: "Water once every 1-2 weeks",
      light: "low ",
      Description:
          "One of the most popular orchid families. Low light, warm temperatures, and high humidity are their preferred conditions. Aerial roots may photosynthesize and produce chlorophyll, which gives them a green tint"),
  Plants(
      plantImage: "assets/images/Flowers/Deptford Pink.png",
      plantName: 'Deptford Pink',
      plantType: "Flower ",
      ScientificName: "Dianthus armeria",
      temp: "-23°C min",
      water: " Water once every week",
      light: "high ",
      Description:
          "Dianthus armeria is a non-native that has become semi-naturalized throughout much of the United States after escaping gardens. The name 'Deptford Pink' comes from the town of Deptford in England, where the plant was previously plentiful. It thrives on disturbed soils at low to moderate elevations, such as abandoned fields, roadside ditches, and grassy pastures. It thrives in compacted, heavy, or nutrient-deficient clay, loam, or gravelly soil, tolerating drought but not poor drainage. It may be found in abundance in the North Carolina highlands and Piedmont, but is less prevalent in coastal locations."),
  Plants(
      plantImage: "assets/images/Flowers/Chrysanthemum.png",
      plantName: 'Chrysanthemum',
      plantType: "Flower ",
      ScientificName: "Chrysanthemum",
      temp: "25°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "The Asteraceae (daisy) family includes hardy chrysanthemums, which are easy to cultivate perennials. Unlike other annual chrysanthemums, these plants keep their place in the landscape year after year, even in colder climes. They form spherical open mounds that are two to three feet tall and broad. This genus of plants may be found from Eurasia to Indochina, as well as subarctic America and Canada. The term chrysanthemum comes from the Ancient Greek words chrysanthemum, which means golden flower."),
  Plants(
      plantImage: "assets/images/Flowers/Baboon flower.png",
      plantName: 'Baboon flower',
      plantType: "Flower ",
      ScientificName: "Freesia",
      temp: "16°C - 21°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "It's a good cut flower; single and double blooming varieties are available; well-drained soil is preferred. Plant in 5 in. (12.5 cm) deep corms that are spaced 4 in. (10 cm) apart. Below 25 degrees F, these plants are harmed (-2 degrees C)."),
  Plants(
      plantImage: "assets/images/Flowers/Peruvian Lily.png",
      plantName: 'Peruvian Lily',
      plantType: "Flower ",
      ScientificName: "Alstroemeria hybrids",
      temp: "26°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "Alstroemeria is commonly grown for cut flowers in greenhouses, although some species and hybrids, such as A. ligtu, may overwinter outdoors in North Carolina. In order to secure the plant's life over the winter, you should mulch it properly. This herbaceous perennial has upright stems and alternating, strap-like leaves with a constricted base. It enjoys full sun to moderate shade, as well as wet, well-drained soils. The roots are fleshy and fibrous, and they can be separated in the fall. A popular houseplant or interiorscape plant that may also be used as a delicate perennial in a flower garden"),
  Plants(
      plantImage: "assets/images/Flowers/Sword Lily.png",
      plantName: 'Sword Lily',
      plantType: "Flower ",
      ScientificName: "Gladiolus murielae ",
      temp: "12°C - 25°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "They are Fragrant cut blooms that open one at a time; thrives in moist borders; wait till soil has warmed before planting. It loves moist, well-drained soil.”"),
  Plants(
      plantImage: "assets/images/Flowers/Windflower.png",
      plantName: 'Windflower',
      plantType: "Flower ",
      ScientificName: "Anemone coronaria",
      temp: "10°C - 15°C ",
      water: " Water once every week",
      light: "meduim ",
      Description:
          "Flowers in mid-spring (April) and lasts approximately 4 weeks; about 10-12 inches tall; reproduces by seeds and tubers; and requires an annual thermoperiodic cycle of warm (50-65 degrees F) to cool (35-45 degrees F) to warm (50-65 degrees F). During the fall and spring, keep the plant wet."),
/*----------------------------------------------------------- OUTDOOR --------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Canary date palm.png",
      plantName: 'Canary date palm',
      plantType: "Outdoor ",
      ScientificName: "Phoenix canariensis",
      temp: "6°C - 37°C",
      water: " Water once every week",
      light: "Very high ",
      Description:
          "A palm endemic to the Canary Islands that is evergreen. It is linked to the date palm, and the fruit is edible, but in limited quantity and flavor."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Climbing Euonymus.png",
      plantName: 'Climbing Euonymus',
      plantType: "Outdoor ",
      ScientificName: "Euonymus fortunei",
      temp: "4°C ",
      water: " Water twice a week",
      light: "high ",
      Description:
          "Climbing Euonymus is a vine-like plant. The juvenile form is a viney groundcover, whereas the mature form is a shrub. It may be found in the forests and thickets of Japan's low mountains. Some cultivars (see list) are more of a vine, while others are more of a tiny shrub; nonetheless, both vining cultivars and shrubs may be invasive. Climbing Euonymus easily enters natural woods and dominates medium-sized trees. Climbing Euonymus is considered invasive in North Carolina and other southeast and northeast states"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Chinese Hibiscus.png",
      plantName: 'Chinese Hibiscus',
      plantType: "Outdoor ",
      ScientificName: "Hibiscus rosa-sinensis",
      temp: "10°C - 15°C ",
      water: " Water daily to twice every week",
      light: "high ",
      Description:
          "This tropical evergreen plant is notable for its large blooms, which may reach 6 inches in diameter and have a beautiful center tube. It may reach a height of 10 feet when grown outdoors. It may extend up to 8 feet, has glossy green leaves, and fades when temps dip below 60 degrees Fahrenheit. Pruning helps to keep this plant compact when grown in pots."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Bay Laurel.png",
      plantName: 'Bay Laurel',
      plantType: "Outdoor ",
      ScientificName: "Laurus nobilis",
      temp: "-6°C ",
      water: " Water once every 2-3 weeks",
      light: "meduim ",
      Description:
          "Bay Laurel is an evergreen tree or shrub in the laurel family that is endemic to the Mediterranean region. It may grow to be up to 60 feet tall in its natural environment. In North Carolina, it is often cultivated in a container as a patio or houseplant and is significantly smaller. The fragrant leaves are used in dishes like as soups and pasta. It has male and female plants, with only the females producing the drupes."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/African Lily.png",
      plantName: 'African Lily ',
      plantType: "Outdoor ",
      ScientificName: "Agapanthus africanus",
      temp: "21°C ",
      water: " Water twice a day",
      light: "very high ",
      Description:
          "This plant develops in tall clumps from fleshy rhizomes that generate short, tuberous roots and is endemic to southern Africa. Tufts of strap-like arching leaves 12-24 inches long and 1-2 inches broad are produced on short stalks. Although there are deciduous varieties, the most are evergreen and remain lovely even when not in flower. Flowers appear in clusters above the leaves and are tubular or bell-shaped, with a darker stripe down the center of each petal in blues, purples, or white. Summer blooming and, in frost-free locations, blooming into October."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Princess Lily.png",
      plantName: 'Princess Lily',
      plantType: "Outdoor ",
      ScientificName: "Alstroemeria",
      temp: "10°C ",
      water: " Water once every week",
      light: "low ",
      Description:
          "t is a herbaceous perennial that may be cultivated as an outdoor perennial in more temperate locations or as a container plant that can be carried indoors during the winter months. It may also be grown in the ground in milder locations and dug out over the winter to be brought in and stored in a cool, moist spot. When digging, use caution since the roots are highly fragile and easily damaged. This plant despises division. Spread the finger-like roots across a mound of dirt before planting, then cover the roots with extra soil. If the roots are left in the ground, they will expand and establish a colony"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Weeping Bottlebrush.png",
      plantName: 'Weeping Bottlebrush',
      plantType: "Outdoor ",
      ScientificName: "Melaleuca viminalis",
      temp: "10°C - 32°C ",
      water: " Water 2-3 times every week",
      light: "high ",
      Description:
          "Weeping Bottlebrush is a big shrub or small tree in the myrtle family with pendulous branches. Australia is the native land of this multi-trunked shrub"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Hardy Fushia.png",
      plantName: 'Hardy Fushia',
      plantType: "Outdoor ",
      ScientificName: "Fuchsia magellanica",
      temp: "21°C ",
      water: " Water once to twice every week",
      light: "high ",
      Description:
          "In the Onagraceae family, hardy fuchsia is a shade-loving, easy-to-grow perennial. This perennial has a lovely fountain-like structure and displays magnificent red blooms from summer until the first frost.If a harsh cold occurs, it will die back to the ground; if it does not die back, you may wish to trim the stems to the ground to revitalize growth in the spring.Plant them in hanging baskets, pots, or window boxes, or on the ground."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Lochinch Butterfly.png",
      plantName: 'Lochinch Butterfly',
      plantType: "Outdoor ",
      ScientificName: "Buddleja 'Lochinch' ",
      temp: "19°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "Buddleja 'Lochinch' thrives on ordinary, well-drained soil that receives full sun. If not cultivated in full light, it might turn weedy and blossom less vigorously. It, like other Buddlejas, does not thrive in damp, poorly draining environments. It will, however, grow on clay soil that has been adequately treated with compost. This Buddleja is not as resilient in the winter as other Buddlejas. In zone 6, it may die back to the roots and should be cultivated in a sheltered place with plenty of mulch"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Flowering Maple.png",
      plantName: 'Flowering Maple',
      plantType: "Outdoor ",
      ScientificName: "Abutilon x hybridum",
      temp: "10°C - 12°C ",
      water: " Water once to twice every week",
      light: "high ",
      Description:
          "Flowering Maple is a member of the mallow family and thrives on rich, consistently wet, well-drained soil. Protect this plant from the scorching afternoon sun, especially in hot summer locations. Outside of its native zone, this plant may be cultivated as a houseplant. Pinch plants to promote bushiness and a more robust growth pattern. It will bloom consistently throughout the growing season, with stunning bell-shaped blooms in a variety of hues. It may be clipped in the spring to keep it manageable for indoors. Give it a bright window in the house"),
  /*------------------------------------------*/
];
var Flowers = [
  Plants(
      plantImage: "assets/images/Flowers/Liluim.png",
      plantName: 'Liliums',
      plantType: "Flower ",
      ScientificName: "Lilium",
      temp: "32°C ",
      water: " Water once every week",
      light: "meduim ",
      Description:
          "Liliums are perennial herb summertime bulbous geophytes that survive winter well without the need to be dug up and stored. White or yellow fleshy scales cover the plant's bulbs. For the foliage, they prefer full sun to PM sun, shade for the roots, and well-drained, healthy soil and mulch to keep the root zone cool. Bulb rot can be caused by too damp soil, however it should not be allowed to dry out completely. From June to August, plant bulbs 8 feet deep in the fall and be rewarded with spectacular aromatic flowers."),
  Plants(
      plantImage: "assets/images/Flowers/Roses.png",
      plantName: 'Roses',
      plantType: "Flower ",
      ScientificName: "Rosa",
      temp: "21°C",
      water: " Water twice every week",
      light: "meduim ",
      Description:
          "Roses are beautiful blooming shrubs native to the Northern Hemisphere. Heat and frost are not a problem for roses.Botrytis, blights, powdery mildew, leaf spots, and anthracnose are just a few of the diseases that can affect your plants. Thrips, mites, aphids, scales, and whiteflies are some of the pests that might cause issues."),
  Plants(
      plantImage: "assets/images/Flowers/Tulip.png",
      plantName: 'Tulip',
      plantType: "Flower ",
      ScientificName: "Tulipa",
      temp: "12°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "Tulipa, or common Tulip, is a bulbous perennial plant with flowers in all solid or mixed hues except true blue that blooms in mid- to late spring. Tulips may be grown in full sun on organically rich, fertile, medium moisture, well-drained soils. They thrive in climates with mild, wet winters and hot, dry summers. They are usually cultivated in large groups."),
  Plants(
      plantImage: "assets/images/Flowers/Moon orchid.png",
      plantName: 'Moon orchid',
      plantType: "Flower ",
      ScientificName: "Phalaenopsis",
      temp: "26°C ",
      water: "Water once every 1-2 weeks",
      light: "low ",
      Description:
          "One of the most popular orchid families. Low light, warm temperatures, and high humidity are their preferred conditions. Aerial roots may photosynthesize and produce chlorophyll, which gives them a green tint"),
  Plants(
      plantImage: "assets/images/Flowers/Deptford Pink.png",
      plantName: 'Deptford Pink',
      plantType: "Flower ",
      ScientificName: "Dianthus armeria",
      temp: "-23°C min",
      water: " Water once every week",
      light: "high ",
      Description:
          "Dianthus armeria is a non-native that has become semi-naturalized throughout much of the United States after escaping gardens. The name 'Deptford Pink' comes from the town of Deptford in England, where the plant was previously plentiful. It thrives on disturbed soils at low to moderate elevations, such as abandoned fields, roadside ditches, and grassy pastures. It thrives in compacted, heavy, or nutrient-deficient clay, loam, or gravelly soil, tolerating drought but not poor drainage. It may be found in abundance in the North Carolina highlands and Piedmont, but is less prevalent in coastal locations."),
  Plants(
      plantImage: "assets/images/Flowers/Chrysanthemum.png",
      plantName: 'Chrysanthemum',
      plantType: "Flower ",
      ScientificName: "Chrysanthemum",
      temp: "25°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "The Asteraceae (daisy) family includes hardy chrysanthemums, which are easy to cultivate perennials. Unlike other annual chrysanthemums, these plants keep their place in the landscape year after year, even in colder climes. They form spherical open mounds that are two to three feet tall and broad. This genus of plants may be found from Eurasia to Indochina, as well as subarctic America and Canada. The term chrysanthemum comes from the Ancient Greek words chrysanthemum, which means golden flower."),
  Plants(
      plantImage: "assets/images/Flowers/Baboon flower.png",
      plantName: 'Baboon flower',
      plantType: "Flower ",
      ScientificName: "Freesia",
      temp: "16°C - 21°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "It's a good cut flower; single and double blooming varieties are available; well-drained soil is preferred. Plant in 5 in. (12.5 cm) deep corms that are spaced 4 in. (10 cm) apart. Below 25 degrees F, these plants are harmed (-2 degrees C)."),
  Plants(
      plantImage: "assets/images/Flowers/Peruvian Lily.png",
      plantName: 'Peruvian Lily',
      plantType: "Flower ",
      ScientificName: "Alstroemeria hybrids",
      temp: "26°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "Alstroemeria is commonly grown for cut flowers in greenhouses, although some species and hybrids, such as A. ligtu, may overwinter outdoors in North Carolina. In order to secure the plant's life over the winter, you should mulch it properly. This herbaceous perennial has upright stems and alternating, strap-like leaves with a constricted base. It enjoys full sun to moderate shade, as well as wet, well-drained soils. The roots are fleshy and fibrous, and they can be separated in the fall. A popular houseplant or interiorscape plant that may also be used as a delicate perennial in a flower garden"),
  Plants(
      plantImage: "assets/images/Flowers/Sword Lily.png",
      plantName: 'Sword Lily',
      plantType: "Flower ",
      ScientificName: "Gladiolus murielae ",
      temp: "12°C - 25°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "They are Fragrant cut blooms that open one at a time; thrives in moist borders; wait till soil has warmed before planting. It loves moist, well-drained soil.”"),
  Plants(
      plantImage: "assets/images/Flowers/Windflower.png",
      plantName: 'Windflower',
      plantType: "Flower ",
      ScientificName: "Anemone coronaria",
      temp: "10°C - 15°C ",
      water: " Water once every week",
      light: "meduim ",
      Description:
          "Flowers in mid-spring (April) and lasts approximately 4 weeks; about 10-12 inches tall; reproduces by seeds and tubers; and requires an annual thermoperiodic cycle of warm (50-65 degrees F) to cool (35-45 degrees F) to warm (50-65 degrees F). During the fall and spring, keep the plant wet."),
];
var Indoor = [
  Plants(
      plantImage: "assets/images/Indoor/Strelitzia.png",
      plantName: 'Birds of paradise ',
      plantType: "Indoor",
      ScientificName: "Strelitzia Reginae Banks",
      temp: " 18°C - 30°C ",
      water: " Once every 1-2 weeks",
      light: "high ",
      Description:
          "Strelitzia is a South African perennial plant genus with five species. It is a member of the Strelitziaceae family of plants. Because the blooms resemble those of birds-of-paradise, the genus is known as bird of paradise flower/plant. It's also known as the crane flower in South Africa.It grows best indoors in a bright, sunny location with healthy, loamy, well-drained soil"),
  Plants(
      plantImage: "assets/images/Indoor/Algerian Ivy.png",
      plantName: 'Algerian Ivy',
      plantType: "Indoor ",
      ScientificName: "Hedera algeriensis",
      temp: " 40°C - 90°C ",
      water: " Once every 9 days ",
      light: "Partial ",
      Description:
          " Algerian ivy is a woody climbing vine with big leaves. It grows to be 8-10 tall but may climb to great heights. It may be grown as a ground cover, but it must be limited because it can be weedy and may require extensive pruning to keep in check. To avoid leaf drop, moisture levels should be generally stable."),
  Plants(
      plantImage: "assets/images/Indoor/Mexican Snowball.png",
      plantName: 'Mexican snowball ',
      plantType: "Indoor ",
      ScientificName: "Echeveria",
      temp: " 15.5°C - 24°C ",
      water: " Once every 2-3 weeks",
      light: "high ",
      Description:
          "Echeveria is a genus of plants in the Crassulaceae family. Because of their gritty texture, these plants make wonderful complements in rock or crevice gardens. They're also a popular home plant due to their modest size at maturity, which is often less than a foot.These plants thrive in bright sunshine and well-drained soil with a small amount of organic materials. Too much direct sunshine can cause leaf burn, yet not enough light can cause color loss. Water once a week, never allowing the soil completely dry up. They are beginner-friendly houseplants that are simple to care for."),
  Plants(
      plantImage: "assets/images/Indoor/Corn plant.png",
      plantName: 'Corn plant ',
      plantType: "Indoor ",
      ScientificName: "Dracaena fragrans",
      temp: " 16°C - 24°C ",
      water: " Once every week",
      light: "medium ",
      Description:
          "Corn plant is a slow-growing, broadleaf evergreen perennial shrub native to tropical Africa, however it is commonly grown as a houseplant . It belongs to the Asparagaceae (asparagus) family and is known as a corn plant due to the tall, unbranched stem's similarity to a corn stalk.Indoors, keep it in bright to moderate filtered light. It thrives in low-light environments. The foliage can be burned by direct sunlight, but if the light levels are too low, the leaves will narrow. During the growth season, keep the soil wet, but reduce the amount of water used in the winter. Plant in a container with drainage holes and commercially packaged potting soil. Place a saucer beneath the plant to collect any excess water and then discard it."),
  Plants(
      plantImage: "assets/images/Indoor/Ceriman.png",
      plantName: 'Ceriman ',
      plantType: "Indoor ",
      ScientificName: "Monstera deliciosa",
      temp: " 15°C - 26°C ",
      water: " Once every week",
      light: "high ",
      Description:
          "Ceriman is a woody epiphytic vine that climbs via adventitious roots, not a philodendron. It begins life as a terrestrial plant, but when it comes into touch with a robust tree it can climb, it transforms into an epiphyte, sending down long roots to obtain nutrients from the soil. It is native to tropical parts of North and South America and may reach a height of 70 feet, while most home situations keep it around 6-8 feet. In its natural environment, delicious fruit is produced that is claimed to taste like a hybrid between a banana and a pineapple. The rest of the plant is poisonous. It can be grown as a houseplant."),
  Plants(
      plantImage: "assets/images/Indoor/Snake plant.png",
      plantName: 'Snake plant ',
      plantType: "Indoor ",
      ScientificName: "Dracaena trifasciata",
      temp: "21°C - 32°C ",
      water: " Once every week",
      light: "high ",
      Description:
          "Snake plant belongs to the Asparagaceae (asparagus) family and is an upright, clumping broadleaf evergreen houseplant. It is an African species.It will withstand very low light, so place it in a spot where it will only receive direct sunlight for a portion of the day, 2 to 6 hours. A well-drained soil and cautious watering are essential; overwatering will cause the roots to rot. Allow the soil to dry between waterings from spring to October. Only water once every one to two months in the winter. It can withstand low humidity and temperatures as low as 50 degrees. This plant is long-lasting, easy to cultivate, and hard to destroy."),
  Plants(
      plantImage: "assets/images/Indoor/Bamboo palm.png",
      plantName: 'Bamboo Palm  ',
      plantType: "Indoor ",
      ScientificName: "Chamaedorea elegans",
      temp: " 18°C - 26°C ",
      water: " Once every 2 weeks",
      light: "low ",
      Description:
          "Bamboo Palm is a subtropical palm that grows up to 7 feet tall in indoor situations. It is upright, spreading, and multistemmed. Because it survives in inside settings that other plants can't, it's one of the most popular indoor palms. The leaves are elegantly spread out and drooping. It can grow to be 6-7 feet tall and 2-3 feet wide when planted outside in a temperate zone; as a houseplant, it only grows to be 2-7 feet tall."),
  Plants(
      plantImage: "assets/images/Indoor/Lady palm.png",
      plantName: 'Lady palm ',
      plantType: "Indoor ",
      ScientificName: "Rhapis excelsa",
      temp: " 15°C - 26°C ",
      water: " Several times a week",
      light: "low ",
      Description:
          "The Lady Palm is a cycad-like, evergreen fan palm. As an indoor plant, it prefers indirect light, can tolerate heavy shadow, and requires low humidity. Except in the winter, when watering can be reduced, it requires well-drained potting soil and regular watering. Because of its chilly air tolerance in the winter, it's a wonderful specimen to use near doors. During the growth season, use a balanced slow-release fertilizer."),
  Plants(
      plantImage: "assets/images/Indoor/Baby Rubber plant.png",
      plantName: 'Baby Rubberplant ',
      plantType: "Indoor ",
      ScientificName: "Peperomia obtusifolia",
      temp: "26°C ",
      water: " Once every 1-2 weeks",
      light: "high ",
      Description:
          "It is a tropical evergreen herbaceous shrub that grows up to 2' tall and is upright and bushy. Key ID features include glossy cupped, obovate leaves on branching, distinct stems and pink-tinged petioles. Leaf attachment is a kind of sub-peltate attachment. This plant is frequently used as a desktop or indoor specimen. This plant, especially non-variegated varieties, can survive low light for several months without becoming stressed. Wet soil, extremely dry soil, and drafty places are not suitable for it. This plant requires bright indirect sunshine, dry soil, and a relative humidity of medium to low. The leaves will be burned if the sun is too bright or direct. This plant is widely cultivated as a houseplant because it has no severe insect or disease concerns."),
  Plants(
      plantImage: "assets/images/Indoor/Asparagus Fern.png",
      plantName: 'Asparagus Fern ',
      plantType: "Indoor ",
      ScientificName: "Asparagus plumosus",
      temp: "21°C ",
      water: " Once every 1-2 weeks",
      light: "high ",
      Description:
          "If support is provided, asparagus fern grows into a wiry shrub with scrambling or climbing branches. It's one of the easiest houseplants to cultivate and maintain. Asparagus ferns are asparagus, not ferns. The popular names are derived from their look, which resembles delicate, lacy ferns with their plumes of feathery leaf.They require strong indirect light that is free of direct sunlight and heavy humidity. Yellow needles will fall as a result of a lack of light and water. The yellow needles will not regenerate if these conditions harm the plant; however, if the correct conditions are fulfilled, new growth will sprout at the soil line."),
];
var Outdoor = [
  Plants(
      plantImage: "assets/images/Outdoor/Canary date palm.png",
      plantName: 'Canary date palm',
      plantType: "Outdoor ",
      ScientificName: "Phoenix canariensis",
      temp: "6°C - 37°C",
      water: " Water once every week",
      light: "Very high ",
      Description:
          "A palm endemic to the Canary Islands that is evergreen. It is linked to the date palm, and the fruit is edible, but in limited quantity and flavor."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Climbing Euonymus.png",
      plantName: 'Climbing Euonymus',
      plantType: "Outdoor ",
      ScientificName: "Euonymus fortunei",
      temp: "4°C ",
      water: " Water twice a week",
      light: "high ",
      Description:
          "Climbing Euonymus is a vine-like plant. The juvenile form is a viney groundcover, whereas the mature form is a shrub. It may be found in the forests and thickets of Japan's low mountains. Some cultivars (see list) are more of a vine, while others are more of a tiny shrub; nonetheless, both vining cultivars and shrubs may be invasive. Climbing Euonymus easily enters natural woods and dominates medium-sized trees. Climbing Euonymus is considered invasive in North Carolina and other southeast and northeast states"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Chinese Hibiscus.png",
      plantName: 'Chinese Hibiscus',
      plantType: "Outdoor ",
      ScientificName: "Hibiscus rosa-sinensis",
      temp: "10°C - 15°C ",
      water: " Water daily to twice every week",
      light: "high ",
      Description:
          "This tropical evergreen plant is notable for its large blooms, which may reach 6 inches in diameter and have a beautiful center tube. It may reach a height of 10 feet when grown outdoors. It may extend up to 8 feet, has glossy green leaves, and fades when temps dip below 60 degrees Fahrenheit. Pruning helps to keep this plant compact when grown in pots."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Bay Laurel.png",
      plantName: 'Bay Laurel',
      plantType: "Outdoor ",
      ScientificName: "Laurus nobilis",
      temp: "-6°C ",
      water: " Water once every 2-3 weeks",
      light: "meduim ",
      Description:
          "Bay Laurel is an evergreen tree or shrub in the laurel family that is endemic to the Mediterranean region. It may grow to be up to 60 feet tall in its natural environment. In North Carolina, it is often cultivated in a container as a patio or houseplant and is significantly smaller. The fragrant leaves are used in dishes like as soups and pasta. It has male and female plants, with only the females producing the drupes."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/African Lily.png",
      plantName: 'African Lily ',
      plantType: "Outdoor ",
      ScientificName: "Agapanthus africanus",
      temp: "21°C ",
      water: " Water twice a day",
      light: "very high ",
      Description:
          "This plant develops in tall clumps from fleshy rhizomes that generate short, tuberous roots and is endemic to southern Africa. Tufts of strap-like arching leaves 12-24 inches long and 1-2 inches broad are produced on short stalks. Although there are deciduous varieties, the most are evergreen and remain lovely even when not in flower. Flowers appear in clusters above the leaves and are tubular or bell-shaped, with a darker stripe down the center of each petal in blues, purples, or white. Summer blooming and, in frost-free locations, blooming into October."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Princess Lily.png",
      plantName: 'Princess Lily',
      plantType: "Outdoor ",
      ScientificName: "Alstroemeria",
      temp: "10°C ",
      water: " Water once every week",
      light: "low ",
      Description:
          "t is a herbaceous perennial that may be cultivated as an outdoor perennial in more temperate locations or as a container plant that can be carried indoors during the winter months. It may also be grown in the ground in milder locations and dug out over the winter to be brought in and stored in a cool, moist spot. When digging, use caution since the roots are highly fragile and easily damaged. This plant despises division. Spread the finger-like roots across a mound of dirt before planting, then cover the roots with extra soil. If the roots are left in the ground, they will expand and establish a colony"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Weeping Bottlebrush.png",
      plantName: 'Weeping Bottlebrush',
      plantType: "Outdoor ",
      ScientificName: "Melaleuca viminalis",
      temp: "10°C - 32°C ",
      water: " Water 2-3 times every week",
      light: "high ",
      Description:
          "Weeping Bottlebrush is a big shrub or small tree in the myrtle family with pendulous branches. Australia is the native land of this multi-trunked shrub"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Hardy Fushia.png",
      plantName: 'Hardy Fushia',
      plantType: "Outdoor ",
      ScientificName: "Fuchsia magellanica",
      temp: "21°C ",
      water: " Water once to twice every week",
      light: "high ",
      Description:
          "In the Onagraceae family, hardy fuchsia is a shade-loving, easy-to-grow perennial. This perennial has a lovely fountain-like structure and displays magnificent red blooms from summer until the first frost.If a harsh cold occurs, it will die back to the ground; if it does not die back, you may wish to trim the stems to the ground to revitalize growth in the spring.Plant them in hanging baskets, pots, or window boxes, or on the ground."),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Lochinch Butterfly.png",
      plantName: 'Lochinch Butterfly',
      plantType: "Outdoor ",
      ScientificName: "Buddleja 'Lochinch' ",
      temp: "19°C ",
      water: " Water once every week",
      light: "high ",
      Description:
          "Buddleja 'Lochinch' thrives on ordinary, well-drained soil that receives full sun. If not cultivated in full light, it might turn weedy and blossom less vigorously. It, like other Buddlejas, does not thrive in damp, poorly draining environments. It will, however, grow on clay soil that has been adequately treated with compost. This Buddleja is not as resilient in the winter as other Buddlejas. In zone 6, it may die back to the roots and should be cultivated in a sheltered place with plenty of mulch"),
  /*------------------------------------------*/
  Plants(
      plantImage: "assets/images/Outdoor/Flowering Maple.png",
      plantName: 'Flowering Maple',
      plantType: "Outdoor ",
      ScientificName: "Abutilon x hybridum",
      temp: "10°C - 12°C ",
      water: " Water once to twice every week",
      light: "high ",
      Description:
          "Flowering Maple is a member of the mallow family and thrives on rich, consistently wet, well-drained soil. Protect this plant from the scorching afternoon sun, especially in hot summer locations. Outside of its native zone, this plant may be cultivated as a houseplant. Pinch plants to promote bushiness and a more robust growth pattern. It will bloom consistently throughout the growing season, with stunning bell-shaped blooms in a variety of hues. It may be clipped in the spring to keep it manageable for indoors. Give it a bright window in the house"),
];
