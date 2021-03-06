--# -path=.:../common:../abstract

concrete ExtendEng of Extend =
  CatEng ** ExtendFunctor [ProDrop]
  with
    (Grammar = GrammarEng) **

  open
    GrammarEng,
    ResEng,
    Coordination,
    Prelude,
    MorphoEng,
    ParadigmsEng in {

  lin
    GenNP np = {s = \\_,_ => np.s ! npGen ; sp = \\_,_,_ => np.s ! npGen} ;
    GenIP ip = {s = \\_ => ip.s ! NCase Gen} ;
    GenRP nu cn = {
      s = \\c => "whose" ++ nu.s ! Nom ++ 
                 case c of {
                   RC _ (NCase Gen) => cn.s ! nu.n ! Gen ;
                   _ => cn.s ! nu.n ! Nom
                   } ;
      a = RAg (agrP3 nu.n)
      } ;
      
    GenModNP num np cn = DetCN (DetQuant (GenNP (lin NP np)) num) cn ;
    GenModIP num ip cn = IdetCN (IdetQuant (GenIP (lin IP ip)) num) cn ;

    StrandQuestSlash ip slash = 
      {s = \\t,a,b,q => 
         (mkQuestion (ss (ip.s ! NPAcc)) slash).s ! t ! a ! b ! q ++ slash.c2
      };
    StrandRelSlash rp slash = {
      s = \\t,a,p,ag => 
        rp.s ! RC (fromAgr ag).g NPAcc ++ slash.s ! t ! a ! p ! oDir ++ slash.c2 ;
      c = NPAcc
      } ;
    EmptyRelSlash slash = {
      s = \\t,a,p,_ => slash.s ! t ! a ! p ! oDir ++ slash.c2 ;
      c = NPAcc
      } ;

{- -----
  lincat
    VPI   = {s : VVType => Agr => Str} ;
    [VPI] = {s1,s2 : VVType => Agr => Str} ;

  lin
    BaseVPI = twoTable2 VVType Agr ;
    ConsVPI = consrTable2 VVType Agr comma ;

    MkVPI vp = {
      s = table {
            VVAux      => \\a => vp.ad ! a ++ vp.inf ++ vp.p ++ vp.s2 ! a;
            VVInf      => \\a => "to" ++ vp.ad ! a ++ vp.inf ++ vp.p ++ vp.s2 ! a;
            VVPresPart => \\a => vp.ad ! a ++ vp.prp ++ vp.p ++ vp.s2 ! a
          }
      } ;
    ConjVPI = conjunctDistrTable2 VVType Agr ;
    ComplVPIVV vv vpi = 
      insertObj (\\a => vpi.s ! vv.typ ! a) (predVV vv) ;
----}


  lincat
    VPS   = {s : {s : Agr => Str} ; i : {s : VVType => Agr => Str}} ; --- finite and infinite forms separately
    [VPS] = {s : {s1,s2 : Agr => Str} ; i : {s1,s2 : VVType => Agr => Str}} ;

  lin
    BaseVPS x y = {s = twoTable Agr x.s y.s ; i = twoTable2 VVType Agr x.i y.i} ;
    ConsVPS x xs = {s = consrTable Agr comma x.s xs.s ; i = consrTable2 VVType Agr comma x.i xs.i} ;

    PredVPS np vps = {s = np.s ! npNom ++ vps.s.s ! np.a} ;

    MkVPS t p vp = {
      s = {s = \\a => 
            let 
              verb = vp.s ! t.t ! t.a ! p.p ! oDir ! a ;
              verbf = verb.aux ++ verb.adv ++ verb.fin ++ verb.inf ;
            in t.s ++ p.s ++ vp.ad ! a ++ verbf ++ vp.p ++ vp.s2 ! a ++ vp.ext
	   } ;
      i = {s = table {
            VVAux      => \\a => vp.ad ! a ++ vp.inf ++ vp.p ++ vp.s2 ! a;
            VVInf      => \\a => "to" ++ vp.ad ! a ++ vp.inf ++ vp.p ++ vp.s2 ! a;
            VVPresPart => \\a => vp.ad ! a ++ vp.prp ++ vp.p ++ vp.s2 ! a
            }
	  }
      } ;

    ConjVPS c xs = {s = conjunctDistrTable Agr c xs.s ; i = conjunctDistrTable2 VVType Agr c xs.i} ;

    ComplVPIVV vv vpi = 
      insertObj (\\a => vpi.i.s ! vv.typ ! a) (predVV vv) ;

-----

    ICompAP ap = {s = "how" ++ ap.s ! agrP3 Sg} ; ---- IComp should have agr!

    IAdvAdv adv = {s = "how" ++ adv.s} ;

    PresPartAP vp = {
      s = \\a => vp.ad ! a ++ vp.prp ++ vp.p ++ vp.s2 ! a ++ vp.ext ;
      isPre = vp.isSimple                 -- depends on whether there are complements
      } ;

    EmbedPresPart vp = {s = infVP VVPresPart vp Simul CPos (agrP3 Sg)} ; --- agr

   PastPartAP vp = { 
      s = \\a => vp.ad ! a ++ vp.ptp ++ vp.p ++ vp.c2 ++ vp.s2 ! a ++ vp.ext ;
      isPre = vp.isSimple                 -- depends on whether there are complements
      } ;
   PastPartAgentAP vp np = { 
      s = \\a => vp.ad ! a ++ vp.ptp ++ vp.p ++ vp.c2 ++ vp.s2 ! a ++ "by" ++ np.s ! NPAcc ++ vp.ext ;
      isPre = False
      } ;

   GerundCN vp = {
     s = \\n,c => vp.ad ! AgP3Sg Neutr ++ vp.prp ++
                  case <n,c> of {
                    <Sg,Nom> => "" ;
                    <Sg,Gen> => Predef.BIND ++ "'s" ;
                    <Pl,Nom> => Predef.BIND ++ "s" ;
                    <Pl,Gen> => Predef.BIND ++ "s'"
                    } ++ 
                  vp.p ++ vp.s2 ! AgP3Sg Neutr ++ vp.ext ; 
     g = Neutr
     } ;

   GerundNP vp = 
     let a = AgP3Sg Neutr ---- agr
     in 
     {s = \\_ => vp.ad ! a ++ vp.prp ++ vp.p ++ vp.s2 ! a ++ vp.ext ; a = a} ;

   GerundAdv vp = 
     let a = AgP3Sg Neutr
     in 
     {s = vp.ad ! a ++ vp.prp ++ vp.p ++ vp.s2 ! a ++ vp.ext} ;

   WithoutVP vp = {s = "without" ++ (GerundAdv (lin VP vp)).s} ; 

   InOrderToVP vp = {s = ("in order" | []) ++ infVP VVInf vp Simul CPos (AgP3Sg Neutr)} ;

   PurposeVP vp = {s = infVP VVInf vp Simul CPos (agrP3 Sg)} ; --- agr

   ByVP vp = {s = "by" ++ (GerundAdv (lin VP vp)).s} ; 


   NominalizeVPSlashNP vpslash np = 
     let vp : ResEng.VP = insertObjPre (\\_ => vpslash.c2 ++ np.s ! NPAcc) vpslash ;
         a = AgP3Sg Neutr
     in 
     lin NP {s = \\_ => vp.ad ! a ++ vp.prp ++ vp.s2 ! a ; a = a} ;  


  oper passVPSlash : VPSlash -> Str -> ResEng.VP = 
   \vps,ag -> 
    let 
      be = predAux auxBe ;
      ppt = vps.ptp
    in {
    s = be.s ;
    p = [] ; 
    prp = be.prp ;
    ptp = be.ptp ;
    inf = be.inf ;
    ad = \\_ => [] ;
    s2 = \\a => vps.ad ! a ++ ppt ++ vps.p ++ ag ++ vps.s2 ! a ++ vps.c2 ; ---- place of agent
    isSimple = False ;
    ext = vps.ext
    } ;

  lin 
    PassVPSlash vps = passVPSlash (lin VPS vps) [] ;
    PassAgentVPSlash vps np = passVPSlash (lin VPS vps) ("by" ++ np.s ! NPAcc) ;

   --- AR 7/3/2013
   ComplSlashPartLast vps np = case vps.gapInMiddle of {
     _  => insertObjPartLast (\\_ => vps.c2 ++ np.s ! NPAcc) vps  ---
     } ;

   --- AR 22/5/2013
   ExistsNP np = 
      mkClause "there" (agrP3 (fromAgr np.a).n) 
        (insertObj (\\_ => np.s ! NPAcc) (predV (regV "exist"))) ;


   ComplBareVS  v s = insertExtra s.s (predV v) ;
   SlashBareV2S v s = insertExtrac s.s (predVc v) ;

  CompoundN noun cn = {
    s = (\\n,c => noun.s ! Sg ! Nom ++ cn.s ! n ! c) ;
    g = cn.g
  } ;
  
  CompoundAP noun adj = {
    s = (\\_ => noun.s ! Sg ! Nom ++ adj.s ! AAdj Posit Nom) ;
    isPre = True
    } ;

    FrontExtPredVP np vp = {
      s = \\t,a,b,o => 
        let 
          subj  = np.s ! npNom ;
          agr   = np.a ;
          verb  = vp.s ! t ! a ! b ! o ! agr ;
          compl = vp.s2 ! agr
        in
        case o of {
          ODir _ => vp.ext ++ frontComma ++ subj ++ verb.aux ++ verb.adv ++ vp.ad ! agr ++ verb.fin ++ verb.inf ++ vp.p ++ compl ;
          OQuest => verb.aux ++ subj ++ verb.adv ++ vp.ad ! agr ++ verb.fin ++ verb.inf ++ vp.p ++ compl ++ vp.ext
          }
    } ;

    InvFrontExtPredVP np vp = {
      s = \\t,a,b,o => 
        let 
          subj  = np.s ! npNom ;
          agr   = np.a ;
          verb  = vp.s ! t ! a ! b ! o ! agr ;
          compl = vp.s2 ! agr
        in
        case o of {
          ODir _ => vp.ext ++ verb.aux ++ verb.adv ++ vp.ad ! agr ++ verb.fin ++ subj ++ verb.inf ++ vp.p ++ compl ;
          OQuest => verb.aux ++ subj ++ verb.adv ++ vp.ad ! agr ++ verb.fin ++ verb.inf ++ vp.p ++ compl ++ vp.ext
          }
    } ;



  lin
    AdjAsCN ap = let cn = mkNoun "one" "one's" "ones" "ones'" ** {g = Neutr}
      in {
        s = \\n,c => preOrPost ap.isPre (ap.s ! agrgP3 n cn.g) (cn.s ! n ! c) ;
        g = cn.g
        } ;
    AdjAsNP ap = {
      s = \\c => ap.s ! agrgP3 Sg nonhuman ; ---- genitive case?
      a = agrgP3 Sg nonhuman
      } ;

  lincat
    RNP     = {s : Agr => Str} ;
    RNPList = {s1,s2 : Agr => Str} ;

  lin 
    ReflRNP vps rnp = insertObjPre (\\a => vps.c2 ++ rnp.s ! a) vps ;
    ReflPron = {s = reflPron} ;
    ReflPoss num cn = {s = \\a => possPron ! a ++ num.s ! Nom ++ cn.s ! num.n ! Nom} ;
    PredetRNP predet rnp = {s = \\a => predet.s ++ rnp.s ! a} ;

    ConjRNP conj rpns = conjunctDistrTable Agr conj rpns ;

    Base_rr_RNP x y = twoTable Agr x y ;
    Base_nr_RNP x y = twoTable Agr {s = \\a => x.s ! NPAcc} y ;
    Base_rn_RNP x y = twoTable Agr x {s = \\a => y.s ! NPAcc} ;
    Cons_rr_RNP x xs = consrTable Agr comma x xs ;
    Cons_nr_RNP x xs = consrTable Agr comma {s = \\a => x.s ! NPAcc} xs ;

    
---- TODO: RNPList construction

    ComplGenVV v a p vp = insertObj (\\agr => a.s ++ p.s ++ 
                                         infVP v.typ vp a.a p.p agr)
                               (predVV v) ;

    CompS s = {s = \\_ => "that" ++ s.s} ;
    CompQS qs = {s = \\_ => qs.s ! QIndir} ;
    CompVP ant p vp = {s = \\a => ant.s ++ p.s ++ 
                                infVP VVInf vp ant.a p.p a} ;

-- quite specific for English anyway

    UncontractedNeg = {s = [] ; p = CNeg False} ; 
    UttVPShort vp = {s = infVP VVAux vp Simul CPos (agrP3 Sg)} ;
}