"""Собирает prompts.json для African Penguin из purpose-built описаний.

Каждый промпт = сцена из storyboard.md (дословно та же идея, не generic) +
anatomy-lock подходящей стадии роста (взрослый / птенец-пух / линяющий /
ювенильный) + объектив/свет под тип плана. Палитра почти везде яркая,
солнечная, бирюзово-белая — по прямой просьбе: "делай яркие изображения".

Запуск: python3 build_prompts.py
"""

import json
from pathlib import Path

OUT = Path(__file__).parent / "prompts.json"

INTRO = "Photorealistic wildlife documentary photograph. "

BOILERPLATE = (
    " BBC Earth National Geographic documentary realism. Clean natural "
    "photograph, no text, no watermark, no vehicles."
)
NO_HUMANS = " No humans."
ONE_HAND = " No humans other than the single gloved hand described."

ADULT = (
    "Correct African penguin (Spheniscus demersus) anatomy: compact "
    "torpedo-shaped body about 60-70cm tall, glossy black head and back, "
    "crisp white chest and belly crossed by one black horseshoe-shaped "
    "band, scattered small black spots unique to the individual on the "
    "white chest, bare pink patches of skin above each eye, short black "
    "flippers, short black bill with a thin pale grey band near the tip, "
    "pink legs and webbed feet, upright waddling stance on land. Exactly "
    "two flippers, one head, one bill. Not an Emperor, King, or Gentoo "
    "penguin — no orange neck patch, no yellow head plumes, no long tail."
)

CHICK_WET = (
    "Correct newly hatched African penguin chick anatomy: tiny fragile "
    "body covered in wet or fluffy charcoal-grey down, no adult markings, "
    "eyes shut or barely open, small dark soft bill, oversized greyish-pink "
    "feet and legs disproportionate to the body. Exactly two flippers, one "
    "head."
)

CHICK_DOWN = (
    "Correct African penguin chick anatomy at several weeks old: plump "
    "body fully covered in soft brownish-grey down, dark eyes open and "
    "alert, small dark bill, greyish-pink legs and webbed feet, no "
    "black-and-white adult plumage, no pink eye patches yet. Exactly two "
    "flippers, one head."
)

CHICK_PATCHING = (
    "Correct African penguin chick anatomy in early molt: down starting "
    "to thin and patch at the edges, first sleek dark juvenile feathers "
    "just visible underneath, dark eyes, small dark bill, no adult "
    "markings yet. Exactly two flippers, one head."
)

MOLTING = (
    "Correct molting African penguin chick anatomy: body patchy, tufts of "
    "loose brownish-grey down still clinging in places, sleek blue-grey "
    "juvenile feathers emerging underneath, awkward half-bald appearance, "
    "dark eyes, short black bill. Exactly two flippers, one head."
)

JUVENILE = (
    "Correct juvenile African penguin anatomy after the first molt: sleek "
    "streamlined body, plain blue-grey back, plain white chest and belly "
    "with no black horseshoe band yet, no pink eye patches yet, smaller "
    "and slimmer than a full adult, short black bill. Exactly two "
    "flippers, one head."
)

GULL = (
    "Correct kelp gull anatomy: heavy white body, black back and wings, "
    "thick yellow bill with a red spot near the tip, pale eye, pink legs. "
    "Exactly two wings, one head."
)

MONGOOSE = (
    "Correct small grey mongoose anatomy: low slender body, short legs, "
    "pointed face, long tapering tail, coarse grizzled grey-brown fur. "
    "Exactly four legs, one head, one tail."
)

# lighting variants -----------------------------------------------------
BRIGHT = (
    "Bright clean coastal midday sunlight, saturated turquoise water, "
    "white sand and pale granite boulders, deep blue sky, crisp saturated "
    "colour."
)
GOLDEN = (
    "Warm golden-hour coastal light, long soft shadows, saturated orange "
    "and turquoise tones, still bright and vivid, not dim."
)
UNDERWATER = (
    "Bright clear turquoise underwater light, sunbeams filtering down "
    "through the water, saturated blue-green colour, strong visibility."
)

# lens variants -----------------------------------------------------------
def lens(kind: str) -> str:
    return {
        "macro": "Shot on a macro lens at close range, razor-thin depth of field.",
        "tele": "Shot on a 400mm telephoto lens at f/4, camera at animal eye level, heavy lens compression, shallow depth of field.",
        "wide": "Shot on a 24mm wide lens, deep focus, expansive framing.",
        "under": "Shot underwater on a wide fisheye housing lens, natural light rays visible.",
        "portrait": "Shot on a 400mm telephoto lens at f/2.8, camera at animal eye level, creamy shallow depth of field.",
    }[kind]


FRAMES = [
    # tc, name, scene, locks(list), light, lens_kind
    ("0:00", "0_00",
     "A wide shot of a stretch of granite boulder coastline that could hold thousands of penguins, but only a scattered dozen tiny African penguins are visible on the rocks in the distance, turquoise ocean beyond.",
     [], BRIGHT, "wide"),
    ("0:07", "0_07",
     "A single adult African penguin standing rigid over a shallow scrape nest tucked under a low bush, head swivelling, alert, on guard, nobody else in frame.",
     [ADULT], BRIGHT, "tele"),
    ("0:14", "0_14",
     "Close on a nest scrape holding two pale bluish-white African penguin eggs, an adult penguin lowering itself to cover them completely, wings tucked tight.",
     [ADULT], BRIGHT, "tele"),
    ("0:21", "0_21",
     "Full-body side portrait of an adult African penguin standing on a sunlit granite boulder, whole animal visible head to feet.",
     [ADULT], BRIGHT, "portrait"),
    ("0:28", "0_28",
     "Extreme macro of the bare pink gland patch above an African penguin's eye, fine skin detail bright against black-and-white feathers.",
     [ADULT], BRIGHT, "macro"),
    ("0:35", "0_35",
     "A raft of African penguins porpoising fast through clear turquoise water just offshore, breaking the surface together in a line of bright splashes.",
     [ADULT], BRIGHT, "wide"),
    ("0:42", "0_42",
     "Wide shot of a colony stretch showing many natural penguin nest scrapes tucked under low coastal vegetation and beside sunlit boulders, no artificial structures anywhere, small distant adult penguins around them.",
     [], BRIGHT, "wide"),
    ("0:49", "0_49",
     "An adult African penguin braying, head thrown fully back, bill wide open mid-call, chest puffed, bright sun.",
     [ADULT], BRIGHT, "portrait"),
    ("0:56", "0_56",
     "Iconic wide shot of a Boulders-Beach-style coastline: huge rounded granite boulders, white sand, bright turquoise water, a handful of small distant African penguins scattered among the rocks.",
     [], BRIGHT, "wide"),
    ("1:03", "1_03",
     "Close profile portrait of an adult African penguin, sharp dark eye, vivid pink gland patch, black and white plumage crisp in bright sun.",
     [ADULT], BRIGHT, "portrait"),
    ("1:10", "1_10",
     "A mated pair of adult African penguins standing bill to bill on a sunlit boulder, mutual preening, an intimate bonding moment.",
     [ADULT], BRIGHT, "tele"),
    ("1:17", "1_17",
     "The entrance to a natural nest scrape (a shallow bowl of trampled dry grass and sand, no artificial structure) tucked under a low bush between two sunlit boulders, one adult African penguin standing guard at the opening in bright light.",
     [ADULT], BRIGHT, "wide"),
    ("1:24", "1_24",
     "Inside a natural nest scrape under a low bush, a shallow bowl dug into sand and dry grass with no artificial structure, soft shaded light, two pale bluish-white African penguin eggs resting on a thin lining of dry grass and feathers.",
     [], BRIGHT, "macro"),
    ("1:31", "1_31",
     "An adult African penguin, the female, settling onto two eggs, brood patch pressed to the shells, wings half-lifted, careful movement, bright light.",
     [ADULT], BRIGHT, "tele"),
    ("1:38", "1_38",
     "An adult African penguin, the male, returning from the sea, waddling up bright white sand, silhouetted against sparkling turquoise water.",
     [ADULT], BRIGHT, "wide"),
    ("1:45", "1_45",
     "The changeover at a penguin nest: one adult African penguin arriving as the other steps out toward the water, bright daylight.",
     [ADULT], BRIGHT, "tele"),
    ("1:52", "1_52",
     "A kelp gull circling low over the sunlit penguin colony, pale eye fixed downward, wings sharp against a bright blue sky.",
     [GULL], BRIGHT, "tele"),
    ("1:59", "1_59",
     "A kelp gull landing two metres from an unguarded African penguin nest, head cocked, watching two pale eggs, bright light.",
     [GULL], BRIGHT, "tele"),
    ("2:06", "2_06",
     "An adult African penguin lunging at a kelp gull with wings thrown open and bill snapping, the gull already lifting off in a burst of feathers, bright sun.",
     [ADULT, GULL], BRIGHT, "tele"),
    ("2:13", "2_13",
     "Macro of one pale African penguin egg in bright light, a fine star-shaped crack running across the shell.",
     [], BRIGHT, "macro"),
    ("2:20", "2_20",
     "Macro of an African penguin egg, the crack widening, a small grey egg tooth pushing through from inside.",
     [], BRIGHT, "macro"),
    ("2:27", "2_27",
     "The first African penguin chick emerging from its egg, wet charcoal-grey down plastered flat, eyes shut, tiny against the nest lining, bright light.",
     [CHICK_WET], BRIGHT, "macro"),
    ("2:34", "2_34",
     "The same newly hatched African penguin chick minutes later, down already fluffing up, eyes open, absurdly oversized feet beside an adult penguin's foot, bright light.",
     [CHICK_WET, ADULT], BRIGHT, "macro"),
    ("2:41", "2_41",
     "An adult African penguin's black hooked bill lowering gently to nudge a wet newly hatched chick, bright light.",
     [ADULT, CHICK_WET], BRIGHT, "tele"),
    ("2:48", "2_48",
     "A second African penguin egg hatching two days after the first, beside a chick already dry and twice its size, bright light.",
     [CHICK_WET], BRIGHT, "macro"),
    ("2:55", "2_55",
     "Two African penguin chicks pressed into the nest lining together, the size gap between them obvious in bright daylight.",
     [CHICK_WET], BRIGHT, "tele"),
    ("3:02", "3_02",
     "An adult African penguin regurgitating partially digested fish directly into a chick's open bill, close and detailed, bright light.",
     [ADULT, CHICK_DOWN], BRIGHT, "tele"),
    ("3:09", "3_09",
     "A larger African penguin chick feeding eagerly while a smaller sibling waits beside it, bill raised, not yet reaching, bright daylight.",
     [CHICK_DOWN], BRIGHT, "tele"),
    ("3:16", "3_16",
     "Close on an African penguin chick's bill pressed deep into an adult's throat during feeding, bright light.",
     [CHICK_DOWN, ADULT], BRIGHT, "macro"),
    ("3:23", "3_23",
     "Midday sun: an adult African penguin standing over two down-covered chicks, wings spread wide as a sunshade, bright light and hard shadow.",
     [ADULT, CHICK_DOWN], BRIGHT, "tele"),
    ("3:30", "3_30",
     "A small grey mongoose slipping low and quick along sunlit rocks at the edge of the penguin colony.",
     [MONGOOSE], BRIGHT, "tele"),
    ("3:37", "3_37",
     "An adult African penguin standing tall between two chicks and an approaching mongoose, bill lowered in threat, wings half spread, bright light.",
     [ADULT, MONGOOSE], BRIGHT, "tele"),
    ("3:44", "3_44",
     "A small grey mongoose retreating between two sunlit boulders, the danger passing, bright unchanged daylight.",
     [MONGOOSE], BRIGHT, "tele"),
    ("3:51", "3_51",
     "Two African penguin chicks asleep in a grey down heap at dusk, warm golden light, one adult standing sentinel above them.",
     [CHICK_DOWN, ADULT], GOLDEN, "tele"),
    ("3:58", "3_58",
     "Bright dawn on an African penguin nest, thin mist lifting off the sea behind, one down-covered chick stronger and more alert than the other.",
     [CHICK_DOWN], BRIGHT, "tele"),
    ("4:05", "4_05",
     "Wide shot along a sunlit boulder shoreline — nest after nest, many empty and overgrown with dry grass, only a few still holding a guarding adult African penguin.",
     [], BRIGHT, "wide"),
    ("4:12", "4_12",
     "A weathered old African penguin nest scrape with no bird at all, dry grass grown through it, bright daylight making the emptiness obvious.",
     [], BRIGHT, "tele"),
    ("4:19", "4_19",
     "An occupied African penguin nest with a healthy alert adult and two chicks, a clear contrast against overgrown empty nests visible nearby, bright light.",
     [ADULT, CHICK_DOWN], BRIGHT, "tele"),
    ("4:26", "4_26",
     "A small fishing trawler visible on the sparkling bright horizon beyond open ocean foraging waters.",
     [], BRIGHT, "wide"),
    ("4:33", "4_33",
     "An adult African penguin diving hard through clear sunlit water, chasing a scattering shoal of small silver anchovies that thins as it swims.",
     [ADULT], BRIGHT, "under"),
    ("4:40", "4_40",
     "An adult African penguin surfacing with a single small fish in its bill, the rest of the shoal already gone deeper, bright sparkling water.",
     [ADULT], BRIGHT, "tele"),
    ("4:47", "4_47",
     "An adult African penguin returning to the nest lighter and later than before, two chicks waiting eagerly, bright afternoon light.",
     [ADULT, CHICK_DOWN], BRIGHT, "tele"),
    ("4:54", "4_54",
     "Two African penguin chicks at about four weeks old, down thickened from charcoal to soft brown-grey, noticeably bigger, bright sun.",
     [CHICK_DOWN], BRIGHT, "tele"),
    ("5:01", "5_01",
     "Two well-grown African penguin chicks alone at the nest with no adult in frame, old enough to be left while both parents forage at sea, bright light.",
     [CHICK_DOWN], BRIGHT, "tele"),
    ("5:08", "5_08",
     "Two African penguin chicks huddled close together for warmth and safety, no adult present, bright open colony around them.",
     [CHICK_DOWN], BRIGHT, "tele"),
    ("5:15", "5_15",
     "A kelp gull circling low again, testing an undefended African penguin nest against a clear blue sky.",
     [GULL], BRIGHT, "tele"),
    ("5:22", "5_22",
     "The stronger African penguin chick standing tall and pecking hard at a kelp gull that landed too close, driving it back on its own, bright light.",
     [CHICK_DOWN, GULL], BRIGHT, "tele"),
    ("5:29", "5_29",
     "Two adult African penguins returning together at golden-hour light, two chicks rushing eagerly to meet them.",
     [ADULT, CHICK_DOWN], GOLDEN, "tele"),
    ("5:36", "5_36",
     "Close on an African penguin chick's face in bright light, down starting to patch and thin, first true feathers showing at the edges.",
     [CHICK_PATCHING], BRIGHT, "macro"),
    ("5:43", "5_43",
     "An African penguin chick's flippers held out awkwardly in bright sun, still soft and downy compared to an adult's sleek flippers.",
     [CHICK_PATCHING], BRIGHT, "tele"),
    ("5:50", "5_50",
     "Two African penguin chicks side by side, clearly different sizes even at the same age, bright daylight, one further into molt than the other.",
     [CHICK_PATCHING, CHICK_DOWN], BRIGHT, "tele"),
    ("5:57", "5_57",
     "A smaller African penguin chick lagging behind at a feeding, always last to reach the adult's bill, bright light.",
     [CHICK_DOWN, ADULT], BRIGHT, "tele"),
    ("6:04", "6_04",
     "A larger African penguin chick's down patching badly in bright sun, sleek blue-grey juvenile feathers pushing through underneath.",
     [MOLTING], BRIGHT, "tele"),
    ("6:11", "6_11",
     "Tufts of loose grey African penguin down scattered across a sunlit nest floor and stuck to nearby rocks, a half-molted chick visible behind.",
     [MOLTING], BRIGHT, "wide"),
    ("6:18", "6_18",
     "An African penguin chick picking at its own molting down with its bill, awkward and half-bald, comic in bright light.",
     [MOLTING], BRIGHT, "tele"),
    ("6:25", "6_25",
     "Full juvenile African penguin plumage emerging: blue-grey back, plain white belly, no adult markings yet, clean bright light.",
     [JUVENILE], BRIGHT, "portrait"),
    ("6:32", "6_32",
     "A juvenile African penguin standing fully upright for the first time, sleek and streamlined, barely recognizable against its downy hatchling self, bright sun.",
     [JUVENILE], BRIGHT, "portrait"),
    ("6:39", "6_39",
     "A smaller African penguin chick still half in brown-grey down beside a sleek juvenile sibling, clearly weeks behind, bright light.",
     [CHICK_DOWN, JUVENILE], BRIGHT, "tele"),
    ("6:46", "6_46",
     "A juvenile African penguin standing at the nest entrance, looking out toward sparkling turquoise water with real interest for the first time.",
     [JUVENILE], BRIGHT, "tele"),
    ("6:53", "6_53",
     "A juvenile African penguin taking its first steps away from the nest, waddling stiffly over bright sunlit rocks.",
     [JUVENILE], BRIGHT, "tele"),
    ("7:00", "7_00",
     "A juvenile African penguin stopping at the tideline, a wave washing over its feet, flinching back from the white foam, bright light.",
     [JUVENILE], BRIGHT, "tele"),
    ("7:07", "7_07",
     "A small cluster of juvenile African penguins at the water's edge, none yet willing to enter, jostling each other forward in bright light.",
     [JUVENILE], BRIGHT, "wide"),
    ("7:14", "7_14",
     "One juvenile African penguin finally pushed in by the crowd behind it, vanishing under a breaking wave, bright spray.",
     [JUVENILE], BRIGHT, "tele"),
    ("7:21", "7_21",
     "Underwater view in clear turquoise light: a juvenile African penguin suddenly transformed, torpedo-shaped, flying through the water with total control.",
     [JUVENILE], UNDERWATER, "under"),
    ("7:28", "7_28",
     "A juvenile African penguin porpoising alongside adults at the surface, keeping pace despite never having swum before, bright spray.",
     [JUVENILE, ADULT], BRIGHT, "wide"),
    ("7:35", "7_35",
     "A juvenile African penguin diving down toward a shoal of small silver fish, adult penguins doing the same around it in clear sunlit water.",
     [JUVENILE, ADULT], BRIGHT, "under"),
    ("7:42", "7_42",
     "A juvenile African penguin surfacing with its first fish caught entirely on its own, water bright and sparkling.",
     [JUVENILE], BRIGHT, "tele"),
    ("7:49", "7_49",
     "The smaller African penguin chick, still weeks behind, finally molting too, alone at the sunlit empty nest.",
     [MOLTING], BRIGHT, "tele"),
    ("7:56", "7_56",
     "Wide shot: the once-tiny chick now a young adult African penguin, indistinguishable from the mature birds around it, resting on a boulder among the colony in bright light.",
     [ADULT], BRIGHT, "wide"),
    ("8:03", "8_03",
     "A researcher's single gloved hand gently fitting a small numbered flipper band on a calm adult African penguin, careful conservation monitoring, bright light.",
     [ADULT], BRIGHT, "tele"),
    ("8:10", "8_10",
     "A long stretch of bare, guano-stripped coastal rock with only a few sparse natural nest scrapes and almost no vegetation left, most of the ground empty and exposed, no artificial structures anywhere, under a bright sky.",
     [], BRIGHT, "wide"),
    ("8:17", "8_17",
     "A rescued, cleaned adult African penguin being released from a carrier crate onto the beach, walking free toward the water, bright light.",
     [ADULT], BRIGHT, "tele"),
    ("8:24", "8_24",
     "The penguin colony at golden hour: adult and juvenile African penguins and a scatter of empty nest sites all visible in one warm-lit frame.",
     [ADULT, JUVENILE], GOLDEN, "wide"),
    ("8:31", "8_31",
     "Close on the original chick, now a young adult African penguin, standing at the water's edge beside its parent in bright light.",
     [ADULT], BRIGHT, "tele"),
    ("8:38", "8_38",
     "A parent and its grown offspring, two adult African penguins, entering the sea together, swimming side by side through clear turquoise water.",
     [ADULT], BRIGHT, "wide"),
    ("8:45", "8_45",
     "Wide elevated shot of the whole penguin colony beach, small against the boulders and the ocean, nowhere near the size the beach could hold.",
     [], BRIGHT, "wide"),
    ("8:52", "8_52",
     "A young adult African penguin porpoising out alone into open sunlit water, heading out to sea as an independent adult.",
     [ADULT], BRIGHT, "wide"),
    ("8:59", "8_59",
     "Final wide shot: a bright, mostly empty stretch of boulder coastline at golden hour, a handful of small penguins silhouetted against the color, the vast ocean beyond them.",
     [], GOLDEN, "wide"),
]


def build_prompt(scene: str, locks: list[str], light: str, lens_kind: str, name: str) -> str:
    parts = [INTRO, scene]
    for lock in locks:
        parts.append(" " + lock)
    parts.append(" " + lens(lens_kind))
    parts.append(" " + light)
    parts.append(BOILERPLATE)
    if "researcher" in scene.lower() or "gloved hand" in scene.lower():
        parts.append(ONE_HAND)
    else:
        parts.append(NO_HUMANS)
    return "".join(parts)


def main() -> None:
    out = []
    for tc, name, scene, locks, light, lens_kind in FRAMES:
        style = "golden" if light is GOLDEN else ("underwater" if light is UNDERWATER else "bright")
        out.append({
            "tc": tc,
            "name": name,
            "style": style,
            "prompt": build_prompt(scene, locks, light, lens_kind, name),
        })
    OUT.write_text(json.dumps(out, indent=1, ensure_ascii=False) + "\n")
    print(f"wrote {len(out)} frames to {OUT}")


if __name__ == "__main__":
    main()
