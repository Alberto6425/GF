--# -path=alltenses:.:../abstract

concrete ConstructionFin of Construction = CatFin ** 
  open SyntaxFin, ParadigmsFin, (L = LexiconFin), (E = ExtraFin)  in {

lin
  hungry_VP = mkVP have_V2 (lin NP (mkNP (ParadigmsFin.mkN "nälkä"))) ;
  thirsty_VP = mkVP have_V2 (lin NP (mkNP (ParadigmsFin.mkN "jano"))) ;
  has_age_VP card = mkVP (mkAP (lin AdA (mkUtt (lin NP (mkNP <lin Card card : Card> L.year_N)))) L.old_A) ;

  have_name_Cl x y = mkCl (mkNP (E.GenNP x) L.name_N) (lin NP y) ;
  married_Cl x y = mkCl (mkNP and_Conj (lin NP x) (lin NP y)) (ParadigmsFin.mkAdv "naimisissa") ;

  what_name_QCl x = mkQCl (mkIComp whatSg_IP) (mkNP (E.GenNP x) L.name_N) ;
  how_old_QCl x = mkQCl (E.ICompAP (mkAP L.old_A)) (lin NP x) ;
  how_far_QCl x = mkQCl (E.IAdvAdv L.far_Adv) (lin NP x) ;

-- some more things
  weather_adjCl ap = mkCl (mkVP (lin AP ap)) ;
   
  is_right_VP = mkVP (ParadigmsFin.mkAdv "oikeassa") ;
  is_wrong_VP = mkVP (ParadigmsFin.mkAdv "väärässä") ;

  n_units_AP card cn a = mkAP (lin AdA (mkUtt (lin NP (mkNP <lin Card card : Card> (lin CN cn))))) (lin A a) ;

lincat
  Weekday = {name : NP ; noun : CN ; point : SyntaxFin.Adv ; habitual : SyntaxFin.Adv} ;
lin
  monday_Weekday = mkWeekday "maanantai" ;
  tuesday_Weekday = mkWeekday "tiistaisi" ;
  wednesday_Weekday = mkWeekday "keskiviikko" ;
  thursday_Weekday = mkWeekday "torstai" ;
  friday_Weekday = mkWeekday "perjantai" ;
  saturday_Weekday = mkWeekday"lauantai" ;
  sunday_Weekday = mkWeekday "sunnuntai" ;

  weekdayPunctualAdv w = w.point ;
  weekdayHabitualAdv w = w.habitual ;
  weekdayLastAdv w = ParadigmsFin.mkAdv ("viime" ++ w.point.s) ;
  weekdayNextAdv w = ParadigmsFin.mkAdv ("ensi" ++ w.point.s) ;

oper

  mkWeekday : Str -> Weekday = \d -> 
      let day = mkN d 
      in
      lin Weekday {
       name = mkNP day ; 
       noun = mkCN day ; 
       point = SyntaxFin.mkAdv (casePrep essive) (mkNP day) ; 
       habitual = case d of {
         _ + "i" => ParadigmsFin.mkAdv (d + "sin") ; -- tiistaisin
         _ => ParadigmsFin.mkAdv (d + "isin")  -- keskiviikkoisin
         }
      } ; 
}
