"""Генератор раскадровки «300 Days» в формате эталона Peacock: 91 Days.

Эталон (ovGgvMueCE0, 1 705 618 просмотров): нет закадрового текста, нет надписей
на экране, 100% AI-видеоряд, средняя длина кадра 3.0-4.5 с, кросс-диссолвы,
хронометраж 14:21, семь актов, угроза каждые ~2 минуты, без CTA.

Здесь то же самое, но про львицу. Тайм-коды считаются из длительностей, а не
проставляются вручную, поэтому арифметика всегда сходится.
"""

from __future__ import annotations

from pathlib import Path

OUT = Path("/home/user/-colors-of-africa-video-automation/docs/example-lioness-300-days/storyboard-en.md")

# (длительность в секундах, тип плана, описание кадра = промпт для генерации)
ACTS: list[tuple[str, str, list[tuple[float, str, str]]]] = [
    ("ACT 1", "Day 1 — The den", [
        (4.5, "WIDE", "Heavily pregnant lioness walking alone through waist-high golden grass, late afternoon sun behind her, dust in the air"),
        (3.5, "MEDIUM", "Lioness stops, lifts head, ears rotating forward, scanning the horizon line"),
        (3.0, "CLOSE", "Her flank contracting, ribs visible under tight skin, heavy breathing"),
        (4.0, "WIDE LOW", "Dense thornbush thicket silhouetted against a dusk sky, dark interior"),
        (3.5, "MEDIUM", "Lioness pushing into the thicket, thorn branches dragging along her shoulder"),
        (4.0, "WIDE INTERIOR", "Inside the thicket: dappled shade, flattened dry grass, thorn lattice overhead"),
        (3.0, "CLOSE", "Her front paws scraping a shallow hollow in pale dust"),
        (4.0, "MEDIUM", "Lioness lowering herself onto her side into the hollow, tail curling"),
        (3.5, "EXTREME CLOSE", "Her eye closing slowly, breath fogging faintly in cool air"),
        (4.0, "CLOSE", "First cub emerging, wet and dark, still in membrane"),
        (4.5, "EXTREME CLOSE", "Mother's tongue cleaning the newborn, membrane peeling away"),
        (3.5, "CLOSE", "Tiny cub, eyes sealed shut, mouth opening in a soundless cry"),
        (3.0, "MEDIUM", "Second cub arriving beside the first, mother reaching around to lick it"),
        (3.5, "CLOSE", "Two wet cubs pressed into the fur of her belly"),
        (3.0, "MEDIUM", "Third and fourth cubs — the full litter of four, steaming slightly"),
        (5.0, "WIDE", "Lioness curled in a protective ring around four tiny cubs in the dust hollow"),
        (4.0, "CLOSE", "Cubs blindly nuzzling along her belly, finding the nipples"),
        (3.5, "EXTREME CLOSE", "Sealed eyelids of the smallest cub, translucent skin, faint veins"),
        (4.0, "CLOSE", "Size comparison in one frame: the smallest cub beside its largest sibling"),
        (3.0, "MEDIUM", "Lioness raising her head sharply, ears swivelling toward a sound"),
        (4.5, "WIDE EXTERIOR", "The thicket from outside at night, moon behind moving cloud"),
        (3.5, "MEDIUM", "Distant hyena silhouette crossing open grassland, low and unhurried"),
        (3.0, "CLOSE", "The lioness's eyes catching moonlight in the dark of the thicket"),
        (4.0, "CLOSE", "Four cubs sleeping in a single heap, rising and falling with breath"),
        (4.5, "WIDE", "First dawn light striking the top of the thicket, mist on the grass"),
    ]),
    ("ACT 2", "Days 2-20 — Blind, then not", [
        (4.0, "CLOSE", "Cubs kneading rhythmically against the mother's belly, eyes still sealed"),
        (3.0, "EXTREME CLOSE", "Sealed eyes and tiny white whiskers on a newborn muzzle"),
        (3.5, "MEDIUM", "Lioness standing up, cubs tumbling off her side into the dust"),
        (4.0, "WIDE", "Lioness leaving the thicket, glancing back once over her shoulder"),
        (4.5, "WIDE", "The empty thicket interior — four cubs alone, very small in frame"),
        (3.5, "CLOSE", "Cubs pressing tighter together in her absence"),
        (4.0, "MEDIUM", "Same framing, hours later: shifted sun angle, cubs still alone"),
        (4.0, "WIDE", "Lioness returning through tall grass at dusk, silhouette against orange sky"),
        (3.0, "CLOSE", "Cubs crawling blindly toward her scent"),
        (3.5, "MEDIUM", "Nursing resumed, mother's head lowered over them"),
        (5.0, "CLOSE", "Day nine: the smallest cub's eyes opening for the first time, clouded blue-grey"),
        (4.0, "EXTREME CLOSE", "Newborn blue-grey iris slowly finding focus"),
        (4.5, "POV", "Blurred thorn canopy overhead gradually resolving into sharp focus"),
        (4.0, "CLOSE", "The cub seeing her mother's face for the first time, mother looking back"),
        (3.0, "MEDIUM", "Cubs beginning to crawl on unsteady legs"),
        (3.0, "CLOSE", "Dark rosette spots across the pale flank of a cub"),
        (3.5, "MEDIUM", "A cub pushing up to stand, then collapsing sideways"),
        (3.5, "CLOSE", "The same cub standing, shaking, holding it"),
        (4.5, "WIDE", "Lioness carrying a cub by the scruff across open ground, den to den"),
        (3.5, "MEDIUM", "Lioness lowering the cub into a new hollow under different bush"),
        (4.5, "WIDE", "Her walking back the way she came — the relocated cub alone in frame"),
        (4.0, "CLOSE", "The lone cub in unfamiliar grass, exposed, head turning"),
        (3.5, "MEDIUM", "Lioness returning with the second cub in her jaws"),
        (4.0, "WIDE", "All four cubs reunited in the new den, mother settling over them"),
        (4.0, "WIDE", "The abandoned first den: flattened grass, drifting flies, empty"),
    ]),
    ("ACT 3", "Day 24 — The introduction", [
        (4.5, "WIDE", "Lioness carrying a cub by the scruff across open savanna toward distant trees"),
        (3.5, "MEDIUM", "The carried cub hanging limp and calm in her jaws, legs tucked"),
        (5.0, "WIDE", "A lion pride resting in the shade of a large flat-topped acacia"),
        (3.5, "MEDIUM", "Adult lionesses lifting their heads as she approaches"),
        (3.0, "CLOSE", "One lioness's face, eyes narrowing, reading the newcomer"),
        (4.0, "MEDIUM", "Mother setting the cub down in front of the group, standing over it"),
        (3.5, "CLOSE", "Adult muzzle lowering to the cub, nostrils working"),
        (4.0, "CLOSE", "The cub frozen, tiny beneath the adult head"),
        (3.5, "MEDIUM", "The adult lioness licking the cub across the back — acceptance"),
        (4.0, "WIDE", "Mother leaving to fetch the next cub, the first one now among strangers"),
        (3.5, "MEDIUM", "Second cub introduced, sniffed, licked"),
        (3.5, "MEDIUM", "Third cub introduced, immediately mobbed by older cubs"),
        (4.5, "MEDIUM", "Fourth and smallest cub set down — the group sniffs, then turns away"),
        (4.0, "CLOSE", "The smallest cub alone in the middle of the frame, adults' backs to her"),
        (3.0, "MEDIUM", "Three siblings nursing from a different lioness"),
        (4.0, "CLOSE", "The smallest cub watching them from outside the group"),
        (4.5, "WIDE", "The pride moving off; the small cub following at a distance of many body lengths"),
        (3.5, "MEDIUM", "Her stopping when they stop, sitting, waiting"),
        (4.0, "WIDE", "Late light: the pride bedded down, the cub curled alone under a separate bush"),
        (3.5, "CLOSE", "Her ribs showing more than her siblings' — she is losing weight"),
        (4.0, "MEDIUM", "She approaches a lactating female; the female stands and walks away"),
        (3.5, "CLOSE", "The cub's face as the adult leaves frame"),
        (4.0, "MEDIUM", "Next morning: she approaches the other cubs instead of the adults"),
        (3.5, "CLOSE", "Cub-to-cub play wrestling in the dust, paws and open mouths"),
        (3.0, "MEDIUM", "Cubs grooming each other's necks after play"),
        (4.0, "CLOSE", "Her fur wet from another cub's grooming — scent transferring"),
        (3.5, "MEDIUM", "Days later: she is inside the cub pile, not outside it"),
        (4.5, "MEDIUM", "A lactating female lowers herself and lets all four nurse together"),
        (4.0, "CLOSE", "The smallest cub nursing, eyes closed"),
        (4.0, "WIDE", "The pride at rest, cubs scattered among adults, no visible outsider"),
        (3.5, "MEDIUM", "Adult male walking past the cubs, ignoring them entirely"),
        (4.0, "WIDE", "Golden evening light across the pride, everything calm"),
        (4.5, "WIDE", "Slow push in on the treeline beyond the pride — grass moving with no wind"),
    ]),
    ("ACT 4", "Day 78 — The night the clan came", [
        (4.0, "WIDE NIGHT", "Moonlit savanna, the pride's sleeping shapes barely visible"),
        (3.0, "MEDIUM", "Hyena eyes catching moonlight at the edge of the grass"),
        (2.5, "CLOSE", "A second pair of eyes. Then a third."),
        (3.0, "WIDE", "Eleven hyenas moving in loose formation through the dark grass"),
        (2.5, "CLOSE", "Lioness's head snapping up, ears flat"),
        (2.5, "MEDIUM", "She stands over the cubs, body low, tail rigid"),
        (3.0, "CLOSE", "Her roar — mouth wide, throat muscles taut"),
        (3.5, "WIDE", "The roar carrying across empty night country, grass flattening in the wind"),
        (2.5, "MEDIUM", "Hyenas fanning out to surround, whooping"),
        (2.0, "CLOSE", "Hyena jaws opening, teeth bright in the moonlight"),
        (2.5, "MEDIUM", "Lioness charging — hyenas scattering backward"),
        (2.0, "MEDIUM", "The moment she stops, they close again behind her"),
        (2.5, "CLOSE", "Cubs bolting in four directions"),
        (2.5, "MEDIUM", "Two larger cubs running into open ground, fast"),
        (3.0, "WIDE", "Hyenas breaking off the mother and following the runners"),
        (2.5, "CLOSE", "The smallest cub pressing flat into thorn scrub, not moving"),
        (2.5, "EXTREME CLOSE", "Her eye, wide, reflecting movement she is not following with her head"),
        (2.5, "MEDIUM", "Hyena passing within a body length of the thorns, nose down"),
        (3.0, "CLOSE", "Her body absolutely still, chest barely moving"),
        (2.5, "WIDE", "The chase disappearing over a rise, sound going with it"),
        (3.0, "MEDIUM", "Lioness alone in the churned dust, turning in a circle"),
        (3.5, "WIDE", "Male lions arriving at a run — four minutes too late"),
        (3.0, "MEDIUM", "Males sweeping the grass, finding nothing"),
        (4.0, "WIDE", "The mother searching, calling, moving between bushes"),
        (3.5, "CLOSE", "Her calling — mouth open, no cub answering"),
        (3.0, "WIDE NIGHT", "Empty grassland, moon lower, nothing moving"),
        (4.0, "CLOSE", "The small cub still in the thorns, hours later, eyes open"),
        (3.5, "WIDE", "First grey light. She has not moved."),
        (3.0, "MEDIUM", "Two more hours of daylight before she shifts a single paw"),
        (4.0, "MEDIUM", "She finally emerges, stiff, into full morning"),
        (3.5, "WIDE", "Dawn revealing the aftermath: flattened grass, scattered tracks"),
        (3.0, "CLOSE", "Hyena tracks pressed over lion tracks in the dust"),
        (4.0, "MEDIUM", "Mother and two cubs — the small one and one sibling — reunited"),
        (4.0, "CLOSE", "The mother licking the small cub's head, longer than usual"),
        (4.5, "WIDE", "Two cubs where there were four, walking behind her into the light"),
        (3.5, "MEDIUM", "The surviving sibling, larger, limping slightly"),
        (4.0, "CLOSE", "The small cub's face — something changed in it"),
        (4.0, "WIDE", "The pride moving on across open country, gaps in the group"),
        (3.5, "MEDIUM", "Vultures circling low over the rise where the chase ended"),
        (4.5, "WIDE", "Long lens: the two cubs following, very small against the plain"),
    ]),
    ("ACT 5", "Day 145 — Forty-one failures", [
        (4.0, "WIDE", "Dry season savanna, bleached grass, heat shimmer on the horizon"),
        (3.5, "MEDIUM", "The cub, now leggy and awkward, crouching badly in short grass"),
        (3.0, "MEDIUM", "She charges a warthog from far too far away"),
        (2.5, "WIDE", "The warthog trotting off easily; she stops, panting"),
        (3.5, "CLOSE", "Her face, tongue out, watching it go"),
        (3.0, "MEDIUM", "She stalks a tortoise with total seriousness"),
        (3.0, "CLOSE", "The tortoise, entirely unbothered, withdrawing its head"),
        (3.0, "MEDIUM", "She launches at a guinea fowl and lands a body length short"),
        (3.5, "WIDE", "Guinea fowl exploding upward in a clatter of wings"),
        (4.0, "MEDIUM", "She sits down in the open, ears back"),
        (4.5, "WIDE", "Adult lionesses hunting in the distance, low in the grass"),
        (4.0, "MEDIUM", "The cub watching from cover, completely motionless"),
        (3.5, "CLOSE", "Her eyes tracking left to right across the hunting line"),
        (4.0, "WIDE", "Two lionesses driving prey while two others wait unseen"),
        (3.5, "MEDIUM", "The ambush lioness exploding from cover — the payoff of waiting"),
        (4.0, "CLOSE", "The cub's face registering the geometry of it"),
        (3.5, "MEDIUM", "Next attempt: she moves only when the prey's head is down"),
        (3.0, "CLOSE", "Her paw lifting, hovering, setting down silently"),
        (3.5, "MEDIUM", "The prey lifts its head; she freezes mid-step"),
        (4.0, "WIDE", "Held frame — nothing in the shot moves for several seconds"),
        (3.0, "MEDIUM", "She breaks too early. The impala is gone."),
        (3.5, "CLOSE", "Her chest heaving, failure number thirty-something"),
        (4.5, "WIDE", "A waterhole shrinking to a mud ring, animals crowded around it"),
        (3.5, "MEDIUM", "Elephants, zebra, and predators sharing the same shrinking water"),
        (3.0, "CLOSE", "Cracked mud, hoofprints hardened into it"),
        (4.0, "WIDE", "The pride thinner than before, ribs showing on every adult"),
        (3.5, "CLOSE", "The cub's ribs and hip bones clearly visible under the coat"),
        (3.5, "MEDIUM", "She abandons a stalk halfway — the first time she has done that"),
        (4.0, "CLOSE", "Her walking away from prey deliberately, looking back once"),
        (4.0, "WIDE", "Sunset over parched country, dust hanging in the light"),
        (3.5, "MEDIUM", "Her sibling attempting a hunt and failing worse"),
        (4.0, "CLOSE", "The two cubs lying side by side, both hungry"),
        (4.0, "WIDE", "Night falling on the dry plain, no water sound anywhere"),
        (4.5, "WIDE", "Distant roaring from an unfamiliar direction — the pride's heads all turn"),
    ]),
    ("ACT 6", "Day 212 — When the nomads came", [
        (4.5, "WIDE", "Two large male lions walking in from the north, dark manes, unhurried"),
        (3.5, "MEDIUM", "Their faces — scarred, older, purposeful"),
        (3.0, "CLOSE", "Paws pressing into dust, one after the other"),
        (4.0, "WIDE", "The resident male standing to face them, alone"),
        (3.0, "MEDIUM", "Roaring contest — the resident male answering from a lower position"),
        (2.5, "CLOSE", "His mouth open, mane shaking with the sound"),
        (2.5, "MEDIUM", "The two nomads splitting to flank him"),
        (2.5, "WIDE", "The collision — dust erupting, bodies rearing"),
        (2.0, "CLOSE", "Claws raking a shoulder, fur flying"),
        (2.5, "MEDIUM", "The resident male going down, then breaking away"),
        (3.0, "WIDE", "He runs. The fight lasted under a minute."),
        (3.5, "MEDIUM", "The two nomads standing in the settling dust, taking the ground"),
        (4.0, "WIDE", "The lionesses watching from a distance, cubs behind them"),
        (3.5, "CLOSE", "One nomad's head turning toward the cubs — sustained look"),
        (3.0, "MEDIUM", "The mother stepping between the male's line of sight and her cubs"),
        (3.5, "CLOSE", "Her face, absolutely fixed on him"),
        (4.0, "WIDE", "Night: the mother leading her two cubs away from the sleeping pride"),
        (3.5, "MEDIUM", "The three of them crossing a dry riverbed in moonlight"),
        (4.0, "WIDE", "Unfamiliar country at dawn — different trees, different horizon"),
        (3.5, "MEDIUM", "She scans constantly now; nothing here is hers"),
        (4.0, "WIDE", "Vultures dropping onto a distant carcass"),
        (3.5, "MEDIUM", "The three of them driving vultures off a picked-over kill"),
        (3.0, "CLOSE", "Cubs pulling at dried sinew on bare bone"),
        (4.0, "WIDE", "A cheetah kill taken by force — the cheetah backing away"),
        (3.5, "MEDIUM", "Eating fast, heads down, watching the horizon between bites"),
        (4.0, "WIDE", "Weeks passing: thinner, dustier, further from anywhere"),
        (4.0, "CLOSE", "The sibling lying down and not getting up when the others move"),
        (4.5, "MEDIUM", "The mother returning to nose at the sibling, then standing over it"),
        (4.0, "WIDE", "Two of them walking on. Not three."),
        (4.5, "CLOSE", "The last cub's face — she does not look back"),
        (4.0, "WIDE", "Open plain, two lions, enormous empty sky"),
        (3.5, "MEDIUM", "The mother's own ribs now sharply visible"),
        (4.0, "CLOSE", "The young lioness watching her mother struggle to rise"),
        (4.5, "WIDE", "Dusk. She walks out alone, away from her mother, for the first time."),
        (4.0, "MEDIUM", "Her mother watching her go, not following"),
        (4.5, "WIDE", "The young lioness alone on the plain at last light"),
    ]),
    ("ACT 7", "Day 300 — The kill", [
        (4.5, "WIDE", "Dawn. A young lioness, lean and long-legged, standing in wet grass"),
        (3.5, "CLOSE", "Her face — no longer a cub's, spots faded to faint ghosts"),
        (4.0, "MEDIUM", "She lowers into a crouch that finally looks correct"),
        (4.0, "WIDE", "A lone warthog grazing forty metres away, tail up, unaware"),
        (3.5, "CLOSE", "The warthog's head down in the grass, tusks working at a root"),
        (3.5, "MEDIUM", "She advances two body lengths and stops"),
        (3.0, "CLOSE", "Her paw setting down without disturbing a single stem"),
        (3.5, "MEDIUM", "The warthog's head lifts. She is already frozen."),
        (4.5, "WIDE", "Held wide — neither animal moves; only grass moves"),
        (3.0, "CLOSE", "Her eyes, unblinking, locked forward"),
        (3.5, "MEDIUM", "Head down again. She advances."),
        (3.0, "CLOSE", "Wind direction shown by grass bending toward her — she is downwind"),
        (3.5, "MEDIUM", "Twenty metres. She flattens completely into the grass."),
        (4.0, "WIDE", "Long lens: the gap between them closing almost imperceptibly"),
        (3.0, "CLOSE", "Her shoulder blades rolling as she creeps"),
        (3.5, "MEDIUM", "Ten metres. She stops moving entirely."),
        (4.0, "CLOSE", "Her haunches gathering, weight shifting back"),
        (3.0, "MEDIUM", "The warthog turns its head toward her"),
        (2.0, "CLOSE", "Her eyes — the instant of commitment"),
        (2.0, "MEDIUM", "Launch — grass and dust exploding outward"),
        (2.0, "WIDE", "Two bodies converging, warthog wheeling away"),
        (2.0, "CLOSE", "Impact — her forelegs across its shoulders"),
        (2.5, "MEDIUM", "The two of them going down together in a cloud of dust"),
        (3.0, "WIDE", "The struggle, half-hidden in the grass"),
        (4.0, "CLOSE", "Stillness. Her flanks heaving, mouth open."),
        (4.5, "WIDE", "She stands over the kill, alone, dust settling around her"),
        (4.0, "CLOSE", "Her face lifting — blood on the muzzle, eyes forward"),
        (5.0, "WIDE", "She begins to feed. Nothing else is in the frame."),
        (4.5, "WIDE", "Long lens across the plain — her mother watching from far off, not approaching"),
        (4.5, "WIDE", "Late light. The young lioness walking away from the carcass, full."),
        (5.0, "WIDE", "She crosses a rise and drops out of sight, alone, into open country"),
        (5.5, "WIDE", "Final frame: empty savanna, long shadows, grass moving. Slow fade."),
    ]),
]


def timestamp(seconds: float) -> str:
    total = int(round(seconds))
    return f"{total // 60}:{total % 60:02d}"


def main() -> None:
    lines = [
        "# 300 Days: How a Blind Lion Cub Learned to Kill",
        "",
        "**Shot-by-shot storyboard — no narration, no on-screen text.**",
        "",
        "Built to the production template of *Peacock: 91 Days From Egg to Survivor* "
        "(1,705,618 views): zero voiceover, zero text cards, 100% generated footage, "
        "cross-dissolves between shots, ambient sound plus light instrumental score.",
        "",
        "The day count lives **only in the title**. On screen, time is carried by the "
        "cub's body: sealed eyes, then open eyes, then fading spots, then adult "
        "proportions. Do not add day counters — the reference does not have them.",
        "",
        "---",
        "",
        "## Audio bed",
        "",
        "| Layer | Direction |",
        "|---|---|",
        "| Voice | **None.** No narration anywhere. |",
        "| Ambience | Grass wind, insects, distant birds. Night acts: crickets, far-off whoops. |",
        "| Score | Sparse strings and low piano. Drops out entirely at 5:15 (Act 4) and returns at 7:45. |",
        "| Diegetic | Cub calls, adult roar, hyena whoops, running hooves, impact. |",
        "",
        "## Transitions",
        "",
        "Cross-dissolve 0.5–0.8 s between shots by default. Hard cuts only inside "
        "Act 4 and the final launch sequence in Act 7. Slow-motion on two moments "
        "only: the hyena charge (Act 4) and the pounce (Act 7).",
        "",
        "---",
        "",
    ]

    total = 0.0
    shot_no = 0
    act_rows = []

    for act_label, act_title, shots in ACTS:
        act_start = total
        lines.append(f"## {act_label} — {act_title}")
        lines.append("")
        lines.append(f"*Starts {timestamp(act_start)} · {len(shots)} shots*")
        lines.append("")
        lines.append("| # | In | Out | Sec | Shot | Image |")
        lines.append("|---|---|---|---|---|---|")
        for duration, shot_type, description in shots:
            shot_no += 1
            start, end = total, total + duration
            lines.append(
                f"| {shot_no} | {timestamp(start)} | {timestamp(end)} | "
                f"{duration:.1f} | {shot_type} | {description} |"
            )
            total = end
        lines.append("")
        act_rows.append((act_label, act_title, len(shots), act_start, total))

    average = total / shot_no
    lines += [
        "---",
        "",
        "## Totals",
        "",
        "| Act | Title | Shots | In | Out |",
        "|---|---|---|---|---|",
    ]
    for label, title, count, start, end in act_rows:
        lines.append(f"| {label} | {title} | {count} | {timestamp(start)} | {timestamp(end)} |")
    lines += [
        "",
        f"**Runtime: {timestamp(total)} ({total:.0f} s) · Shots: {shot_no} · "
        f"Average shot length: {average:.1f} s**",
        "",
        f"Reference for comparison: *Peacock: 91 Days* — 14:21 (861 s), "
        f"average shot length 3.0–4.5 s.",
        "",
    ]

    OUT.write_text("\n".join(lines), encoding="utf-8")
    print(f"Хронометраж: {timestamp(total)} ({total:.0f} с)")
    print(f"Кадров: {shot_no}")
    print(f"Средняя длина кадра: {average:.2f} с")
    print()
    for label, title, count, start, end in act_rows:
        print(f"  {label}  {timestamp(start)}-{timestamp(end)}  {count:3d} кадров  {title}")
    print(f"\n{OUT}")


if __name__ == "__main__":
    main()
