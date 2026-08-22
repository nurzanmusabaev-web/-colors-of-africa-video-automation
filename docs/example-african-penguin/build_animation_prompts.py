"""Собирает промпты анимации (image-to-video, kling3_0_turbo) для 78 кадров.

Читает images/manifest.json (там уже лежат job_id сгенерированных кадров —
используются напрямую как start_image, без повторной загрузки) и добавляет
per-frame описание движения + один из двух общих суффиксов темпа:

SHARP — резкие, реалтаймовые движения: чайка, мангуст, вся охота/ловля рыбы,
все сцены в воде. Резкие повороты, рывки, хватание/щёлканье клювом, скачки,
внезапная смена направления, без замедления.

GENTLE — лёгкое кинематографичное замедление по умолчанию, для всего
остального (кормление, вылупление, портреты, пейзажи, нежные моменты).

Запуск: python3 build_animation_prompts.py
"""

import json
from pathlib import Path

HERE = Path(__file__).parent

SHARP_SUFFIX = (
    "Motion pacing: sharp, sudden, real-time speed — abrupt turns, jerky "
    "strikes, snapping bites, quick darting jumps, sudden changes of "
    "direction. No slow motion, no dreamy smoothness — fast and startling "
    "like a real wildlife camera catching a fast event."
)
GENTLE_SUFFIX = (
    "Motion pacing: natural, smooth, slightly slow cinematic documentary "
    "motion, subtle camera drift, no sudden or jerky movement."
)

SHARP_INDICES = {5, 16, 17, 18, 30, 31, 32, 39, 40, 45, 46, 60, 61, 62, 63, 64, 65, 66, 74, 76}

# index -> motion description (what happens across the 7s, not a restatement of the still)
MOTION = {
    0: "Camera holds on the wide coastline, a couple of distant penguins shift and waddle a few steps, gentle waves roll in and recede along the shore.",
    1: "The penguin's head swivels side to side scanning for danger, weight shifting slightly foot to foot, feathers ruffling faintly in the sea breeze.",
    2: "The adult finishes lowering onto the eggs, wings settling and folding down snugly, a final small adjustment of posture.",
    3: "The penguin shifts its weight, turns its head slightly toward camera, feathers ruffle gently in the breeze.",
    4: "Slow macro push toward the pink gland patch, faint skin texture and a few feather-barbs trembling in the breeze.",
    5: "The raft of penguins porpoises hard through the water, breaking the surface again and again in quick arcs, spray flying.",
    6: "Distant penguins shuffle between nest scrapes, one flaps briefly, ambient colony activity across the wide frame.",
    7: "The penguin's head snaps back and the bill opens wide for the bray call, chest pumping, then settles back to a normal stance.",
    8: "Waves roll steadily onto the sand, a couple of distant penguins waddle unhurried among the boulders.",
    9: "Slow head turn in profile, a single blink, feathers shifting slightly in the wind.",
    10: "The pair gently nibble and preen each other's neck feathers, swaying slightly together.",
    11: "The guarding adult shifts its stance at the nest entrance, head turning to check the surroundings.",
    12: "Soft directional light drifts subtly across the two eggs, no other motion.",
    13: "The female settles her weight fully onto the eggs, wings making a final small adjustment.",
    14: "The male continues waddling up the sand at a steady natural pace, water glinting behind him.",
    15: "One adult arrives at the nest as the other turns and starts walking away toward the water.",
    16: "The gull banks sharply and circles low, wings snapping against the air, sudden shifts of angle as it scans the ground.",
    17: "The gull drops abruptly and lands hard, wings folding fast, head snapping side to side as it eyes the eggs.",
    18: "The adult penguin lunges forward explosively, wings snapping open, bill jabbing at the gull, which bursts upward in a sudden scramble of feathers.",
    19: "The hairline crack in the shell inches wider almost imperceptibly, a tiny fragment flexing.",
    20: "The egg tooth pushes further through the crack, the shell flexing and splintering slightly more.",
    21: "The wet chick shifts and struggles weakly inside the shell fragments, head lifting slightly.",
    22: "The chick's down puffs up as it dries, eyes blinking open, a first wobbly attempt to lift its head.",
    23: "The adult's bill lowers slowly and nudges the chick with careful, gentle precision.",
    24: "The second shell cracks and splits further as the new chick pushes free beside its larger sibling.",
    25: "The two chicks shift and huddle closer together, small movements as they settle into the lining.",
    26: "The adult's head bobs down in a quick pumping motion, transferring food, the chick's bill working eagerly.",
    27: "The larger chick pumps its head rapidly feeding, the smaller one shuffles and stretches its neck up hopefully.",
    28: "The chick's head bobs and pushes deeper as it feeds, small determined movements.",
    29: "The adult's wings stay spread steady as a sunshade, both chicks panting gently underneath, barely moving in the heat.",
    30: "The mongoose darts along the rocks in short sharp bursts, freezing, then bolting forward again, head snapping toward sounds.",
    31: "The adult penguin jerks upright, wings snapping half-open, lunging a step toward the mongoose with a sharp bill-snap warning.",
    32: "The mongoose spins and bolts abruptly, darting fast between the boulders and out of sight.",
    33: "The chicks breathe slowly in sleep, the sentinel adult shifts its weight occasionally, scanning the dusk.",
    34: "Mist drifts slowly off the sea in the dawn light, one chick stirs and lifts its head while the other stays still.",
    35: "Wide static hold on the shoreline, a lone distant adult shifts at one of the few occupied nests.",
    36: "Dry grass sways faintly in the breeze over the empty scrape, otherwise still.",
    37: "The alert adult shifts its stance, one chick nudges against the other, ambient stillness in the nests nearby.",
    38: "The trawler drifts almost imperceptibly along the horizon, waves glinting.",
    39: "The adult penguin twists and accelerates hard underwater, jerking sharply left and right chasing the scattering fish, spray and bubbles trailing.",
    40: "The adult bursts through the surface in a sudden splash, fish gripped in its bill, shaking water off in a quick jerk.",
    41: "The adult waddles up to the nest at a steady pace, both chicks pushing eagerly toward it.",
    42: "The chicks shift and stretch, down catching the light, small restless movements.",
    43: "The two chicks shuffle and resettle in the empty nest, glancing around occasionally.",
    44: "The chicks press closer together, small adjusting movements, feathers shifting in the breeze.",
    45: "The gull circles low again, wingtips slicing the air, banking sharply as it eyes the nest.",
    46: "The chick lunges upward and pecks hard and fast at the gull, which flinches back and beats off abruptly.",
    47: "The parents stride up the beach at a brisk, purposeful pace, both chicks rushing eagerly to meet them.",
    48: "The chick's head turns slightly, patchy down trembling faintly, an eye blinking.",
    49: "The chick shifts its half-downy flippers, holding them out and lowering them awkwardly.",
    50: "The two chicks shuffle and resettle beside each other, small comparative movements.",
    51: "The smaller chick stretches and strains toward the parent's bill, just missing its turn again.",
    52: "The chick shakes lightly, loose down fluttering off as sleek feathers show through underneath.",
    53: "Loose down tufts drift and tumble slightly in the breeze across the nest floor.",
    54: "The chick's bill tugs and picks at its own loose down in quick little plucking motions.",
    55: "The juvenile turns slowly, new blue-grey plumage catching the light as it shifts its stance.",
    56: "The juvenile pushes upright for the first time, wobbling slightly before finding its balance.",
    57: "The smaller downy chick shuffles beside its sleek juvenile sibling, a size comparison in small movements.",
    58: "The juvenile's head tilts toward the water, feet shifting closer to the edge of the nest platform.",
    59: "The juvenile waddles forward in stiff, careful first steps over the rocks.",
    60: "A wave surges in fast and washes over the juvenile's feet — it flinches back sharply and jerks away from the foam.",
    61: "The juveniles jostle and shove each other abruptly at the water's edge, quick nervous shuffling and pushing.",
    62: "The crowd behind shoves suddenly and the juvenile is knocked forward, vanishing under a breaking wave in a sudden splash.",
    63: "The juvenile rockets through the water, twisting and turning sharply, completely transformed, trailing a burst of bubbles.",
    64: "The juvenile porpoises hard alongside the adults, breaking the surface again and again in fast synchronized arcs.",
    65: "The juvenile darts sharply downward after the fish shoal, twisting and turning fast in pursuit alongside the adults.",
    66: "The juvenile bursts through the surface with a sudden splash, fish clamped hard in its bill, shaking off water in a quick jerk.",
    67: "The smaller chick shifts, loose down fluttering off in the breeze at the empty nest.",
    68: "The young adult shifts its stance slightly on the boulder, colony activity moving gently in the background.",
    69: "The researcher's gloved hand moves slowly and precisely, fitting the band with careful, deliberate motion, the penguin staying calm and still.",
    70: "Wide static hold on the bare stretch of rock, faint heat shimmer, no motion.",
    71: "The rescued penguin takes cautious, steady steps out of the crate and down toward the water.",
    72: "Colony activity drifts gently across the golden-lit frame, birds shifting and settling.",
    73: "The young penguin and its parent stand close, small shifting movements at the water's edge.",
    74: "Parent and grown offspring surge forward together into the water, porpoising hard side by side, fast synchronized bursts through the waves.",
    75: "Wide static hold, waves rolling steadily along the distant shoreline.",
    76: "The young adult bursts forward and porpoises hard out into open water, quick powerful arcs carrying it away from shore.",
    77: "Waves roll slowly onto the golden-lit shore, a few distant silhouettes shift almost imperceptibly.",
}


def main() -> None:
    manifest = json.load(open(HERE / "images" / "manifest.json"))
    assert len(manifest) == 78
    out = []
    for entry in manifest:
        idx = entry["index"]
        suffix = SHARP_SUFFIX if idx in SHARP_INDICES else GENTLE_SUFFIX
        prompt = f"{MOTION[idx]} {suffix}"
        out.append({
            "index": idx,
            "tc": entry["tc"],
            "name": entry["name"],
            "source_job_id": entry["job_id"],
            "category": "sharp" if idx in SHARP_INDICES else "gentle",
            "prompt": prompt,
        })
    (HERE / "animation_prompts.json").write_text(json.dumps(out, indent=1, ensure_ascii=False) + "\n")
    print(f"wrote {len(out)} animation prompts ({len(SHARP_INDICES)} sharp, {len(out) - len(SHARP_INDICES)} gentle)")


if __name__ == "__main__":
    main()
