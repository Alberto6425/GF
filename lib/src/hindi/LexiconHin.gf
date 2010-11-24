--# -path=.:prelude

concrete LexiconHin of Lexicon = CatHin ** 
--open ResHin, Prelude in {
  open ParadigmsHin, Prelude in {

  flags 
    optimize=values ;
    coding = utf8;

  lin
  airplane_N = mkN "जHज" ;
--  answer_V2S = mkV2  (compoundV "जwब" (mkV "दयन")) ;
--  apartment_N = mkN "कमरह" ;
  apple_N = mkN "सयब" ;
--  art_N = mkN "fन" ;
  ask_V2Q = mkV2 (mkV "पwचHन") ;
--  baby_N = mkN "बचH" ;
  bad_A = mkA "बर" ;
  bank_N = mkN "बयनक" ;
  beautiful_A = mkA "सनदर" ;
  become_VA = mkV "बनन";
  beer_N = mkN "बेेर" ;
--  beg_V2V =  mkV2V (compoundV "लतज" (mkV "करन")) "सै" "कह" False;
  big_A = mkA "बृ" ;
--  bike_N = mkN "सयचल" feminine ;
--  bird_N = mkN "परनदह" ;
  black_A =  mkA "कल" ;
  blue_A = mkA "नयल" ;
  boat_N = mkN "नw" ;
  book_N = mkN "कतब" feminine ;
--  boot_N = mkN "जwत" ;
  boss_N = mkN "मलक" ;
  boy_N = mkN "लृक" ;
  bread_N = mkN "रwतय" ;
  break_V2 = mkV2 (mkV "तwृन") ;
  broad_A = mkA "चwृ" ;
  brother_N2 = mkN2 (mkN "बHय") (mkPrep "क" "क") "कै" ; --not correct
  brown_A = mkA "बHwर" ;
--  butter_N = mkN "मकh-न" ;
  buy_V2 = mkV2 (mkV "खरयदन");
  camera_N = mkN "कयमरH" ;
  cap_N = mkN "तwपय" ;
  car_N = mkN "कर" ;
--  carpet_N = mkN "तपy^य" ;
  cat_N = mkN "बलय" feminine;
--  ceiling_N = mkN "चh-त" feminine ;
  chair_N = mkN "करसय" ;
--  cheese_N = mkN "पनयर" feminine ;
  child_N = mkN "बचH"  ;
  church_N = mkN "गरज" ;
  city_N = mkN "XHर" ;
  clean_A = mkA "सf" ;
  clever_A = mkA "चतर" ;  
  close_V2 =  mkV2 (compoundV "बनद" do_V2); 
  coat_N = mkN "कwथ" ;
  cold_A = mkA "सरद" ;
  come_V = mkV "ान" ;
  computer_N = mkN "कमपयwथर" ;
  country_N = mkN "दयX" ;
--  cousin_N = mkCmpdNoun "चच" (mkN "ज़द") ; -- a compund noun made of two nouns
  cow_N = mkN "गै" feminine ;
  die_V = mkV "मरन" ;
  dirty_A = mkA "गनद" ;
--  distance_N3 = mkN3 (mkN "fशलह") (mkPrep "क") "कै" "सै"  ;
  doctor_N = mkN "दकतर" ;
  dog_N = mkN "कत" ;
  door_N = mkN "दरwज़" ;
  drink_V2 = mkV2 (mkV "पयन");
  easy_A2V = mkA "ासन" "" ; -- chek for A or a
  eat_V2 = mkV2 (mkV "कHन") "" ;
  empty_A = mkA "खलय" ;
  enemy_N = mkN "दXमन" ;
  factory_N = mkN "करखन" ;
-- father_N2 = mkN2 (mkN "पत" irregular) (mkPrep "क") "कै"  ;
  fear_VS = mkV "दृन";
  find_V2 = mkV2 (mkV "दHwनद") ;
  fish_N = mkN "मचHलय" ;
  floor_N = mkN "fरX" ;
  forget_V2 = mkV2 (mkV "बHwलन")  ;
--  fridge_N = mkN "fरयग" ;
  friend_N = mkN "दwसत" masculine ;
  fruit_N = mkN "पHल" ;
--  fun_AV = mkAV (regA "fुन") ;
  garden_N = mkN "बघ" ; -- chek for G
  girl_N = mkN "लृकय" ;
  glove_N = mkN "दसतन" ;
  gold_N = mkN "सwन" ;
  good_A = mkA "चH" ;
  go_V = mkV "जन" ;
  green_A = mkA "Hर" ;
--  harbour_N = mkCmpdNoun "बनदर" (mkN "गह") ;
  hate_V2 = mkV2 (compoundV "नfरत" do_V2) ;
  hat_N = mkN "थwपय" ;
--  have_V2 = dirV2 (mk5V "हवे" "हस" "हद" "हद" "हविनग") ;
  hear_V2 = mkV2 (mkV "सनन") ;
--  hill_N = mkN "पहृय" ;
--  hope_VS = (compoundV "मयद" do_V2);
  horse_N = mkN "गHwृ" ;
  hot_A = mkA "गरम" ;
  house_N = mkN "गHर" ;
  important_A = mkA "ज़रwरय" ;  -- check about z
--  industry_N = mkN "शनेत" feminine ;
  iron_N = mkN "लwH" ;
  king_N = mkN "रज" ;
  know_V2 = mkV2 (mkV "जनन") ;
  know_VS = mkV "जनन";
--  lake_N = mkN "जh-यल" feminine ;
  lamp_N = mkN "दय" ;
  learn_V2 = mkV2 (mkV "सयकHन") ;
--  leather_N = mkN "चमृ" ;
  leave_V2 = mkV2 (mkV "चलन") ;
  like_V2 = mkV2 (compoundV "पसनद" do_V2);
  listen_V2 = mkV2 (mkV "सनन") ;
  live_V = mkV "रहन" ; ---- touch
  long_A = mkA "लमब" ;
  lose_V2 = mkV2 (compoundV "कHw" do_V2) ;
  love_N = mkN "परयम" ;
  love_V2 = mkV2 (compoundV "पयर" do_V2) "कw";
  man_N = mkN "ादमय" ;
--  married_A2 = mkA "Xदय " "सै" ;
  meat_N = mkN "मस" ;
  milk_N = mkN "दwदH" ;
  moon_N = mkN "चनद" ;
  mother_N2 = mkN2 (mkN "मत" feminine) (mkPrep "कय" "कय") "कै";   -- not covered need to be discussed
--  mountain_N = mkN "पहृय" ;
  music_N = mkN "सनगयत" ;
--  narrow_A = mkA "बरयक" ;
  new_A = mkA "नय" ;
  newspaper_N = mkN "खबर" ;
  oil_N = mkN "तयल" ;
  old_A = mkA "बwृH" ;
  open_V2 = mkV2 (mkV "कHwलन") ;
--  paint_V2A = mkV2 (compoundV "रनग" do_V2) ;
  paper_N = mkN "कघज़" ;
  paris_PN = mkPN "पयरस" ;
  peace_N = mkN "मन" ;
  pen_N = mkN "qलम" ;
--  planet_N = mkN "सयरह" ;
--  plastic_N = mkN "पलसथक" ;
  play_V2 = mkV2 (mkV "कHयलन") ;
--  policeman_N = mkCmpdNoun "पwलयस" (mkN "wल") ; 
--  priest_N = (mkN "पयघमबर") ;
--  probable_AS = mkAS (regA "परॉबबले") ;
--  queen_N = mkN "Xहज़दय" ;
--  radio_N = mkN "रयधयw" ;
  rain_V0 = compoundV "बरX" (mkV "Hwन" ) ;
  read_V2 = mkV2 (mkV "पृHन");
  red_A = mkA "लल" ;
  religion_N = mkN "दHरम" ;
--  restaurant_N = mkN "हwथल" ;
  river_N = mkN "दरय" masculine ;
  rock_N = mkN "चथन" ;
  roof_N = mkN "चh-त" masculine ;
--  rubber_N = mkN "रबृ" ;
  run_V = mkV "दwृन" ;
  say_VS = mkV "कHन" ;
  school_N = mkN "मकतब" ;
--  science_N = mkN "सनस" ; -- vgyan
  sea_N = mkN "समनदर" ;
--  seek_V2 = mkV2 (compoundV "तलX" do_V2) ;
  see_V2 = mkV2 (mkV "दयकHन") ;
  sell_V3 = mkV3 (mkV "बयचन") "कw" "";
  send_V3 = mkV3 (mkV "बHयजन") "कw" "";
  sheep_N = mkN "बHयृ" feminine ;
  ship_N = mkN "जHज़" ;
  shirt_N = mkN "करत" feminine;
  shoe_N = mkN "जwत" ;
  shop_N = mkN "दwकन" feminine ;
  short_A = mkA "चHwथ" ;
  silver_N = mkN "चनदय" ;
  sister_N = mkN "बHन" feminine ;
  sleep_V = mkV "सwन" ;
  small_A = mkA "चHwथ" ;
  snake_N = mkN "सनप" ;
--  sock_N = mkN "जरब" feminine ;
  speak_V2 = mkV2 (mkV "बwलन") ;
  star_N = mkN "तर" ;
--  steel_N = mkN "सतयल" ; -- something like ispat
  stone_N = mkN "पतHर" ;
--  stove_N = mkN "चwलह" ;
--  student_N = mkCmpdNoun "t-लब" (mkN "ेलम") ; -- something vidrati
  stupid_A = mkA "बैwqwf" ;
--  sun_N = mkN "सwरज" ; -- swrya
  switch8off_V2 =  mkV2 (compoundV "बनद" do_V2) ;
  switch8on_V2 = mkV2 (mkV "चलन") ;
  table_N = mkN "मयज़" feminine ;
  talk_V3 = mkV3 (mkV "बwलन") "सै" "कै बरै में";
--  teacher_N = mkN "िसतद" ; -- adyapak
  teach_V2 = mkV2 (mkV "पृHन") ;
  television_N = mkN "तयwय" ;
  thick_A = mkA "मwथ" ;
  thin_A = mkA "पतल" ;
  train_N = mkN "रयल गृय" ;
  travel_V = (compoundV "सfर" do_V2) ;
--  tree_N = mkN "पयृ" masculine ;
-- ---- trousers_N = mkN "तरॉुसेरस" ;
  ugly_A = mkA "बदसwरत" ;
  understand_V2 = mkV2 (mkV "समजHन") ;
--  university_N = mkN "यwनयwरसथय" ;
  village_N = mkN "गwं" ; -- check for n or N
--  wait_V2 = mkV2 (compoundV "नतz-र" do_V2) "क" ; -- something prtkXa
  walk_V = mkV "चलन" ;
--  warm_A = mkA "गरम" ; something gngna
--  war_N = mkN "जनग" ;
  watch_V2 = mkV2 (mkV "दयकHन") ;
--  water_N = mkN "पनय" masculine ; -- not covered masculine ending with y
  white_A = mkA "सfयद" ;
  window_N = mkN "रwXनदन" ;
--  wine_N = mkN "Xरब" feminine ;
  win_V2 = mkV2 (mkV "जयतन") ;
  woman_N = mkN "ेwरत" feminine ;
--  wonder_VQ = compoundV "Hेरन" (mkV "हwन") ;
  wood_N = mkN "लकृय" ;
  write_V2 = mkV2 (mkV "लकh-न") ;
  yellow_A = mkA "पयल" ;
  young_A = mkA "जwन" ;
  do_V2 = mkV2 (mkV "करन")  ;
--  now_Adv = mkAdv "ब" ;
--  already_Adv = mkAdv "पहलै हय" ;
  song_N = mkN "गयत" ;
  add_V3 = mkV3 (compoundV "जमे" do_V2) "" "" ;
--  number_N = mkN "हनदसह" ;
--  put_V2 = mkV2 (mkV "धलन") ;
  stop_V = mkV "रकन"  ;
--  jump_V = compoundV "चHलनग" (mkV "लगन") feminine ;

--  left_Ord = {s = "बयं" ; n = singular};
--  right_Ord = {s= "दयं" ; n = singular};
--  far_Adv = mkAdv "दwर" ;
  correct_A = mkA "सयH" ;
  dry_A = mkA "सwकH" ;
--  dull_A = mkA "नलिक" ;
--  full_A = mkA "मकमल" ;
  heavy_A = mkA "बHरय" ;
  near_A = mkA "पस" ;
--  rotten_A = mkA "खरब" ;
  round_A = mkA "गwल" ;
  sharp_A = mkA "तयज़" ;
  smooth_A = mkA "चकन" ;
  straight_A = mkA "सयदH" ;
  wet_A = mkA "गयल" ; ----
  wide_A = mkA "चwृ" ;
  animal_N = mkN "जनwर" ;
  ashes_N = mkN "रकh-" feminine; -- FIXME: plural only?
--  back_N = mkN "qमर" feminine ;
--  bark_N = mkN "बरक" ;
--  belly_N = mkN "दh-नय" ;
--  blood_N = mkN "खwन" ;
  bone_N = mkN "Hधय" feminine ;
--  breast_N = mkN "चh-तय" ; --stan
  cloud_N = mkN "बदल" ;
  day_N = mkN "दन" ;
  dust_N = mkN "दHwल" ;
  ear_N = mkN "कन" ;
--  earth_N = mkN "ज़मयन" feminine ;
  egg_N = mkN "नधH" ;
  eye_N = mkN "ानकH" feminine ;
  fat_N = mkN "मwत" ;
  feather_N = mkN "पनकH" ;
--  fingernail_N = mkN "नखन" ;
  fire_N = mkN "ाग" feminine ;
  flower_N = mkN "पHwल" ;
  fog_N = mkN "दHनद" feminine ;
  foot_N = mkN "पwं" ; -- not properly covered need to be discussed
  forest_N = mkN "जनगल" ;
  grass_N = mkN "गHस" feminine ;
--  guts_N = mkN "गुत" ; -- FIXME: no singular
  hair_N = mkN "बल" ;
  hand_N = mkN "HतH" ;
  head_N = mkN "सर" ;
  heart_N = mkN "दल" ;
--  horn_N = mkN "गh-नतय" ;
  husband_N = mkN "पतय" ;
  ice_N = mkN "बरf" feminine ;
  knee_N = mkN "गHतनH" ;
  leaf_N = mkN "पतH" ;
  leg_N = mkN "तनग" feminine ;
  liver_N = mkN "कलयजH" ;
--  louse_N = mkN "" ; -- jwN
  mouth_N = mkN "मनH" ; 
  name_N = mkN "नम" ;
  neck_N = mkN "गरदन" feminine ;
  night_N = mkN "रत" feminine ;
  nose_N = mkN "नक" ;
--  person_N = mkN "Xखश" ;
  rain_N = mkN "बरX" feminine ;
  road_N = mkN "सृक" ;
  root_N = mkN "गृ" feminine ;
  rope_N = mkN "रसय" ;
  salt_N = mkN "नमक" feminine ;
  sand_N = mkN "रयत" feminine ;
  seed_N = mkN "बयज"  ;
--  skin_N = mkN "जलद" feminine ; -- crm
  sky_N = mkN "मबर" ;
  smoke_N = mkN "दHwं"; -- singular masc nouns ending with aN,wN yet to be implemented
  snow_N = mkN "बरf" feminine ;
  stick_N = mkN "सॉथय" ;
  tail_N = mkN "दम" ;
--  tongue_N = mkN "ज़बन" feminine ;
--  tooth_N = mkN "दनत" masculine;
  wife_N = mkN "पतनय" ;
  wind_N = mkN "Hw" ;
--  wing_N = mkN "पर" ;
  worm_N = mkN "कयृ" ;
  year_N = mkN "सल" ;
--  blow_V = mkV "चलन" ;
  breathe_V = compoundV "सनस" (mkV "लयन" ) ;
  burn_V = mkV "जलन" ;
  dig_V = mkV "कHwदन" ;
  fall_V = mkV "गरन" ;
--  float_V = mkV "तयरन" ;
  flow_V = mkV  "चलन" ;
  fly_V = mkV "ृन" ;
--  freeze_V = mkV "जमन";
  give_V3 = mkV3 (mkV "दयन") "कw" "";
  laugh_V = mkV "हनसन" ;
--  lie_N = mkN "जh-wत" masculine ;
  lie_V = compoundV "जHwत" (mkV "बwलन" );
  play_V = mkV "कHयलन" ;
  sew_V = mkV "सयन" ;
  sing_V = mkV "गन" ;
  sit_V = mkV "बयथHन" ;
  smell_V = mkV "सwनगन" ;
  spit_V = mkV "तHwकन" ;
  stand_V = compoundV "कHृै" (mkV "हwन" ); -- a type of compound verb made of two verbs i.e 'kHRa' also inflects, rather than a string and verb should be fixed
--  swell_V = mkV "सwजh-न" ;
  swim_V = mkV "तयरन" ;
  think_V = mkV "सwचन" ;
  turn_V = mkV "मृन";
--  vomit_V = compoundV "लतय" (mkV "करन") feminine ;
  bite_V2 = mkV2 (mkV "कतन") ;
  count_V2 = mkV2 (mkV "गनन") ;
  cut_V2 = mkV2 (mkV "कतन") ;
  fear_V2 = mkV2 (mkV "धरन") ;
  fight_V2 = mkV2 (mkV "लृन") ;
--  hit_V2 = mkV2 (compoundV "तh-wकर" (mkV "मरन" ));
  hold_V2 = mkV2 (mkV "पकृन") ;
--  hunt_V2 = mkV2 (compoundV "Xकर" do_V2);
  kill_V2 =  mkV2 (compoundV "मर" (mkV "धलन" )) ;
  pull_V2 = mkV2 (mkV "कHनचन");
--  push_V2 = mkV2 (mkV "दh-कयलन") "कw" ;
--  rub_V2 = mkV2 (mkV "रगृन") ;
--  scratch_V2 = mkV2 (mkV "कh-रचन") "कw" ;
--  split_V2 = mkV2 (mkV "बनत") "कw" ;
--  squeeze_V2 = dirV2 (regV "सqुेेज़े") ;
--  stab_V2 = dirV2 (regDuplV "सतब") ;
--  suck_V2 = mkV2 (mkV "चwसन") ;
  throw_V2 = mkV2 (mkV "पHयनकन") ;
  tie_V2 = mkV2 (mkV "बनदHन") ;
  wash_V2 = mkV2 (mkV "दHwन") ;
  wipe_V2 = mkV2 (compoundV "शf" (mkV "करन" ));

----  other_A = regA "ॉतहेर" ;

--  grammar_N = mkN "गरदन" ;
--  language_N = mkN "ज़बन" feminine ;
--  rule_N = mkN "शwल" ;

---- added 4/6/2007
    john_PN = mkPN "जॉन" ;
--    question_N = mkN "सwल" ;
--    ready_A = regA "रेदय" ;
--    reason_N = mkN "wजह" feminine ;
--    today_Adv = mkAdv "ाज" ;
--    uncertain_A = mkA ["घयर यqयनय"] ;
    
 
}
