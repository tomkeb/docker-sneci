-- Adminer 4.6.2 PostgreSQL dump

\connect "quickstart";

DROP TABLE IF EXISTS "families";
CREATE TABLE "public"."families" (
    "czechname" character varying(50) NOT NULL,
    "latinname" character varying(50) NOT NULL,
    "description" text NOT NULL
) WITH (oids = false);

INSERT INTO "families" ("czechname", "latinname", "description") VALUES
('oblovkovití',	'cochlicopidae',	''),
('skleněnkovití',	'vitrinidae',	'Plži této čeledi mají redukovanou schránku, do které se většinou již nedokáží zcela zatáhnout. Objevují se zejména na podzim.'),
('závornatkovití',	'clausiliidae',	'Název čeledi je odvozen od pojmenování destičky (závorka, *clausilium*) umístěné v posledním závitu schránky. Závorka je pružně připevněna k cívce a v případě zatáhnutí plže uzavírá ulitu. Drtivá většina zástupců čeledi závornatkovitých je levotočivá, ale např. na Slovensku žije jediný pravotočivý druh *Alopia bielzi clathrata*. Závornatky jsou plži s protáhlými schránkami, jejich ústí mají typickou strukturu. Podle té je možné určovat jednotlivé druhy (Horsák *et al.* 2013, s. 82). Determinace mladých jedinců je velice složitá, neboť ještě nemají ústí zcela vytvořeno. Jedním z rozlišovacích znaků v ústí schránky je přítomnost drobné rýhy či žlábku, tzv. járku*. Járek může, ale nemusí dosahovat až na samotný okraj ústí.

* V moravských nářečích má význam „stružka pro odtok vody; rýha, žlábek“ (Ústav pro jazyk český AV ČR 2012, s. 308).'),
('vrásenkovití',	'discidae',	''),
('síměnkovití',	'carychiidae',	''),
('kuželíkovití',	'euconulidae',	''),
('hlemýžďovití',	'helicidae',	''),
('vlahovkovití',	'hygromiidae',	''),
('zemounovití',	'zonitidae',	''),
('boděnkovití',	'punctidae',	''),
('údolníčkovití',	'valloniidae',	''),
('vrkočovití',	'vertiginidae',	'');

DROP TABLE IF EXISTS "snails";
CREATE TABLE "public"."snails" (
    "czechname" character varying NOT NULL,
    "latinname" character varying NOT NULL,
    "family" character varying NOT NULL,
    "description" character varying NOT NULL,
    "scale" numeric NOT NULL,
    "shortcut" character(6) NOT NULL
) WITH (oids = false);

INSERT INTO "snails" ("czechname", "latinname", "family", "description", "scale", "shortcut") VALUES
('vřetenatka obecná',	'Balea biplicata',	'clausiliidae',	'Ulita vřetenatky obecné (dříve odborně *Alinda biplicata*) je dlouhá až 18 mm. Od ostatních závornatek je ji možné odlišit znakem popsaným v samotném jejím druhovém jménu (lat. *bi-* = dvě, *plica* = záhyb, vráska): na vnitřní straně posledního závitu ulity se nachází zvýrazněná příčka kolmá na vnější rýhování ulity. Příčku je možné rozlišit i zvenčí. Má járek. Povrch její ulity je pokryt hrubými žebírky.

Jedná se o nejhojnějšího příslušníka čeledi, vyskytuje se na celém našem území mimo jeho jihozápadní část. Obývá křoviny a lesy nižších a středních poloh (Horsák *et al.* 2013, s. 91). Celkově je rozšířena ve střední až jihovýchodní Evropě (AnimalBase Project Group 2005).',	1.0,	'balbip'),
('hrotice obrácená',	'Balea perversa',	'clausiliidae',	'Balea perversa dorůstá 10mm velikosti. Její ulita je nevýrazně hnědá, s lesklým povrchem, bez výrazného žebírkování. Má vyloženě kuželovitý tvar a méně výrazné obústí bez ozubení, nebo jen s malým periostrakálním zoubkem (Pfleger 1988, s. 114). Právě nevyvinutým obústím obecně připomíná mladé závornatky. Chybí jí clausilium.

Obývá sutě, skály a hradní zříceniny (Juřičková a Kučera 2005). Nepříliš často se vyskytuje v hrabance. Také je dendrofilní, dává přednost stromům s hrubou kůrou a epifyty (AnimalBase Project Group 2005). Byla nalezena na mnohých místech Křivoklátska, např. na Žebráku a Točníku (Ložek 1975). Tato práce ji poprvé zmiňuje na Výrovce. Její areál zahrnuje západní Evropu až Krym.',	1.0,	'balper'),
('závornatka kyjovitá',	'Clausilia pumila',	'clausiliidae',	'Schránka tohoto plže je vysoká do 13 mm. Jako ostatní příslušníci rodu *Clausilia* má vyvinutý hřeben na posledním závitu, který z vnitřní strany tvoří járek. Její tvar je poplatný českému názvu, neboť svým „baculatým“ tvarem připomíná kyj.

Žije na povrchu vlhké půdy v luzích a aluviích nižších poloh. Vzácněji lze najít v suťových či sušších lesích poloh středních (Horsák *et al.* 2013, s. 90). Obývá severní, střední, jižní až jihovýchodní Evropu, západní hranici rozšíření má v Německu (AnimalBase Project Group 2005).

Od ostatních plžů stejného rodu ji odlišují hlavně ekologické nároky.',	1.0,	'clapum'),
('řasnatka lesní',	'Macrogastra plicatula',	'clausiliidae',	'Tento plž patří mezi menší zástupce závornatek, dorůstá 13 mm. Ulity jsou výrazněji žebírkované, bez járku, s červenavým až fialovým nádechem.

Je to hojný dendrofilní druh obývající lesy středních poloh až hor (Horsák *et al.* 2013, s. 89). Obývá střední Evropu, hranici rozšíření má na východě Slovenska.',	1.0,	'macpli'),
('vrásenka okrouhlá',	'Discus rotundatus',	'discidae',	'Vrásenka okrouhlá má plochou ulitu s výraznou miskovitou píštělí. Ulita je široká 5,5–7 mm, žebírkovaná, s 5,5–6,5 závity. Má světle rohovou barvu s rudohnědými skvrnami, poněkud tedy připomíná stočenou závoru.

Tohoto plže je možné nalézt v lesích a křovinách, kde žije na povrchu půdy, pod kameny, v sutích či v blízkosti tlejícího dřeva. Preferuje stín. Občas ale proniká i do synantropních stanovišť (zdi, zpustlé sady a hřbitovy). Má subatlanské rozšíření s východní hranicí v polovině Slovenska (Pfleger 1988, s. 76; Horsák *et al.* 2013, s. 96).',	1.0,	'disrot'),
('kuželík drobný',	'Euconulus fulvus',	'euconulidae',	'Schránka tohoto plže dorůstá v průměru 3 mm. Je nažloutlé barvy, kuželovitého tvaru. Naspodu je lesklá, zeshora potom matně hedvábná. Chybí jí píštěl, ústí tedy zasahuje do samotného středu ulity (AnimalBase Project Group 2005). Tělo plže je šedomodré až žlutavé.

Tento plž není příliš ekologicky vyhraněný, žije na suchých i vlhčích stanovištích, lesních i otevřených. Nevyžaduje mnoho vápníku, a tak ho lze najít i pod kůrou pařezů ve smrkových lesích (Horsák *et al.* 2013, s. 98).',	1.0,	'eucful'),
('plamatka lesní',	'Arianta arbustorum',	'helicidae',	'České rodové jméno tohoto plže se vztahuje ke kropenatému vzhledu ulity. Plamatý totiž znamená skvrnitý (Ústav pro jazyk český AV ČR 2011), podobně jako například v názvu bolehlavu plamatého* (*Conium maculatum*) či árónu plamatého (*Arum maculatum*). Barevnost ulity bývá různá. v horách lze nalézt světlé či žluté jedince, ale jinak bývá ulita zpravidla tmavá. U dospělce je velká až 24 mm. Samotné tělo plže je potom černé.

Jedná se o vlhkomilného plže obývajcího zejména lesní prostředí. Plamatka má středoevropsko­‑subatlantické rozšíření. Introdukována byla do východní Kanady (McAlpine a Forsyth 2014).

* Právě skvrny na stonku bolehlavu tuto rostlinu zcela jasně odlišují od našich ostatních miříkovitých (Apiaceae).',	1.2,	'ariarb'),
('sítovka čistá',	'Aegopinella pura',	'zonitidae',	'Jedná se o nejmenší druh sítovky u nás, dorůstá jen 4,6 mm. Lze ji rozeznat podle mřížkovité struktury na povrchu ulity, která zapříčiňuje její matný lesk. Ulita má čočkovitý tvar a tupý kýl na obvodu (Horsák *et al.* 2013, s. 101).

Žije v lesním opadu od nížin do hor.

O obou sítovkách v lokalitě se dá říci, že poněkud nekorespondují s názvem: *A. minor* (lat. menší) je větší než *A. pura*, *A. pura* (lat. čistá) zase nemá čistý povrch. Sítovky lze obecně spolehlivě determinovat pouze pitvou dle anatomických znaků pohlavní soustavy.',	1.0,	'aegpur'),
('blyštivka rýhovaná',	'Nesovitrea hammonis',	'zonitidae',	'Blyštivka rýhovaná má zploštělou ulitu s průměrem 4,3 mm. Ta je lesklá, má výrazné podélné vlnky a rohové („medové“) zbarvení.

Tento plž má širokou ekologickou valenci: obývá monokultury i přirozené lesy, vlhká i sušší stanoviště. Je to pionýrský druh vyskytující se na zarůstajících místech. Je hojný na celém území, méně početný je v nížinách.

V rámci druhů lokality poněkud připomínal sítovky, od nichž se liší právě vlnkováním povrchu schránky.',	1.0,	'nesham'),
('oblovka drobná',	'Cochlicopa lubricella',	'cochlicopidae',	'Výška ulity oblovky drobné činí 5,5 mm. Její ulita je slámově žlutá a lesklá (Horsák et al. 2013, s. 67).

Jedná se o druh vyhledávající suchá a teplá stanoviště.

Oproti podobné oblovce lesklé (*Cochlicopa lubrica*) je schránka tohoto druhu menší, válcovitá (tedy má tupější vrchol) a je světleji zbarvená. Oba druhy se málokdy vyskytují společně (Horsák *et al.* 2013, s. 67).',	0.8,	'coclub'),
('skalnice kýlnatá',	'Helicigona lapicida',	'helicidae',	'Schránka skalnice kýlnaté je zploštělá a má ostrý kýl: toto uzpůsobení umožňuje plži pohybovat se v úzkých štěrbinách skal. Ulita je široká 15–17 mm a vysoká 6,6–8,5 mm, má slabé podélné rýhy, je matná a nepravidelně zrnitá.

Obývá zejména skály, ale je možné ji najít i při kmenech stromů či ve zdech zřícenin. Preferuje vlhčí biotopy. Má subatlanské rozšíření (Pfleger 1988, s. 148).',	1.0,	'hellap'),
('vrkoč horský',	'Vertigo alpestris',	'vertiginidae',	'Schránka vrkoče horského je pravotočivá, oválná, drobnějších rozměrů: její výška dosahuje asi 2 mm.

Vyskytuje se na skalách a sutích zachovalých lesů, preferuje vápnitý substrát, velkou vrstvu opadanky a mech. Ve vyšších nadmořských výškách obývá i osluněná stanoviště. v Česku je rozšířen ostrůvkovitě, hojnější je na Slovensku (Horsák *et al.* 2013, s. 80; AnimalBase Project Group 2005).',	0.8,	'veralp'),
('zuboústka trojzubá',	'Isognomostoma isognomostomos',	'helicidae',	'Zuboústka trojzubá má stlačeně kulovitou ulitu s tenkými stěnami. Schránka má v průměru 7–11 mm, na výšku 4–7 mm. Na jejím povrchu jsou výrazné 0,6mm chloupky, které se v dospělosti mohou odřít. Ústí je šikmé, trojúhelníkovitého tvaru, zúžené třemi tupými zuby. Píštěl je zakryta okrajem obústí.

Tento plž má středoevropské rozšíření, preferuje kamenité biotopy, padlé kmeny a tlející dřevo (Pfleger 1988, s. 150).',	1.0,	'isoiso'),
('trojlaločka pyskatá',	'Helicodonta obvoluta',	'hygromiidae',	'Trojlaločka pyskatá má ulitu s průměrem 13 mm. Má dlouhé rovné chlupy, které mohou ve stáří chybět a zanechat jizvy. Její vrchol je vpadlý, má širokou a hlubokou píštěl. Pysk je uprostřed vnější a spodní strany rozšířený, bílý. Ústí je šikmé, trojlaločné.

Obývá teplé sutě středních a nižších poloh, na Slovensku ji lze najít i v horách. Dává přednost vápnitému podkladu. v době sucha vytváří bílé víčko (Pfleger 1988, s. 136).

U tohoto plže se nabízí záměna s *Causa holosericea*, rozdíly jsou zmíněny v jejím popisu výše.',	1.0,	'helobv'),
('vlahovka narudlá',	'Monachoides incarnatus',	'hygromiidae',	'Plž má kuželovitou ulitu se 6–6,5 závity. Je široká 12–16 mm, narudle hnědá či šedožlutá a může mít na obvodu světlou pásku. Ulita je také průsvitná, lze přes ní vidět zvláštní „kropenatou“ pigmentaci povrchu těla. Při zvětšení lze bezpečně poznat ulitu podle drobných periostrakálních šupinek, které způsobují její matný vzhled. Takto je možné snadno určit i její střepy (Horsák *et al.* 2013, s. 137).

Jedná se o lesní druh obývající sutě a údolí, je možné jej nalézt ale i v kulturní krajině. Má středoevropské rozšíření (Pfleger 1988, s. 130).',	1.0,	'moninc'),
('srstnatka jednozubá',	'Petasina unidentata',	'hygromiidae',	'Schránka srstnatky jednozubé má 6–7 závitů, je kuželovitá až kupolovitá, dosahuje výšky 5–6 mm a výšky 6–8 mm. Má na sobě nepravidelné rýhy a krátké, husté chloupky. Má protáhlé ústí a naspodu rozšířené obústí se zubem. Její píštěl je úzká.

Jedná se o druh obývající vlhké suťové lesy pahorkatin a hor. Je indikátorem vlhkosti. Preferuje místa s důrazným podrostem bylin, na které s oblibou (zejména v mládí) vylézá (Pfleger 1988, s. 140; Horsák *et al.* 2013).',	1.0,	'petuni'),
('žihlobytka stinná',	'Urticicola umbrosus',	'hygromiidae',	'Schránka *Urticicola umbrosus* je široká 12 mm, je zploštělá a má široce rozevřenou píštěl zabírající asi ½ šířky ulity. Struktura povrchu ulity je podobná jako u rodu *Monachoides*, ovšem méně výrazná. Má 5,5 závitů, na posledním má tupou hranu mizející před ústím. Její barva je šedožlutá až narudle rohová (Pfleger 1988, s. 130). v mládí na sobě má jemné chloupky.

Žihlobytka obývá vlhká prostředí: údolní lesy, mokřiny v blízkosti řek. S oblibou vylézá na byliny, zvláště pak na kopřivy (odtud její název). Má východoalpsko­‑karpatské rozšíření (Horsák *et al.* 2013, s. 138).',	1.0,	'urtumb'),
('skelnička průhledná',	'Vitrea crystallina',	'zonitidae',	'Skelnička průhledná dorůstá 4mm průměru, má 4–5 závitů. Poslední závit je 1,5–2× širší než předposlední. Má úzkou, avšak otevřenou píštěl. Její ulita je kulatá, lesklá, průsvitná s nádechem bílé.

Jedná se o silně vlhkomilný druh žijící ve vlhkých lesích a říčních nivách od nížin do hor. Vyskytuje se v opadance, suti či v mechu. Má evropské rozšíření.',	1.0,	'vitcry'),
('skelnatka drnová',	'Oxychilus cellarius',	'zonitidae',	'*O. cellarius* má ulitu velkou 12 mm, je terčovitého tvaru. Má žlutavé zbarvení, širokou píštěl a velmi jemné příčné linie.

Obývá širokou škálu stanovišť: lesy, sutě, nivy řek, ale i synantropní stanoviště včetně sklepů (ostatně *cellarium* = lat. sklep).',	1.0,	'oxycel'),
('páskovka keřová',	'Cepaea hortensis',	'helicidae',	'Ulita *Cepaea hortensis* dorůstá až 21 mm. Může na ní být až 5 tmavých pruhů, které někdy splývají. Ulita ale může být i čistě žlutá či růžová. Na lokalitě se nacházela *Cepaea hortensis* f. *fuscolabiata*, která má hnědé obústí (na rozdíl od běžné formy, která má obústí světlé).

*C. hortensis* je druhem se subatlanským rozšířením. v Čechách a na Moravě je běžná, na Slovensku se pak nachází východní hranice jejího areálu. Její introdukce byla však zachycena až v Bělorusku či v okolí Moskvy (Egorov 2015).

Páskovky jsou oblíbenými modelovými organizmy, s barevnou proměnlivostí jejich schránek pracovaly mnohé studie (např. Arnason a Grant 1976). Využití páskovky pro výzkum podporuje také její velikost a dobrá dostupnost (Říhová *et al.* 2014).',	1.0,	'cephor'),
('sítovka suchomilná',	'Aegopinella minor',	'zonitidae',	'Průměr ulity tohoto plže činí až 9 mm. Ulita je plochá, nevýrazného zbarvení, bez důraznější struktury.

Obývá i suchá stanoviště. Je možné ji nalézt v lesích s kyselejším substrátem, křovinách a polootevřených stanovištích. Žije i v osídlených oblastech (Horsák *et al.* 2013, s. 102).',	0.5,	'aegmin'),
('boděnka malinká',	'Punctum pygmaeum',	'punctidae',	'*Punctum pygmaeum* s velikostí 1,6 mm byl nejmenším plžem ve vzorcích a je taktéž nejmenším plžem na území Česka. Díky své velikosti a maskovacímu hnědému zbarvení je při ručním sběru snadno přehlédnutelný. Jeho schránka je téměř plochá, hustě a pravidelně vroubkovaná, se 3–3,5 závity. Má otevřenou píštěl dosahující až 1/4 průměru ulity (AnimalBase Project Group 2005).

Tento plž má širokou ekologickou valenci. Obývá vápnitá i kyselejší stanoviště, snese vyloženě suché prostředí, ale prospívá i ve vlhku, je možné ho nalézt v lesích i otevřené krajině. Žije v hrabance, zejména na povrchu listového opadu (Horsák *et al.* 2013). v Česku i na Slovensku je dosti hojný, celosvětově má palearktické rozšíření (Ložek 1975).

Mezi evropskými plži má v porovnání s velikostí dospělce relativně největší vajíčka. Snůška se vždy skládá z jediného vajíčka, neboť jeho vytvoření od rozmnožujícího se jedince vyžaduje velkou investici energie a živin. Plž *P. pygmaeum* je schopen samooplození (Baur 1989).

Při pohledu pouhým okem by mohlo dojít k záměně tohoto plže za mláďata druhu Acanthinula aculeata. Ačkoli *A. aculeata* dosahuje podobné velikosti, má na schránce znatelné periostrakální lišty jasně viditelné při důraznějším zvětšení. Na embryonální ulitě má spirální linie.',	1.0,	'punpyg'),
('údolníček žebernatý',	'Vallonia costata',	'valloniidae',	'Ulita *V. costata* je světlá, zploštělá. Je na ní výrazné žebrování. Periostrakální žebra jsou od sebe poměrně vzdálená, starším jedincům mohou chybět. Schránka má 3,2–3,3 závity, širokou píštěl a otevřené ústí.

Tento plž vyhledává sušší, otevřené biotopy. Je možné jej nalézt na osluněných kamenech, svazích či suti (AnimalBase Project Group 2005). Oproti dalším českým zástupcům rodu Vallonia však snese i určité zastínění a někdy obývá i řídké, slunné lesy (Horsák *et al.* 2013, s. 74).

Podobná *V. pulchella* má mírně vyšší schránku. Její poslední závit je v ústí daleko širší a ne tolik skloněný. *V. pulchella* má také méně výrazné obústí (Welter-Schultes 2012, s. 207).
',	1.0,	'valcos'),
('slimáčník táhlý',	'Semilimax semilimax',	'vitrinidae',	'Schránka slimáčníka táhlého je křehká, průsvitná, široká 5 mm, chybí jí píštěl. Více než 60 % průměru ulity tvoří poslední závit. Svým tvarem poněkud připomíná deformovanou kontaktní čočku. Tmavé tělo zvířete je 10 mm dlouhé.

Tento plž obývá vlhká lesní stanoviště či lužní lesy (Horsák et al. 2013, s. 111).',	1.0,	'semsem'),
('skleněnka průsvitná',	'Vitrina pellucida',	'vitrinidae',	'Skleněnka průsvitná má ulitu s 2,5–3 závity, která je tenkostěnná, avšak pevná. Poslední závit svými rozměry nepřevažuje (zabírá asi 2/5 šířky ulity). Skleněnka se téměř celá může zatáhnout do ulity. Živočich je světle šedý s tmavší hlavou.

*V. pellucida* obývá širokou škálu stanovišť, včetně těch synantropních (zahrady, sady). Má holoarktické rozšíření (Pfleger 1988, s. 84).',	1.0,	'vitpel'),
('síměnka trojzubá',	'Carychium tridentatum',	'carychiidae',	'Ulita tohoto plže je až 1,8 mm velká, vřetenovitého tvaru. Její zbarvení je bělavé či průhledné, má sklovitý vzhled. Jak napovídá její český i odborný název, má v ústí trojici zubů.

*C. tridentatum* obývá vlhká stanoviště, lesní i otevřená. Má evropské rozšíření, zasahuje však až do Turecka, na Kavkaz a do severní Afriky.

Od příbuzného druhu *C. minimum* lze odlišit díky tvaru struktur na sloupku (*columella*) či podle protáhlejší schránky. Také má rozdílné ekologické nároky – *C. minimum* je výrazně vlhkomilnější (Horsák et al. 2013).

Dle Boucheta a Rocroie (2005) by tento plž byl zařazen do čeledi Ellobiidae a podčeledi Carychiinae. Čeleď Ellobiidae vykazuje vývojově původnější znaky: její zástupci mají 1 pár tykadel, pod nimiž jsou oči.',	0.8,	'cartri'),
('vřetenovka hladká',	'Cochlodina laminata',	'clausiliidae',	'Vřetenovka hladká má ulitu vysokou až 17 mm. Schránka je lesklá, na jejím povrchu chybí žebírkování. Nemá járek. Její zkorodované ulity svým zbarvením a texturou připomínají slonovinu. Ulita živých jedinců je mírně načervenalá.

Jako ostatní příslušníci rodu je *C. laminata* dendrofilní, je možné ji nalézt zejména na živém i rozkládajícím se dřevě. Je to evropský druh (Pfleger 1988, s. 108).

Na obrázku vpravo je mladý pravotočivý jedinec nalezený na Malé Výrovce.',	1.0,	'coclam'),
('ostnatka trnitá',	'Acanthinula aculeata',	'valloniidae',	'Kuželovitá schránka *A. aculeata* dosahuje průměru i výšky okolo 2 mm, má hnědavé zbarvení. Může na sobě mít periostrakální žebírka s trny. Tělo plže je šedivé, zespodu bílé.

Žije v zachovalých listnatých lesích, v křovinách, v opadu a pod tlejícím dřevem. Vyhledává stinná místa a dává přednost substrátu s vyšším obsahem vápníku (AnimalBase Project Group 2005).',	1.0,	'acaacu'),
('vrkoč lesní',	'Vertigo pusilla',	'vertiginidae',	'Vrkoč lesní má soudkovitou levotočivou schránku vysokou 2,1 mm. Její povrch je jemně rýhovaný. Ústí schránky je srdcovitého tvaru, nachází se v něm 6 (někdy až 9) zubů. Zastavení růstu v zimě se na schránce projevuje bílými liniemi (AnimalBase Project Group 2005).

Žije v opadu zachovalých, listnatých lesů, často obývá suť. Vyskytuje se na celém území Česka mimo suché stepní oblasti (Horsák *et al.* 2013, s. 79).',	0.8,	'verpus'),
('aksamítka sametová',	'Causa holosericea',	'helicidae',	'Aksamítka má hnědou až hnědočervenou terčovitou ulitu se 4–5 závity. Dorůstá průměru 12 mm. Její povrch je pokryt drobnými stočenými chloupky, výběžky periostraka, které při velkém zvětšení připomínají suchý zip či ovčí vlnu na nákresu malého dítěte. v ústí má 2–3 bílé zuby.

Causa holosericea obývá zejména sutě od středních poloh až do hor. Obývá Alpy a západní Karpaty. v Česku se vyskytuje roztroušeně. Na Slovensku má severovýchodní hranici rozšíření.

Tomuto plži je na první pohled tvarově velmi podobná *Helicodonta obvoluta*, která patří do jiné systematické větve (McAlpine a Forsyth 2014, s. 167) a dala by se tak označit za příklad konvergentního vývoje. *H. obvoluta* má výraznější, rovné periostrakální chloupky, chybějí jí zuby v ústí schránky a vrchol je u ní položen hlouběji než okolní závity (AnimalBase Project Group 2005; Horsák *et al.* 2013).',	1.0,	'cauhol'),
('ostroústka bezzubá',	'Columella edentula',	'vertiginidae',	'Plž má válcovitou ulitu dlouhou 2,8 mm. Ulita je žlutavě hnědá, lesklá, s jemným rýhováním. Má 4,5–6 závitů, první závit je nejširší. Jak napovídá název, v jejím ústí chybí zuby (AnimalBase Project Group 2005).

Žije ve vlhkých lesích či v blízkosti menších vodních toků, preferuje vápnitý substrát. Je citlivá na období delšího sucha. v létě s oblibou vylézá na spodní stranu listů bylin (bažanka vytrvalá – *Mercurialis perennis*, bršlice kozí noha – *Aegopodium podagraria*), později žije v opadu na povrchu půdy. Druh je hojný na území Česka i Slovenska, má holoarktické rozšíření (Horsák et al. 2013, s. 76; AnimalBase Project Group 2005).

Ve srovnání s rodem vrkoč (*Vertigo* spp.) má více závitů, její ulita nenabývá soudkovitého tvaru.',	0.6,	'colede');

-- 2018-03-11 20:56:08.573767+00