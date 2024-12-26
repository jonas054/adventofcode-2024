defmodule Part1 do
  @input "7062181963976889138465892766837089802893164119283672428084803224146762537636278022267068303131123667131275671962761781144338274960953739251198198390581478589770411732101091142043711145934549855939232614369475489418103863185610767777351826102339628731522148207722474367156533542546655517341253548011628533429767567139621181576344912711355571729166968781131051524465571544779063933529447112449537798474718556316889382483605049453736523147481727716999559081466119712040656730945083923180804629154688452863564039648993116537559137523495449331336825294748208535819243402145763742494046377372937276976783877388577327193746686037618266489251342424618719198061133613712845652467756489466213518855566884293423219952137525391016401454908415749469989412641219283440324556729898122471458369863666917786605212844623181917257887314124411599187358201943754745433710944646475849173350816750277198304472566259943056968825271882205228497176402732357590985016886569158226247733523243323752551432154713507122654554884016193050666579136011508727877217753379956381377121109527329667539119321166861999861816684229129159177935996320595731544561479398418928296173129757613888633824103737851898548335821399595051612720906328656819674834885643559766596221663296447088533481278990479413709867493616702865786454827531986629245639313988965813797227265942579760912564974994992957602038452785398096519057622418409170272653318761188225582068137656424544993021863788185830532273385284718884941663462840966744747726409233154630409540358441436863848042526944401411278664489498314298266161936153641080738974583738589269508426616789576033911392467895897610399176153313341422407322848374729146467088491977995258126215434519499746338482242987256155245467821560237289971099498264125226219311826182775659676610549645863396831889241313577878435328307832505756833447153148784692604581513657793642317057401080106647646331426621898251697074257934912368337157247290355310986766237830151482346276419956275310558734838967504945723686209726414493444111244366343992404015109869431962145369504059604628492448805382413427185796789918916937422855747340397725264280711024559030462859918822976790916328722516132737468266895314239481253745103077595481253873145560394117226590165777288221287957317545186396554363957760596777405921151628548823574276957143223414443464789592212910602096839651682935673963987071704623509797635871332073963799764416521532948282836538972079474360193285364896187191288013149752839136641462755649188471346740569116134665981162268394743053427771209961536578985971264837259699848212839921113217675865337774889569935363988547819055685765793721388242389438279971598817359085288242476052675779405558403351681412514277145174736291128022864113649352251786409210916673825176418565601479433688692079265146989534749655453541829916171385121064488789889153443868252113214663815746568683529960878210771286143761778126202172897933279170703753546625928149271393108532171326356051714023348955239613843811145794445851728651406544128412828647646920196555808050745286319931519441897160815752617448314010894259199973997158681962786974993662447627574859819684831917586199341639559395771299147157651240546810318859197720853632208990411546917530477318385761927160495337575786896872509470644185788959535185855323781117129339658036855542365190705867436723486372642862367711636769602483366569853468325713867142876049499892697793148790166363467858883961287459877775147664957162858049947445508217184731616696145928419720446598939870278921858267712254337164613883933047978725284080181865896337836349488873784178991063195460469929266334956081835926115439231855669043373821137464582763988997804922839323579465579911999681628880862890786939524444146699311815612360729327906441972196518643599016743061618632995611742028415871413398701658476112109633828252163038647846617049539841697191832089291135678946249556818083663481787398671957863060365626203589876081949847612221969211359536427756377453346147869415715569864821274289787366489167767315397599416853698230492264269819898217881078317533139039923884655359115366324371259134362871551189407086544776214448675528453127396628358851884293249439187111409824444132811615472977682681718050442681432352244593752014853178159227675212453988933174499837961470857123619872826877452894301977367472574432962382325076545568475990295555187544671461776943702470725154996988518199321278814869779428834855516268556879483229471073617819158734669269313528585827232288178426665121214619853160312114298351884769436582754617315685891116548122517621316414307520936394206189968220267974807714578499273431409561296110391264207453885460259786853891799249288531803395928690931923109125865436297312613620172116292287672079908698287187729896111285808180231723556979862922141333764186184565827348714126381112591528975974422967868380638419444849239738571184278482922646571630719820493688831953319678451247109573171039132438248720231897314373847046592465172492783389989525871290923544763851817793706976147945578910381928448821589477297243973085682360525423147183966966925495851798873288678627494653652021718241175390611587668091379066262013787481779430357734127888698299796244433740222110507956933098259315329570658546339027498737653667421157541274579594825859575318317092256530685717256750616165733292199424447832758561699372614825783987541042295484392733484466186947932478185663752726121925525059526923583151952710977887428132272767192097522034357131624026251444276910962696958540788083375753351158313365531019394165908247769342757855419793142921971831733333698297892930843775631339878484198695245893987852252510435945254051284831389932549727841067186388406164224650715237753694564510666686254980317024634484189784684883835195916541536071368429105787254758228570878198997679443768816562381297278573815489346665222252793322493376749634499811762371714416809145437521887189645690801777588873428593395353857150442065579693374595952424128817763935991275104757864861664211607286341675694956717223163457413583608119713891653897905767541988407352269653989856465581692370618263129082337767189879577280428121322714175324269237676273248929247982247980386472101465702756807451232596746426179048146031382161984110711753412040317588154560764146517861735443693586361992327421758624604693303126636271634135582858783380833378889472503713719434835420712395377554295627443829256787452140829378784082338039878387465655446325295335596685825217141144386341321145894158384940734146618271554841997573153841732238665399624555196420825895341914146167174215944316742230822951846447997780681298754227268470663649955640498968767234103361399934373685454886618570374277667271651831952887533736149549616649804962879557241469448278707572489772152565862126481766918832278891321599675342633182336039745265349594436358107121716248453543998664387533477360846312442512769623641039686624256360838135218827195881719936631193644488244933875632309360197015977793368758789578494037534786299111156317759858883039744534109391612385833788557660167614924255139313959422107737804913105963562263193444974541752619299514166760726057122758868490967692195848272575222998343784839085941119653080693743134570122952734588807358832262735183677357292366512143622580992289697662812729305920905419479386272257772287905048134180855395169448878146294981433336522992241712657155855322677798997588661823909911698442858496883641267196383955761260653330897939141715343454498425166387303696866253243714491342139421201155808918929925955865867663693148542618385698287349903593288413324764558866517428781622985424509591793654159715258939342410597880903914202079273647837874111166845171579625258625399052563963212056579489291888176727504898807048921977141019949168938399818619361860569798573666749665753451279136489777743669251533883432682313573771909649281497443492796079606626181998677967661784928722597586643263644760268018484765306982553241946254448879528853698947491549889585945664646166283449674667107371642825396547595341761177165865328147315722485843145368202540886865569062792071481061986292518861806226426853766942568425967495925558494393793462881221631125216223581894291491992763295958569862757496548860942547363456919756189884311278346271779440858093935296487047694742927670805549871458707746996889142266378529717064168339954977909654414719762639565426286874719418941744665534622716849025688770974989721436108530322471785649835956828974976646818029757876435685999862322983288159177165205048691636786079318352864712482066917620813975629878458196602076392158136444601178791997971621604083925939544823196098268838314450511724428146363083945092672112415486994322826571212885258650625214719777556151124442756677803389987768351588232355148328326870518043205273961649855763181419953754744978648811128066321063405016369075853646949273478157218592403684111050802475666839615790891427899763555381459864619770921941291133486555516931739214832232185652338123431546126583472498449048779719496862196351449024364650623453847954499327985851548085208720394564495586803985877284268997573587279591914175446657152524881658239862698016363276815620372638323621973317959350457970685215241299706635184954217183266691734241532156354660471029701641267387178175625477881985399295896693336540854212428772941626684765309396752948457171526550667298409119508044731595876913795313703936758731711396238599278730428156146748938552446056478656951982809165198692954863854878798550167452167898835580899613619921549656524615789279899494986288706858973694995018431544377568673889449120361357708556123726323570421265254554579154429637703384745060474829854995542119612213216671688135168612687492597141261665598991836299447884128810367769131573175256386830983815196230306488155613485066282791738831306265347071434645719529322888813783425669896957506686598754244856806343927946264012968675503264209293299833994177468068171439481530787472293612787473958827463620849992994346854224129248648194913668417934482846728932494565939991302183323518189044162478241233536013905328701931798220727266917766359539783877722629746443115214135326805692494027653393896585162067524426198164771173204886406971409689762295156947398175648966249640213721873482413855925187762289499894163295113865678155211250741235523348116319874888291821688043998230733525911994568859304026346234468771906387388652471681835097282661915449736626744492692871709490735948901980335415893093369451104285869990226546965356415175759886465158518366157565883813277335699127525843204185482631397784416682127259143691216817683983841283419413738153214514982378201221931558204146977292376352738022175565681626398534661945211494707827796035586273564822373012339249647810214827331085709252486933327539673471359365793140425038365252207068519667528382158580459554901067898414251137715730583087878564961582514312629261658614729885435747758715387041529113543761461319475067541923266656751286231037112734678335445593794548372914342976463781436259669760669490106633174846303863162270415241537158613431658442147631661655125374837232675590537349207518327998173921319662749285854252114774379935887276709912854055887841402770494132507643569579782346736992462651107720234035999683533547489086257347876683753354216091948510284746931543429677173573896784707919352316732724881458577239626746372056322864265812789621744235809623124915355314583310624210792478423238239177426716185796339230985398949870219295951490819871567441351989272739928523748513394324215218732373666839572690141731605847189526181071174223679445648533869274727345935338489318325259685139858414934426855825775042576329402958527392363441905746705843298312968781266464111899712415918992868157162646978516723717539874469072391345644840217929174595413673571542917213978398238551828346879696552951166697203631191237438575368070906263367777556420651769141478668058146627411940506172698444548916408857985818142297793574105636932682187370808750773419959430468145383612912588696676848679837819722139589974325284617558864236767448353354283134122728225330279670782882367427664869464419252954185414902652843594394550538864416559904549631832851140473058111086369091128136349259738651473745561997275780423452241586855070765949356054973739818849587916918225813290507750438747411666545499938578604972881393654220434881373554827823152053201314784668543643276857945439707522427621227567548045928676526681522647349981327041115649134296638949994263858066362250109968978970449217614711243014392255931119855296456232111615658682717962887513916597558335935950568614139199857884611945276676191752257724695439201793748026837265964611391665535563212283463498758154453353958760298916478653695920198195573964459829118848702614114496515390187352247694199557178250236432247310752822229663714797741711995681969999375969879529234442647627238553366468432945812297284626313965443462685251608612396719163313144016628643161728492363713857925560177475369279693617559929147734832740589897245326528725941157486663612684293681661631292821917242723769295370995072593018852481107580102880851265314415383734513861174550747662566571618160903123178256756437778731384017846848304575763878497341669247321153769524785878644064694272399493903965302817768559411262984847292493779539311916108968409834672568739596892923916631486431594738848677426777196270207672174642136826955269924816354395544864295278313225105691248234906169108354172642908385962023228740101552594355673059615780596525429696729228613835883190861179922826887010657011264519962776314263771835924223305176643154501726848278841396565256482337659934576773676178214239278156386773659467179581812783991291808752257071858480158257877143611111898264577196475294518019821577386929311384512684773393712443964169687519729224511559401971954275118980344071952214863585353653216272755280135973302442529435357188891436522060977551261357198463873238973372605745358677825416857769893717713245662012439063617727555529529774265066577470669270288667414779474059312352777517928479485851149812564213812847779757221856178030629862385463415636247831892487499249683057925475896699249580581735436647436936344744171384955112515678398934371846531612258997531134804231202322271390759445573510533467254749162828834719478485844922498116287145269326588995517621469672555869854541165032418231156846739157159119832143526317745699365646273050621557848525397760526955763822777621232473492229401779559624771996645418594840306443476784896762417122484169709810331944829023115033308621986160932395192125454810622177856769299360294155299885623485944776102084908944293077768861862782827928428749194068915086543375382287202017442016481079276726792458219937221161181371613840149843231330753788532899786351845840493564435015481628662435512694744614504367334679463057573085993846406299464878966922746736429668254918636651821168915245549344163778502525988625674762436441317926738230284873949273543541824541109525719114514374616757754227759552768445941789888824918987121798952540332775634220217075872553291242773370897581667642458591946140215711224991148179746654598412954058589455617642938838689671731995755919806440851254714083616780371582615440843568337899731961923860181583344852565850722199757074956437858556914454361339841538561260978989662722946493338567847150848425329297703296627621322149748077862963715761972555606543377675663469496095178464238870668698864693952170468846364342294723235184436025642948722679984058478822508042751447374544829621595515817274785657942270473979543922532489234773484045252797653610296044999977109860714180657599789757118866391897159556305364575157123374319910436858751699656185958293627119115262509042376170143125913374487791514376293580698770945614261642631581635196507930408514673845137518323357896680337296312961516575812443764535914381153348777971945582664164364577232235634941655772591036134048625413355970221283923297973536141262393399967441277316347175481684227975447957944684872195872465402667133241116112357548107846821811536484372259812920564581219565222364191725152996414181285061311686217458365779689175803886942640283838301739313586131114937580429150659541354275357599977088292725789949125152743364151614869728699456373788727233598171963023757082528639516915169711259429783546295537235420573221947518611646787282606220595175783759947924604432203349263859147260429821829838384567338919398342172623557262329197212426487496553270908811165292621622595199264615435126267286688316111428772425656279646939755453905265699144867289253860706099258951167391541152854026861813334627364433358720639414735254998379606041777032769689972283133578426446643535409934865329756295478351321111815884637053123647258146116464213214881273304478132621144072652995995867636352949181588473575725682063964995747445197554684862707750419060726034517017934872833024282225283669444296717224731951165558335870437026664523181897514129619934485781973151654362955130788268449171259526221763787371246312164296362694118963539848439872911575457453458410964279253596927988655210842456457137967438725264217975699673427548456287368370121085165018858910947762153659744448415763144749207790425093632760251747257131778253191118369929552161501994232191231726233869836995209150583649531845327655338589104939808665574862746257633115423145288323336242105154673377654731315248884820106011724225395419917364646318413396626459889343125574291135115678129522915771311923835220504331243688239111199544335831776066201227176679299680853998914115917592257695479684475182412762183012365475471191284315552078839070988446853139964438641087458313209527528185779327332665285786767130969225253424947985344459588637685770717842334663321979889146133777697424524794989085373935658597624312105797683486368019286430481460818426505053399141652081469640177941195747381257267072519571825613458829639344317135751421807070614596838079572375751065404261432795726977884549764164503493503983999719811881186454508655412534456696298271321498335073893457538848411974935211539494357596231095939018659568504148205263654217826155942879362024459351223837817111808071511390413316603265881439481577821688906568517755765953572318618879936112643470347613366891413821822720121250234473765285629650925234474489319489152857478234167588925375592874589051401979571619607770383063548180454095309324732332757970536115753014647421144379317586587670333258271527972856468637663665894240341232926487245219175656892329796770372881615486137332371920295667305481264139945727265361582110438479809072176760162755639280497067754094747954175411377756628360458289803496671999814991682596431938509067947686181590447243508168993788346575943862812567104566351883853351802038656895433353366026796623574339602996656188581784664693939874369689418712538277528866406621734016617839245288455669183998862985956446578388809610444835978453421686771977107485954070793876709194795926219761879655433877608570712846184775215311678225181976814180627848693398481486461052787534601259542889318663129799618174564868383271423079279826815433505761574849465654337750912156434947427013369535932690418714422260159274589154789950766644988818839130627991659589579629438323214218229286541812808671923140866626487845644416163645154285499110326269192419219239865988924638427763271649617732694915492733535259336791787015201875224370984350108536388142979039253154489254137787842236705240655883691443584416404988662397719289297190518499148811549535746030687742869542678839735263508960943676241488896239185244863779761631855022254785701495649714964278771789951484293887252283789933492766174521852394528937936311942929441773237854204411689039942627246998394874344224804481393161511560727327525566817186289332408473138959432577278779148235984815949090912912778645756934932931434687232937963311146760536099254844853037171497396069181955599385846859265876705915982068873534618288492568302833987718536210334584509184764992156297573598674283595888409778532793219270633916625040322482979762714079327020629036323322822784409092787741671236139770823829638665445122904640834328936181761618564174504999851183247364718546964054396150895278805078936373497335905774307277414844961687562028835773391667854742441581444080306441598419665697528563814168283957458266345139586892862821774"

  # @input "2333133121414131402"

  def main do
    disk_map = for <<x::binary-1 <- @input>>, do: Integer.parse(x)
    with_index = Enum.zip(disk_map, 0..String.length(@input))
    disk_layout = List.flatten(Enum.map(with_index, fn (elem) -> put(elem) end))
    cheksum(move(disk_layout), 0)
  end

  def put({char, ix}) when rem(ix, 2) == 0 do
    {size, _} = char
    List.duplicate(round(ix / 2), size)
  end
  
  def put({char, ix}) when rem(ix, 2) != 0 do
    {size, _} = char
    List.duplicate(nil, size)
  end

  def move(list, first_free, last_used) when first_free >= last_used do
    list
  end

  def move(list, first_free, last_used) when first_free < last_used do
    new_list = List.replace_at(List.replace_at(list, first_free, Enum.at(list, last_used)), last_used, nil)
    move(new_list)
  end

  def move(list) do
    move(list, index_of_first_free(list), index_of_last_used(list))
  end

  def index_of_first_free(list) do
    Enum.find_index(list, fn elem -> elem == nil end)
  end

  def index_of_last_used(list) do
    Enum.count(list) - 1 - Enum.find_index(Enum.reverse(list), fn elem -> elem != nil end)
  end

  def cheksum([head | _tail], _index) when head == nil do
    0
  end

  def cheksum([head | tail], index) when head != nil do
    head * index + cheksum(tail, index + 1)
  end
end

IO.puts(Part1.main) # 6461289671426
