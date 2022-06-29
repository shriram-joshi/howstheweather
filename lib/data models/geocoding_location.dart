/// name : "London"
/// local_names : {"mi":"Rānana","zu":"ILondon","tt":"Лондон","gu":"લંડન","ta":"இலண்டன்","ar":"لندن","lt":"Londonas","hi":"लंदन","el":"Λονδίνο","mt":"Londra","pl":"Londyn","be":"Лондан","ht":"Lonn","en":"London","li":"Londe","gd":"Lunnainn","os":"Лондон","mn":"Лондон","fa":"لندن","bn":"লন্ডন","gn":"Londye","yi":"לאנדאן","hy":"Լոնդոն","te":"లండన్","kv":"Лондон","fy":"Londen","mk":"Лондон","ku":"London","an":"Londres","wo":"Londar","pt":"Londres","lv":"Londona","uk":"Лондон","tr":"Londra","cu":"Лондонъ","ab":"Лондан","ro":"Londra","vi":"Luân Đôn","kk":"Лондон","cv":"Лондон","tl":"Londres","hu":"London","lo":"ລອນດອນ","kw":"Loundres","gl":"Londres","ja":"ロンドン","eo":"Londono","es":"Londres","ne":"लण्डन","cs":"Londýn","ln":"Londoni","bo":"ལོན་ཊོན།","oc":"Londres","gv":"Lunnin","he":"לונדון","ga":"Londain","feature_name":"London","bg":"Лондон","yo":"Lọndọnu","ps":"لندن","rm":"Londra","sq":"Londra","et":"London","zh":"伦敦","or":"ଲଣ୍ଡନ","sv":"London","eu":"Londres","ml":"ലണ്ടൻ","ko":"런던","nl":"Londen","sk":"Londýn","sa":"लन्डन्","no":"London","sl":"London","ru":"Лондон","si":"ලන්ඩන්","ur":"لندن","cy":"Llundain","am":"ለንደን","ka":"ლონდონი","ca":"Londres","fr":"Londres","ascii":"London","fi":"Lontoo","th":"ลอนดอน","sr":"Лондон","af":"Londen","de":"London","co":"Londra","it":"Londra","br":"Londrez","tg":"Лондон","ky":"Лондон","my":"လန်ဒန်မြို့","mr":"लंडन","sc":"Londra","is":"Lundúnir","kn":"ಲಂಡನ್","ba":"Лондон"}
/// lat : 51.5073219
/// lon : -0.1276474
/// country : "GB"
/// state : "England"

// class GeocodingLocation {
//   GeocodingLocation({
//       String? name,
//       LocalNames? localNames,
//       double? lat,
//       double? lon,
//       String? country,
//       String? state,}){
//     _name = name;
//     _localNames = localNames;
//     _lat = lat;
//     _lon = lon;
//     _country = country;
//     _state = state;
// }
//
//   GeocodingLocation.fromJson(dynamic json) {
//     _name = json['name'];
//     _localNames = json['local_names'] != null ? LocalNames.fromJson(json['local_names']) : null;
//     _lat = json['lat'];
//     _lon = json['lon'];
//     _country = json['country'];
//     _state = json['state'];
//   }
//   String? _name;
//   LocalNames? _localNames;
//   double? _lat;
//   double? _lon;
//   String? _country;
//   String? _state;
// GeocodingLocation copyWith({  String? name,
//   LocalNames? localNames,
//   double? lat,
//   double? lon,
//   String? country,
//   String? state,
// }) => GeocodingLocation(  name: name ?? _name,
//   localNames: localNames ?? _localNames,
//   lat: lat ?? _lat,
//   lon: lon ?? _lon,
//   country: country ?? _country,
//   state: state ?? _state,
// );
//   String? get name => _name;
//   LocalNames? get localNames => _localNames;
//   double? get lat => _lat;
//   double? get lon => _lon;
//   String? get country => _country;
//   String? get state => _state;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = _name;
//     if (_localNames != null) {
//       map['local_names'] = _localNames?.toJson();
//     }
//     map['lat'] = _lat;
//     map['lon'] = _lon;
//     map['country'] = _country;
//     map['state'] = _state;
//     return map;
//   }
//
// }
//
// /// mi : "Rānana"
// /// zu : "ILondon"
// /// tt : "Лондон"
// /// gu : "લંડન"
// /// ta : "இலண்டன்"
// /// ar : "لندن"
// /// lt : "Londonas"
// /// hi : "लंदन"
// /// el : "Λονδίνο"
// /// mt : "Londra"
// /// pl : "Londyn"
// /// be : "Лондан"
// /// ht : "Lonn"
// /// en : "London"
// /// li : "Londe"
// /// gd : "Lunnainn"
// /// os : "Лондон"
// /// mn : "Лондон"
// /// fa : "لندن"
// /// bn : "লন্ডন"
// /// gn : "Londye"
// /// yi : "לאנדאן"
// /// hy : "Լոնդոն"
// /// te : "లండన్"
// /// kv : "Лондон"
// /// fy : "Londen"
// /// mk : "Лондон"
// /// ku : "London"
// /// an : "Londres"
// /// wo : "Londar"
// /// pt : "Londres"
// /// lv : "Londona"
// /// uk : "Лондон"
// /// tr : "Londra"
// /// cu : "Лондонъ"
// /// ab : "Лондан"
// /// ro : "Londra"
// /// vi : "Luân Đôn"
// /// kk : "Лондон"
// /// cv : "Лондон"
// /// tl : "Londres"
// /// hu : "London"
// /// lo : "ລອນດອນ"
// /// kw : "Loundres"
// /// gl : "Londres"
// /// ja : "ロンドン"
// /// eo : "Londono"
// /// es : "Londres"
// /// ne : "लण्डन"
// /// cs : "Londýn"
// /// ln : "Londoni"
// /// bo : "ལོན་ཊོན།"
// /// oc : "Londres"
// /// gv : "Lunnin"
// /// he : "לונדון"
// /// ga : "Londain"
// /// feature_name : "London"
// /// bg : "Лондон"
// /// yo : "Lọndọnu"
// /// ps : "لندن"
// /// rm : "Londra"
// /// sq : "Londra"
// /// et : "London"
// /// zh : "伦敦"
// /// or : "ଲଣ୍ଡନ"
// /// sv : "London"
// /// eu : "Londres"
// /// ml : "ലണ്ടൻ"
// /// ko : "런던"
// /// nl : "Londen"
// /// sk : "Londýn"
// /// sa : "लन्डन्"
// /// no : "London"
// /// sl : "London"
// /// ru : "Лондон"
// /// si : "ලන්ඩන්"
// /// ur : "لندن"
// /// cy : "Llundain"
// /// am : "ለንደን"
// /// ka : "ლონდონი"
// /// ca : "Londres"
// /// fr : "Londres"
// /// ascii : "London"
// /// fi : "Lontoo"
// /// th : "ลอนดอน"
// /// sr : "Лондон"
// /// af : "Londen"
// /// de : "London"
// /// co : "Londra"
// /// it : "Londra"
// /// br : "Londrez"
// /// tg : "Лондон"
// /// ky : "Лондон"
// /// my : "လန်ဒန်မြို့"
// /// mr : "लंडन"
// /// sc : "Londra"
// /// is : "Lundúnir"
// /// kn : "ಲಂಡನ್"
// /// ba : "Лондон"
//
// class LocalNames {
//   String? _he;
//   String? _gn;
//   String? _lv;
//   String? _ne;
//   String? _mk;
//   String? _cu;
//   String? _bn;
//   String? _ml;
//   String? _or;
//   String? _tl;
//   String? _el;
//   String? _ur;
//   String? _sq;
//   String? _kv;
//   String? _mn;
//   String? _ru;
//   String? _rm;
//   String? _fa;
//   String? _ht;
//   String? _my;
//   String? _gu;
//   String? _sl;
//   String? _gv;
//   String? _gd;
//   String? _ps;
//   String? _lo;
//   String? _no;
//   String? _be;
//   String? _kk;
//   String? _mr;
//   String? _te;
//   String? _es;
//   String? _nl;
//   String? _ba;
//   String? _ku;
//   String? _os;
//   String? _sr;
//   String? _mi;
//   String? _an;
//   String? _si;
//   String? _zu;
//   String? _am;
//   String? _uk;
//   String? _fy;
//   String? _cv;
//   String? _mt;
//   String? _ascii;
//   String? _et;
//   String? _oc;
//   String? _sc;
//   String? _co;
//   String? _eo;
//   String? _fr;
//   String? _sk;
//   String? _fi;
//   String? _ln;
//   String? _kw;
//   String? _bo;
//   String? _zh;
//   String? _ga;
//   String? _ta;
//   String? _bg;
//   String? _tg;
//   String? _th;
//   String? _eu;
//   String? _hy;
//   String? _de;
//   String? _ca;
//   String? _br;
//   String? _sa;
//   String? _ab;
//   String? _en;
//   String? _gl;
//   String? _tr;
//   String? _pl;
//   String? _hi;
//   String? _is;
//   String? _wo;
//   String? _pt;
//   String? _ro;
//   String? _tt;
//   String? _cy;
//   String? _af;
//   String? _kn;
//   String? _hu;
//   String? _ky;
//   String? _li;
//   String? _ka;
//   String? _lt;
//   String? _ja;
//   String? _it;
//   String? _ar;
//   String? _vi;
//   String? _yi;
//   String? _ko;
//   String? _sv;
//   String? _yo;
//   String? _featureName;
//   String? _cs;
//
//   LocalNames({String? he, String? gn, String? lv, String? ne, String? mk, String? cu, String? bn, String? ml, String? or, String? tl, String? el, String? ur, String? sq, String? kv, String? mn, String? ru, String? rm, String? fa, String? ht, String? my, String? gu, String? sl, String? gv, String? gd, String? ps, String? lo, String? no, String? be, String? kk, String? mr, String? te, String? es, String? nl, String? ba, String? ku, String? os, String? sr, String? mi, String? an, String? si, String? zu, String? am, String? uk, String? fy, String? cv, String? mt, String? ascii, String? et, String? oc, String? sc, String? co, String? eo, String? fr, String? sk, String? fi, String? ln, String? kw, String? bo, String? zh, String? ga, String? ta, String? bg, String? tg, String? th, String? eu, String? hy, String? de, String? ca, String? br, String? sa, String? ab, String? en, String? gl, String? tr, String? pl, String? hi, String? is_, String? wo, String? pt, String? ro, String? tt, String? cy, String? af, String? kn, String? hu, String? ky, String? li, String? ka, String? lt, String? ja, String? it, String? ar, String? vi, String? yi, String? ko, String? sv, String? yo, String? featureName, String? cs}) {
//     if (he != null) {
//       this._he = he;
//     }
//     if (gn != null) {
//       this._gn = gn;
//     }
//     if (lv != null) {
//       this._lv = lv;
//     }
//     if (ne != null) {
//       this._ne = ne;
//     }
//     if (mk != null) {
//       this._mk = mk;
//     }
//     if (cu != null) {
//       this._cu = cu;
//     }
//     if (bn != null) {
//       this._bn = bn;
//     }
//     if (ml != null) {
//       this._ml = ml;
//     }
//     if (or != null) {
//       this._or = or;
//     }
//     if (tl != null) {
//       this._tl = tl;
//     }
//     if (el != null) {
//       this._el = el;
//     }
//     if (ur != null) {
//       this._ur = ur;
//     }
//     if (sq != null) {
//       this._sq = sq;
//     }
//     if (kv != null) {
//       this._kv = kv;
//     }
//     if (mn != null) {
//       this._mn = mn;
//     }
//     if (ru != null) {
//       this._ru = ru;
//     }
//     if (rm != null) {
//       this._rm = rm;
//     }
//     if (fa != null) {
//       this._fa = fa;
//     }
//     if (ht != null) {
//       this._ht = ht;
//     }
//     if (my != null) {
//       this._my = my;
//     }
//     if (gu != null) {
//       this._gu = gu;
//     }
//     if (sl != null) {
//       this._sl = sl;
//     }
//     if (gv != null) {
//       this._gv = gv;
//     }
//     if (gd != null) {
//       this._gd = gd;
//     }
//     if (ps != null) {
//       this._ps = ps;
//     }
//     if (lo != null) {
//       this._lo = lo;
//     }
//     if (no != null) {
//       this._no = no;
//     }
//     if (be != null) {
//       this._be = be;
//     }
//     if (kk != null) {
//       this._kk = kk;
//     }
//     if (mr != null) {
//       this._mr = mr;
//     }
//     if (te != null) {
//       this._te = te;
//     }
//     if (es != null) {
//       this._es = es;
//     }
//     if (nl != null) {
//       this._nl = nl;
//     }
//     if (ba != null) {
//       this._ba = ba;
//     }
//     if (ku != null) {
//       this._ku = ku;
//     }
//     if (os != null) {
//       this._os = os;
//     }
//     if (sr != null) {
//       this._sr = sr;
//     }
//     if (mi != null) {
//       this._mi = mi;
//     }
//     if (an != null) {
//       this._an = an;
//     }
//     if (si != null) {
//       this._si = si;
//     }
//     if (zu != null) {
//       this._zu = zu;
//     }
//     if (am != null) {
//       this._am = am;
//     }
//     if (uk != null) {
//       this._uk = uk;
//     }
//     if (fy != null) {
//       this._fy = fy;
//     }
//     if (cv != null) {
//       this._cv = cv;
//     }
//     if (mt != null) {
//       this._mt = mt;
//     }
//     if (ascii != null) {
//       this._ascii = ascii;
//     }
//     if (et != null) {
//       this._et = et;
//     }
//     if (oc != null) {
//       this._oc = oc;
//     }
//     if (sc != null) {
//       this._sc = sc;
//     }
//     if (co != null) {
//       this._co = co;
//     }
//     if (eo != null) {
//       this._eo = eo;
//     }
//     if (fr != null) {
//       this._fr = fr;
//     }
//     if (sk != null) {
//       this._sk = sk;
//     }
//     if (fi != null) {
//       this._fi = fi;
//     }
//     if (ln != null) {
//       this._ln = ln;
//     }
//     if (kw != null) {
//       this._kw = kw;
//     }
//     if (bo != null) {
//       this._bo = bo;
//     }
//     if (zh != null) {
//       this._zh = zh;
//     }
//     if (ga != null) {
//       this._ga = ga;
//     }
//     if (ta != null) {
//       this._ta = ta;
//     }
//     if (bg != null) {
//       this._bg = bg;
//     }
//     if (tg != null) {
//       this._tg = tg;
//     }
//     if (th != null) {
//       this._th = th;
//     }
//     if (eu != null) {
//       this._eu = eu;
//     }
//     if (hy != null) {
//       this._hy = hy;
//     }
//     if (de != null) {
//       this._de = de;
//     }
//     if (ca != null) {
//       this._ca = ca;
//     }
//     if (br != null) {
//       this._br = br;
//     }
//     if (sa != null) {
//       this._sa = sa;
//     }
//     if (ab != null) {
//       this._ab = ab;
//     }
//     if (en != null) {
//       this._en = en;
//     }
//     if (gl != null) {
//       this._gl = gl;
//     }
//     if (tr != null) {
//       this._tr = tr;
//     }
//     if (pl != null) {
//       this._pl = pl;
//     }
//     if (hi != null) {
//       this._hi = hi;
//     }
//     if (is_ != null) {
//       this._is = is_;
//     }
//     if (wo != null) {
//     this._wo = wo;
//     }
//     if (pt != null) {
//     this._pt = pt;
//     }
//     if (ro != null) {
//     this._ro = ro;
//     }
//     if (tt != null) {
//     this._tt = tt;
//     }
//     if (cy != null) {
//     this._cy = cy;
//     }
//     if (af != null) {
//     this._af = af;
//     }
//     if (kn != null) {
//     this._kn = kn;
//     }
//     if (hu != null) {
//     this._hu = hu;
//     }
//     if (ky != null) {
//     this._ky = ky;
//     }
//     if (li != null) {
//     this._li = li;
//     }
//     if (ka != null) {
//     this._ka = ka;
//     }
//     if (lt != null) {
//     this._lt = lt;
//     }
//     if (ja != null) {
//     this._ja = ja;
//     }
//     if (it != null) {
//     this._it = it;
//     }
//     if (ar != null) {
//     this._ar = ar;
//     }
//     if (vi != null) {
//     this._vi = vi;
//     }
//     if (yi != null) {
//     this._yi = yi;
//     }
//     if (ko != null) {
//     this._ko = ko;
//     }
//     if (sv != null) {
//     this._sv = sv;
//     }
//     if (yo != null) {
//     this._yo = yo;
//     }
//     if (featureName != null) {
//     this._featureName = featureName;
//     }
//     if (cs != null) {
//     this._cs = cs;
//     }
//   }
//
//   String? get he => _he;
//   set he(String? he) => _he = he;
//   String? get gn => _gn;
//   set gn(String? gn) => _gn = gn;
//   String? get lv => _lv;
//   set lv(String? lv) => _lv = lv;
//   String? get ne => _ne;
//   set ne(String? ne) => _ne = ne;
//   String? get mk => _mk;
//   set mk(String? mk) => _mk = mk;
//   String? get cu => _cu;
//   set cu(String? cu) => _cu = cu;
//   String? get bn => _bn;
//   set bn(String? bn) => _bn = bn;
//   String? get ml => _ml;
//   set ml(String? ml) => _ml = ml;
//   String? get or => _or;
//   set or(String? or) => _or = or;
//   String? get tl => _tl;
//   set tl(String? tl) => _tl = tl;
//   String? get el => _el;
//   set el(String? el) => _el = el;
//   String? get ur => _ur;
//   set ur(String? ur) => _ur = ur;
//   String? get sq => _sq;
//   set sq(String? sq) => _sq = sq;
//   String? get kv => _kv;
//   set kv(String? kv) => _kv = kv;
//   String? get mn => _mn;
//   set mn(String? mn) => _mn = mn;
//   String? get ru => _ru;
//   set ru(String? ru) => _ru = ru;
//   String? get rm => _rm;
//   set rm(String? rm) => _rm = rm;
//   String? get fa => _fa;
//   set fa(String? fa) => _fa = fa;
//   String? get ht => _ht;
//   set ht(String? ht) => _ht = ht;
//   String? get my => _my;
//   set my(String? my) => _my = my;
//   String? get gu => _gu;
//   set gu(String? gu) => _gu = gu;
//   String? get sl => _sl;
//   set sl(String? sl) => _sl = sl;
//   String? get gv => _gv;
//   set gv(String? gv) => _gv = gv;
//   String? get gd => _gd;
//   set gd(String? gd) => _gd = gd;
//   String? get ps => _ps;
//   set ps(String? ps) => _ps = ps;
//   String? get lo => _lo;
//   set lo(String? lo) => _lo = lo;
//   String? get no => _no;
//   set no(String? no) => _no = no;
//   String? get be => _be;
//   set be(String? be) => _be = be;
//   String? get kk => _kk;
//   set kk(String? kk) => _kk = kk;
//   String? get mr => _mr;
//   set mr(String? mr) => _mr = mr;
//   String? get te => _te;
//   set te(String? te) => _te = te;
//   String? get es => _es;
//   set es(String? es) => _es = es;
//   String? get nl => _nl;
//   set nl(String? nl) => _nl = nl;
//   String? get ba => _ba;
//   set ba(String? ba) => _ba = ba;
//   String? get ku => _ku;
//   set ku(String? ku) => _ku = ku;
//   String? get os => _os;
//   set os(String? os) => _os = os;
//   String? get sr => _sr;
//   set sr(String? sr) => _sr = sr;
//   String? get mi => _mi;
//   set mi(String? mi) => _mi = mi;
//   String? get an => _an;
//   set an(String? an) => _an = an;
//   String? get si => _si;
//   set si(String? si) => _si = si;
//   String? get zu => _zu;
//   set zu(String? zu) => _zu = zu;
//   String? get am => _am;
//   set am(String? am) => _am = am;
//   String? get uk => _uk;
//   set uk(String? uk) => _uk = uk;
//   String? get fy => _fy;
//   set fy(String? fy) => _fy = fy;
//   String? get cv => _cv;
//   set cv(String? cv) => _cv = cv;
//   String? get mt => _mt;
//   set mt(String? mt) => _mt = mt;
//   String? get ascii => _ascii;
//   set ascii(String? ascii) => _ascii = ascii;
//   String? get et => _et;
//   set et(String? et) => _et = et;
//   String? get oc => _oc;
//   set oc(String? oc) => _oc = oc;
//   String? get sc => _sc;
//   set sc(String? sc) => _sc = sc;
//   String? get co => _co;
//   set co(String? co) => _co = co;
//   String? get eo => _eo;
//   set eo(String? eo) => _eo = eo;
//   String? get fr => _fr;
//   set fr(String? fr) => _fr = fr;
//   String? get sk => _sk;
//   set sk(String? sk) => _sk = sk;
//   String? get fi => _fi;
//   set fi(String? fi) => _fi = fi;
//   String? get ln => _ln;
//   set ln(String? ln) => _ln = ln;
//   String? get kw => _kw;
//   set kw(String? kw) => _kw = kw;
//   String? get bo => _bo;
//   set bo(String? bo) => _bo = bo;
//   String? get zh => _zh;
//   set zh(String? zh) => _zh = zh;
//   String? get ga => _ga;
//   set ga(String? ga) => _ga = ga;
//   String? get ta => _ta;
//   set ta(String? ta) => _ta = ta;
//   String? get bg => _bg;
//   set bg(String? bg) => _bg = bg;
//   String? get tg => _tg;
//   set tg(String? tg) => _tg = tg;
//   String? get th => _th;
//   set th(String? th) => _th = th;
//   String? get eu => _eu;
//   set eu(String? eu) => _eu = eu;
//   String? get hy => _hy;
//   set hy(String? hy) => _hy = hy;
//   String? get de => _de;
//   set de(String? de) => _de = de;
//   String? get ca => _ca;
//   set ca(String? ca) => _ca = ca;
//   String? get br => _br;
//   set br(String? br) => _br = br;
//   String? get sa => _sa;
//   set sa(String? sa) => _sa = sa;
//   String? get ab => _ab;
//   set ab(String? ab) => _ab = ab;
//   String? get en => _en;
//   set en(String? en) => _en = en;
//   String? get gl => _gl;
//   set gl(String? gl) => _gl = gl;
//   String? get tr => _tr;
//   set tr(String? tr) => _tr = tr;
//   String? get pl => _pl;
//   set pl(String? pl) => _pl = pl;
//   String? get hi => _hi;
//   set hi(String? hi) => _hi = hi;
//   String? get is_ => _is;
//   set is_(String? is_) => _is = is_;
//   String? get wo => _wo;
//   set wo(String? wo) => _wo = wo;
//   String? get pt => _pt;
//   set pt(String? pt) => _pt = pt;
//   String? get ro => _ro;
//   set ro(String? ro) => _ro = ro;
//   String? get tt => _tt;
//   set tt(String? tt) => _tt = tt;
//   String? get cy => _cy;
//   set cy(String? cy) => _cy = cy;
//   String? get af => _af;
//   set af(String? af) => _af = af;
//   String? get kn => _kn;
//   set kn(String? kn) => _kn = kn;
//   String? get hu => _hu;
//   set hu(String? hu) => _hu = hu;
//   String? get ky => _ky;
//   set ky(String? ky) => _ky = ky;
//   String? get li => _li;
//   set li(String? li) => _li = li;
//   String? get ka => _ka;
//   set ka(String? ka) => _ka = ka;
//   String? get lt => _lt;
//   set lt(String? lt) => _lt = lt;
//   String? get ja => _ja;
//   set ja(String? ja) => _ja = ja;
//   String? get it => _it;
//   set it(String? it) => _it = it;
//   String? get ar => _ar;
//   set ar(String? ar) => _ar = ar;
//   String? get vi => _vi;
//   set vi(String? vi) => _vi = vi;
//   String? get yi => _yi;
//   set yi(String? yi) => _yi = yi;
//   String? get ko => _ko;
//   set ko(String? ko) => _ko = ko;
//   String? get sv => _sv;
//   set sv(String? sv) => _sv = sv;
//   String? get yo => _yo;
//   set yo(String? yo) => _yo = yo;
//   String? get featureName => _featureName;
//   set featureName(String? featureName) => _featureName = featureName;
//   String? get cs => _cs;
//   set cs(String? cs) => _cs = cs;
//
//   LocalNames.fromJson(Map<String, dynamic> json) {
//     _he = json['he'];
//     _gn = json['gn'];
//     _lv = json['lv'];
//     _ne = json['ne'];
//     _mk = json['mk'];
//     _cu = json['cu'];
//     _bn = json['bn'];
//     _ml = json['ml'];
//     _or = json['or'];
//     _tl = json['tl'];
//     _el = json['el'];
//     _ur = json['ur'];
//     _sq = json['sq'];
//     _kv = json['kv'];
//     _mn = json['mn'];
//     _ru = json['ru'];
//     _rm = json['rm'];
//     _fa = json['fa'];
//     _ht = json['ht'];
//     _my = json['my'];
//     _gu = json['gu'];
//     _sl = json['sl'];
//     _gv = json['gv'];
//     _gd = json['gd'];
//     _ps = json['ps'];
//     _lo = json['lo'];
//     _no = json['no'];
//     _be = json['be'];
//     _kk = json['kk'];
//     _mr = json['mr'];
//     _te = json['te'];
//     _es = json['es'];
//     _nl = json['nl'];
//     _ba = json['ba'];
//     _ku = json['ku'];
//     _os = json['os'];
//     _sr = json['sr'];
//     _mi = json['mi'];
//     _an = json['an'];
//     _si = json['si'];
//     _zu = json['zu'];
//     _am = json['am'];
//     _uk = json['uk'];
//     _fy = json['fy'];
//     _cv = json['cv'];
//     _mt = json['mt'];
//     _ascii = json['ascii'];
//     _et = json['et'];
//     _oc = json['oc'];
//     _sc = json['sc'];
//     _co = json['co'];
//     _eo = json['eo'];
//     _fr = json['fr'];
//     _sk = json['sk'];
//     _fi = json['fi'];
//     _ln = json['ln'];
//     _kw = json['kw'];
//     _bo = json['bo'];
//     _zh = json['zh'];
//     _ga = json['ga'];
//     _ta = json['ta'];
//     _bg = json['bg'];
//     _tg = json['tg'];
//     _th = json['th'];
//     _eu = json['eu'];
//     _hy = json['hy'];
//     _de = json['de'];
//     _ca = json['ca'];
//     _br = json['br'];
//     _sa = json['sa'];
//     _ab = json['ab'];
//     _en = json['en'];
//     _gl = json['gl'];
//     _tr = json['tr'];
//     _pl = json['pl'];
//     _hi = json['hi'];
//     _is = json['is'];
//     _wo = json['wo'];
//     _pt = json['pt'];
//     _ro = json['ro'];
//     _tt = json['tt'];
//     _cy = json['cy'];
//     _af = json['af'];
//     _kn = json['kn'];
//     _hu = json['hu'];
//     _ky = json['ky'];
//     _li = json['li'];
//     _ka = json['ka'];
//     _lt = json['lt'];
//     _ja = json['ja'];
//     _it = json['it'];
//     _ar = json['ar'];
//     _vi = json['vi'];
//     _yi = json['yi'];
//     _ko = json['ko'];
//     _sv = json['sv'];
//     _yo = json['yo'];
//     _featureName = json['feature_name'];
//     _cs = json['cs'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['he'] = this._he;
//     data['gn'] = this._gn;
//     data['lv'] = this._lv;
//     data['ne'] = this._ne;
//     data['mk'] = this._mk;
//     data['cu'] = this._cu;
//     data['bn'] = this._bn;
//     data['ml'] = this._ml;
//     data['or'] = this._or;
//     data['tl'] = this._tl;
//     data['el'] = this._el;
//     data['ur'] = this._ur;
//     data['sq'] = this._sq;
//     data['kv'] = this._kv;
//     data['mn'] = this._mn;
//     data['ru'] = this._ru;
//     data['rm'] = this._rm;
//     data['fa'] = this._fa;
//     data['ht'] = this._ht;
//     data['my'] = this._my;
//     data['gu'] = this._gu;
//     data['sl'] = this._sl;
//     data['gv'] = this._gv;
//     data['gd'] = this._gd;
//     data['ps'] = this._ps;
//     data['lo'] = this._lo;
//     data['no'] = this._no;
//     data['be'] = this._be;
//     data['kk'] = this._kk;
//     data['mr'] = this._mr;
//     data['te'] = this._te;
//     data['es'] = this._es;
//     data['nl'] = this._nl;
//     data['ba'] = this._ba;
//     data['ku'] = this._ku;
//     data['os'] = this._os;
//     data['sr'] = this._sr;
//     data['mi'] = this._mi;
//     data['an'] = this._an;
//     data['si'] = this._si;
//     data['zu'] = this._zu;
//     data['am'] = this._am;
//     data['uk'] = this._uk;
//     data['fy'] = this._fy;
//     data['cv'] = this._cv;
//     data['mt'] = this._mt;
//     data['ascii'] = this._ascii;
//     data['et'] = this._et;
//     data['oc'] = this._oc;
//     data['sc'] = this._sc;
//     data['co'] = this._co;
//     data['eo'] = this._eo;
//     data['fr'] = this._fr;
//     data['sk'] = this._sk;
//     data['fi'] = this._fi;
//     data['ln'] = this._ln;
//     data['kw'] = this._kw;
//     data['bo'] = this._bo;
//     data['zh'] = this._zh;
//     data['ga'] = this._ga;
//     data['ta'] = this._ta;
//     data['bg'] = this._bg;
//     data['tg'] = this._tg;
//     data['th'] = this._th;
//     data['eu'] = this._eu;
//     data['hy'] = this._hy;
//     data['de'] = this._de;
//     data['ca'] = this._ca;
//     data['br'] = this._br;
//     data['sa'] = this._sa;
//     data['ab'] = this._ab;
//     data['en'] = this._en;
//     data['gl'] = this._gl;
//     data['tr'] = this._tr;
//     data['pl'] = this._pl;
//     data['hi'] = this._hi;
//     data['is'] = this._is;
//     data['wo'] = this._wo;
//     data['pt'] = this._pt;
//     data['ro'] = this._ro;
//     data['tt'] = this._tt;
//     data['cy'] = this._cy;
//     data['af'] = this._af;
//     data['kn'] = this._kn;
//     data['hu'] = this._hu;
//     data['ky'] = this._ky;
//     data['li'] = this._li;
//     data['ka'] = this._ka;
//     data['lt'] = this._lt;
//     data['ja'] = this._ja;
//     data['it'] = this._it;
//     data['ar'] = this._ar;
//     data['vi'] = this._vi;
//     data['yi'] = this._yi;
//     data['ko'] = this._ko;
//     data['sv'] = this._sv;
//     data['yo'] = this._yo;
//     data['feature_name'] = this._featureName;
//     data['cs'] = this._cs;
//     return data;
//   }
// }
//
//
// class LocalNames {
//   LocalNames({
//       String? mi,
//       String? zu,
//       String? tt,
//       String? gu,
//       String? ta,
//       String? ar,
//       String? lt,
//       String? hi,
//       String? el,
//       String? mt,
//       String? pl,
//       String? be,
//       String? ht,
//       String? en,
//       String? li,
//       String? gd,
//       String? os,
//       String? mn,
//       String? fa,
//       String? bn,
//       String? gn,
//       String? yi,
//       String? hy,
//       String? te,
//       String? kv,
//       String? fy,
//       String? mk,
//       String? ku,
//       String? an,
//       String? wo,
//       String? pt,
//       String? lv,
//       String? uk,
//       String? tr,
//       String? cu,
//       String? ab,
//       String? ro,
//       String? vi,
//       String? kk,
//       String? cv,
//       String? tl,
//       String? hu,
//       String? lo,
//       String? kw,
//       String? gl,
//       String? ja,
//       String? eo,
//       String? es,
//       String? ne,
//       String? cs,
//       String? ln,
//       String? bo,
//       String? oc,
//       String? gv,
//       String? he,
//       String? ga,
//       String? featureName,
//       String? bg,
//       String? yo,
//       String? ps,
//       String? rm,
//       String? sq,
//       String? et,
//       String? zh,
//       String? or,
//       String? sv,
//       String? eu,
//       String? ml,
//       String? ko,
//       String? nl,
//       String? sk,
//       String? sa,
//       String? no,
//       String? sl,
//       String? ru,
//       String? si,
//       String? ur,
//       String? cy,
//       String? am,
//       String? ka,
//       String? ca,
//       String? fr,
//       String? ascii,
//       String? fi,
//       String? th,
//       String? sr,
//       String? af,
//       String? de,
//       String? co,
//       String? it,
//       String? br,
//       String? tg,
//       String? ky,
//       String? my,
//       String? mr,
//       String? sc,
//       String? is_,
//       String? kn,
//       String? ba,}){
//     _mi = mi;
//     _zu = zu;
//     _tt = tt;
//     _gu = gu;
//     _ta = ta;
//     _ar = ar;
//     _lt = lt;
//     _hi = hi;
//     _el = el;
//     _mt = mt;
//     _pl = pl;
//     _be = be;
//     _ht = ht;
//     _en = en;
//     _li = li;
//     _gd = gd;
//     _os = os;
//     _mn = mn;
//     _fa = fa;
//     _bn = bn;
//     _gn = gn;
//     _yi = yi;
//     _hy = hy;
//     _te = te;
//     _kv = kv;
//     _fy = fy;
//     _mk = mk;
//     _ku = ku;
//     _an = an;
//     _wo = wo;
//     _pt = pt;
//     _lv = lv;
//     _uk = uk;
//     _tr = tr;
//     _cu = cu;
//     _ab = ab;
//     _ro = ro;
//     _vi = vi;
//     _kk = kk;
//     _cv = cv;
//     _tl = tl;
//     _hu = hu;
//     _lo = lo;
//     _kw = kw;
//     _gl = gl;
//     _ja = ja;
//     _eo = eo;
//     _es = es;
//     _ne = ne;
//     _cs = cs;
//     _ln = ln;
//     _bo = bo;
//     _oc = oc;
//     _gv = gv;
//     _he = he;
//     _ga = ga;
//     _featureName = featureName;
//     _bg = bg;
//     _yo = yo;
//     _ps = ps;
//     _rm = rm;
//     _sq = sq;
//     _et = et;
//     _zh = zh;
//     _or = or;
//     _sv = sv;
//     _eu = eu;
//     _ml = ml;
//     _ko = ko;
//     _nl = nl;
//     _sk = sk;
//     _sa = sa;
//     _no = no;
//     _sl = sl;
//     _ru = ru;
//     _si = si;
//     _ur = ur;
//     _cy = cy;
//     _am = am;
//     _ka = ka;
//     _ca = ca;
//     _fr = fr;
//     _ascii = ascii;
//     _fi = fi;
//     _th = th;
//     _sr = sr;
//     _af = af;
//     _de = de;
//     _co = co;
//     _it = it;
//     _br = br;
//     _tg = tg;
//     _ky = ky;
//     _my = my;
//     _mr = mr;
//     _sc = sc;
//     _is = is_;
//     _kn = kn;
//     _ba = ba;
// }
//
//   // safetyNullify(){
//   //   _mi = null;
//   //   _zu = null;
//   //   _tt = null;
//   //   _gu = null;
//   //   _ta = null;
//   //   _ar = null;
//   //   _lt = null;
//   //   _hi = null;
//   //   _el = null;
//   //   _mt = null;
//   //   _pl = null;
//   //   _be = null;
//   //   _ht = null;
//   //   _li = null;
//   //   _gd = null;
//   //   _os = null;
//   //   _mn = null;
//   //   _fa = null;
//   //   _bn = null;
//   //   _gn = null;
//   //   _yi = null;
//   //   _hy = null;
//   //   _te = null;
//   //   _kv = null;
//   //   _fy = null;
//   //   _mk = null;
//   //   _ku = null;
//   //   _an = null;
//   //   _wo = null;
//   //   _pt = null;
//   //   _lv = null;
//   //   _uk = null;
//   //   _tr = null;
//   //   _cu = null;
//   //   _ab = null;
//   //   _ro = null;
//   //   _vi = null;
//   //   _kk = null;
//   //   _cv = null;
//   //   _tl = null;
//   //   _hu = null;
//   //   _lo = null;
//   //   _kw = null;
//   //   _gl = null;
//   //   _ja = null;
//   //   _eo = null;
//   //   _es = null;
//   //   _ne = null;
//   //   _cs = null;
//   //   _ln = null;
//   //   _bo = null;
//   //   _oc = null;
//   //   _gv = null;
//   //   _he = null;
//   //   _ga = null;
//   //   _featureName = null;
//   //   _bg = null;
//   //   _yo = null;
//   //   _ps = null;
//   //   _rm = null;
//   //   _sq = null;
//   //   _et = null;
//   //   _zh = null;
//   //   _or = null;
//   //   _sv = null;
//   //   _eu = null;
//   //   _ml = null;
//   //   _ko = null;
//   //   _nl = null;
//   //   _sk = null;
//   //   _sa = null;
//   //   _no = null;
//   //   _sl = null;
//   //   _ru = null;
//   //   _si = null;
//   //   _ur = null;
//   //   _cy = null;
//   //   _am = null;
//   //   _ka = null;
//   //   _ca = null;
//   //   _fr = null;
//   //   _fi = null;
//   //   _th = null;
//   //   _sr = null;
//   //   _af = null;
//   //   _de = null;
//   //   _co = null;
//   //   _it = null;
//   //   _br = null;
//   //   _tg = null;
//   //   _ky = null;
//   //   _my = null;
//   //   _mr = null;
//   //   _sc = null;
//   //   _is = null;
//   //   _kn = null;
//   //   _ba = null;
//   // }
//
//   LocalNames.fromJson(dynamic json) {
//     _mi = json['mi'];
//     _zu = json['zu'];
//     _tt = json['tt'];
//     _gu = json['gu'];
//     _ta = json['ta'];
//     _ar = json['ar'];
//     _lt = json['lt'];
//     _hi = json['hi'];
//     _el = json['el'];
//     _mt = json['mt'];
//     _pl = json['pl'];
//     _be = json['be'];
//     _ht = json['ht'];
//     _en = json['en'];
//     _li = json['li'];
//     _gd = json['gd'];
//     _os = json['os'];
//     _mn = json['mn'];
//     _fa = json['fa'];
//     _bn = json['bn'];
//     _gn = json['gn'];
//     _yi = json['yi'];
//     _hy = json['hy'];
//     _te = json['te'];
//     _kv = json['kv'];
//     _fy = json['fy'];
//     _mk = json['mk'];
//     _ku = json['ku'];
//     _an = json['an'];
//     _wo = json['wo'];
//     _pt = json['pt'];
//     _lv = json['lv'];
//     _uk = json['uk'];
//     _tr = json['tr'];
//     _cu = json['cu'];
//     _ab = json['ab'];
//     _ro = json['ro'];
//     _vi = json['vi'];
//     _kk = json['kk'];
//     _cv = json['cv'];
//     _tl = json['tl'];
//     _hu = json['hu'];
//     _lo = json['lo'];
//     _kw = json['kw'];
//     _gl = json['gl'];
//     _ja = json['ja'];
//     _eo = json['eo'];
//     _es = json['es'];
//     _ne = json['ne'];
//     _cs = json['cs'];
//     _ln = json['ln'];
//     _bo = json['bo'];
//     _oc = json['oc'];
//     _gv = json['gv'];
//     _he = json['he'];
//     _ga = json['ga'];
//     _featureName = json['feature_name'];
//     _bg = json['bg'];
//     _yo = json['yo'];
//     _ps = json['ps'];
//     _rm = json['rm'];
//     _sq = json['sq'];
//     _et = json['et'];
//     _zh = json['zh'];
//     _or = json['or'];
//     _sv = json['sv'];
//     _eu = json['eu'];
//     _ml = json['ml'];
//     _ko = json['ko'];
//     _nl = json['nl'];
//     _sk = json['sk'];
//     _sa = json['sa'];
//     _no = json['no'];
//     _sl = json['sl'];
//     _ru = json['ru'];
//     _si = json['si'];
//     _ur = json['ur'];
//     _cy = json['cy'];
//     _am = json['am'];
//     _ka = json['ka'];
//     _ca = json['ca'];
//     _fr = json['fr'];
//     _ascii = json['ascii'];
//     _fi = json['fi'];
//     _th = json['th'];
//     _sr = json['sr'];
//     _af = json['af'];
//     _de = json['de'];
//     _co = json['co'];
//     _it = json['it'];
//     _br = json['br'];
//     _tg = json['tg'];
//     _ky = json['ky'];
//     _my = json['my'];
//     _mr = json['mr'];
//     _sc = json['sc'];
//     _is = json['is'];
//     _kn = json['kn'];
//     _ba = json['ba'];
//   }
//   String? _mi;
//   String? _zu;
//   String? _tt;
//   String? _gu;
//   String? _ta;
//   String? _ar;
//   String? _lt;
//   String? _hi;
//   String? _el;
//   String? _mt;
//   String? _pl;
//   String? _be;
//   String? _ht;
//   String? _en;
//   String? _li;
//   String? _gd;
//   String? _os;
//   String? _mn;
//   String? _fa;
//   String? _bn;
//   String? _gn;
//   String? _yi;
//   String? _hy;
//   String? _te;
//   String? _kv;
//   String? _fy;
//   String? _mk;
//   String? _ku;
//   String? _an;
//   String? _wo;
//   String? _pt;
//   String? _lv;
//   String? _uk;
//   String? _tr;
//   String? _cu;
//   String? _ab;
//   String? _ro;
//   String? _vi;
//   String? _kk;
//   String? _cv;
//   String? _tl;
//   String? _hu;
//   String? _lo;
//   String? _kw;
//   String? _gl;
//   String? _ja;
//   String? _eo;
//   String? _es;
//   String? _ne;
//   String? _cs;
//   String? _ln;
//   String? _bo;
//   String? _oc;
//   String? _gv;
//   String? _he;
//   String? _ga;
//   String? _featureName;
//   String? _bg;
//   String? _yo;
//   String? _ps;
//   String? _rm;
//   String? _sq;
//   String? _et;
//   String? _zh;
//   String? _or;
//   String? _sv;
//   String? _eu;
//   String? _ml;
//   String? _ko;
//   String? _nl;
//   String? _sk;
//   String? _sa;
//   String? _no;
//   String? _sl;
//   String? _ru;
//   String? _si;
//   String? _ur;
//   String? _cy;
//   String? _am;
//   String? _ka;
//   String? _ca;
//   String? _fr;
//   String? _ascii;
//   String? _fi;
//   String? _th;
//   String? _sr;
//   String? _af;
//   String? _de;
//   String? _co;
//   String? _it;
//   String? _br;
//   String? _tg;
//   String? _ky;
//   String? _my;
//   String? _mr;
//   String? _sc;
//   String? _is;
//   String? _kn;
//   String? _ba;
// LocalNames copyWith({  String? mi,
//   String? zu,
//   String? tt,
//   String? gu,
//   String? ta,
//   String? ar,
//   String? lt,
//   String? hi,
//   String? el,
//   String? mt,
//   String? pl,
//   String? be,
//   String? ht,
//   String? en,
//   String? li,
//   String? gd,
//   String? os,
//   String? mn,
//   String? fa,
//   String? bn,
//   String? gn,
//   String? yi,
//   String? hy,
//   String? te,
//   String? kv,
//   String? fy,
//   String? mk,
//   String? ku,
//   String? an,
//   String? wo,
//   String? pt,
//   String? lv,
//   String? uk,
//   String? tr,
//   String? cu,
//   String? ab,
//   String? ro,
//   String? vi,
//   String? kk,
//   String? cv,
//   String? tl,
//   String? hu,
//   String? lo,
//   String? kw,
//   String? gl,
//   String? ja,
//   String? eo,
//   String? es,
//   String? ne,
//   String? cs,
//   String? ln,
//   String? bo,
//   String? oc,
//   String? gv,
//   String? he,
//   String? ga,
//   String? featureName,
//   String? bg,
//   String? yo,
//   String? ps,
//   String? rm,
//   String? sq,
//   String? et,
//   String? zh,
//   String? or,
//   String? sv,
//   String? eu,
//   String? ml,
//   String? ko,
//   String? nl,
//   String? sk,
//   String? sa,
//   String? no,
//   String? sl,
//   String? ru,
//   String? si,
//   String? ur,
//   String? cy,
//   String? am,
//   String? ka,
//   String? ca,
//   String? fr,
//   String? ascii,
//   String? fi,
//   String? th,
//   String? sr,
//   String? af,
//   String? de,
//   String? co,
//   String? it,
//   String? br,
//   String? tg,
//   String? ky,
//   String? my,
//   String? mr,
//   String? sc,
//   String? is_,
//   String? kn,
//   String? ba,
// }) => LocalNames(  mi: mi ?? _mi,
//   zu: zu ?? _zu,
//   tt: tt ?? _tt,
//   gu: gu ?? _gu,
//   ta: ta ?? _ta,
//   ar: ar ?? _ar,
//   lt: lt ?? _lt,
//   hi: hi ?? _hi,
//   el: el ?? _el,
//   mt: mt ?? _mt,
//   pl: pl ?? _pl,
//   be: be ?? _be,
//   ht: ht ?? _ht,
//   en: en ?? _en,
//   li: li ?? _li,
//   gd: gd ?? _gd,
//   os: os ?? _os,
//   mn: mn ?? _mn,
//   fa: fa ?? _fa,
//   bn: bn ?? _bn,
//   gn: gn ?? _gn,
//   yi: yi ?? _yi,
//   hy: hy ?? _hy,
//   te: te ?? _te,
//   kv: kv ?? _kv,
//   fy: fy ?? _fy,
//   mk: mk ?? _mk,
//   ku: ku ?? _ku,
//   an: an ?? _an,
//   wo: wo ?? _wo,
//   pt: pt ?? _pt,
//   lv: lv ?? _lv,
//   uk: uk ?? _uk,
//   tr: tr ?? _tr,
//   cu: cu ?? _cu,
//   ab: ab ?? _ab,
//   ro: ro ?? _ro,
//   vi: vi ?? _vi,
//   kk: kk ?? _kk,
//   cv: cv ?? _cv,
//   tl: tl ?? _tl,
//   hu: hu ?? _hu,
//   lo: lo ?? _lo,
//   kw: kw ?? _kw,
//   gl: gl ?? _gl,
//   ja: ja ?? _ja,
//   eo: eo ?? _eo,
//   es: es ?? _es,
//   ne: ne ?? _ne,
//   cs: cs ?? _cs,
//   ln: ln ?? _ln,
//   bo: bo ?? _bo,
//   oc: oc ?? _oc,
//   gv: gv ?? _gv,
//   he: he ?? _he,
//   ga: ga ?? _ga,
//   featureName: featureName ?? _featureName,
//   bg: bg ?? _bg,
//   yo: yo ?? _yo,
//   ps: ps ?? _ps,
//   rm: rm ?? _rm,
//   sq: sq ?? _sq,
//   et: et ?? _et,
//   zh: zh ?? _zh,
//   or: or ?? _or,
//   sv: sv ?? _sv,
//   eu: eu ?? _eu,
//   ml: ml ?? _ml,
//   ko: ko ?? _ko,
//   nl: nl ?? _nl,
//   sk: sk ?? _sk,
//   sa: sa ?? _sa,
//   no: no ?? _no,
//   sl: sl ?? _sl,
//   ru: ru ?? _ru,
//   si: si ?? _si,
//   ur: ur ?? _ur,
//   cy: cy ?? _cy,
//   am: am ?? _am,
//   ka: ka ?? _ka,
//   ca: ca ?? _ca,
//   fr: fr ?? _fr,
//   ascii: ascii ?? _ascii,
//   fi: fi ?? _fi,
//   th: th ?? _th,
//   sr: sr ?? _sr,
//   af: af ?? _af,
//   de: de ?? _de,
//   co: co ?? _co,
//   it: it ?? _it,
//   br: br ?? _br,
//   tg: tg ?? _tg,
//   ky: ky ?? _ky,
//   my: my ?? _my,
//   mr: mr ?? _mr,
//   sc: sc ?? _sc,
//   is_: is_ ?? _is,
//   kn: kn ?? _kn,
//   ba: ba ?? _ba,
// );
//   String? get mi => _mi;
//   String? get zu => _zu;
//   String? get tt => _tt;
//   String? get gu => _gu;
//   String? get ta => _ta;
//   String? get ar => _ar;
//   String? get lt => _lt;
//   String? get hi => _hi;
//   String? get el => _el;
//   String? get mt => _mt;
//   String? get pl => _pl;
//   String? get be => _be;
//   String? get ht => _ht;
//   String? get en => _en;
//   String? get li => _li;
//   String? get gd => _gd;
//   String? get os => _os;
//   String? get mn => _mn;
//   String? get fa => _fa;
//   String? get bn => _bn;
//   String? get gn => _gn;
//   String? get yi => _yi;
//   String? get hy => _hy;
//   String? get te => _te;
//   String? get kv => _kv;
//   String? get fy => _fy;
//   String? get mk => _mk;
//   String? get ku => _ku;
//   String? get an => _an;
//   String? get wo => _wo;
//   String? get pt => _pt;
//   String? get lv => _lv;
//   String? get uk => _uk;
//   String? get tr => _tr;
//   String? get cu => _cu;
//   String? get ab => _ab;
//   String? get ro => _ro;
//   String? get vi => _vi;
//   String? get kk => _kk;
//   String? get cv => _cv;
//   String? get tl => _tl;
//   String? get hu => _hu;
//   String? get lo => _lo;
//   String? get kw => _kw;
//   String? get gl => _gl;
//   String? get ja => _ja;
//   String? get eo => _eo;
//   String? get es => _es;
//   String? get ne => _ne;
//   String? get cs => _cs;
//   String? get ln => _ln;
//   String? get bo => _bo;
//   String? get oc => _oc;
//   String? get gv => _gv;
//   String? get he => _he;
//   String? get ga => _ga;
//   String? get featureName => _featureName;
//   String? get bg => _bg;
//   String? get yo => _yo;
//   String? get ps => _ps;
//   String? get rm => _rm;
//   String? get sq => _sq;
//   String? get et => _et;
//   String? get zh => _zh;
//   String? get or => _or;
//   String? get sv => _sv;
//   String? get eu => _eu;
//   String? get ml => _ml;
//   String? get ko => _ko;
//   String? get nl => _nl;
//   String? get sk => _sk;
//   String? get sa => _sa;
//   String? get no => _no;
//   String? get sl => _sl;
//   String? get ru => _ru;
//   String? get si => _si;
//   String? get ur => _ur;
//   String? get cy => _cy;
//   String? get am => _am;
//   String? get ka => _ka;
//   String? get ca => _ca;
//   String? get fr => _fr;
//   String? get ascii => _ascii;
//   String? get fi => _fi;
//   String? get th => _th;
//   String? get sr => _sr;
//   String? get af => _af;
//   String? get de => _de;
//   String? get co => _co;
//   String? get it => _it;
//   String? get br => _br;
//   String? get tg => _tg;
//   String? get ky => _ky;
//   String? get my => _my;
//   String? get mr => _mr;
//   String? get sc => _sc;
//   String? get is_ => _is;
//   String? get kn => _kn;
//   String? get ba => _ba;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['mi'] = _mi;
//     map['zu'] = _zu;
//     map['tt'] = _tt;
//     map['gu'] = _gu;
//     map['ta'] = _ta;
//     map['ar'] = _ar;
//     map['lt'] = _lt;
//     map['hi'] = _hi;
//     map['el'] = _el;
//     map['mt'] = _mt;
//     map['pl'] = _pl;
//     map['be'] = _be;
//     map['ht'] = _ht;
//     map['en'] = _en;
//     map['li'] = _li;
//     map['gd'] = _gd;
//     map['os'] = _os;
//     map['mn'] = _mn;
//     map['fa'] = _fa;
//     map['bn'] = _bn;
//     map['gn'] = _gn;
//     map['yi'] = _yi;
//     map['hy'] = _hy;
//     map['te'] = _te;
//     map['kv'] = _kv;
//     map['fy'] = _fy;
//     map['mk'] = _mk;
//     map['ku'] = _ku;
//     map['an'] = _an;
//     map['wo'] = _wo;
//     map['pt'] = _pt;
//     map['lv'] = _lv;
//     map['uk'] = _uk;
//     map['tr'] = _tr;
//     map['cu'] = _cu;
//     map['ab'] = _ab;
//     map['ro'] = _ro;
//     map['vi'] = _vi;
//     map['kk'] = _kk;
//     map['cv'] = _cv;
//     map['tl'] = _tl;
//     map['hu'] = _hu;
//     map['lo'] = _lo;
//     map['kw'] = _kw;
//     map['gl'] = _gl;
//     map['ja'] = _ja;
//     map['eo'] = _eo;
//     map['es'] = _es;
//     map['ne'] = _ne;
//     map['cs'] = _cs;
//     map['ln'] = _ln;
//     map['bo'] = _bo;
//     map['oc'] = _oc;
//     map['gv'] = _gv;
//     map['he'] = _he;
//     map['ga'] = _ga;
//     map['feature_name'] = _featureName;
//     map['bg'] = _bg;
//     map['yo'] = _yo;
//     map['ps'] = _ps;
//     map['rm'] = _rm;
//     map['sq'] = _sq;
//     map['et'] = _et;
//     map['zh'] = _zh;
//     map['or'] = _or;
//     map['sv'] = _sv;
//     map['eu'] = _eu;
//     map['ml'] = _ml;
//     map['ko'] = _ko;
//     map['nl'] = _nl;
//     map['sk'] = _sk;
//     map['sa'] = _sa;
//     map['no'] = _no;
//     map['sl'] = _sl;
//     map['ru'] = _ru;
//     map['si'] = _si;
//     map['ur'] = _ur;
//     map['cy'] = _cy;
//     map['am'] = _am;
//     map['ka'] = _ka;
//     map['ca'] = _ca;
//     map['fr'] = _fr;
//     map['ascii'] = _ascii;
//     map['fi'] = _fi;
//     map['th'] = _th;
//     map['sr'] = _sr;
//     map['af'] = _af;
//     map['de'] = _de;
//     map['co'] = _co;
//     map['it'] = _it;
//     map['br'] = _br;
//     map['tg'] = _tg;
//     map['ky'] = _ky;
//     map['my'] = _my;
//     map['mr'] = _mr;
//     map['sc'] = _sc;
//     map['is'] = _is;
//     map['kn'] = _kn;
//     map['ba'] = _ba;
//     return map;
//   }
//
// }

class GeocodingLocation {
  String? _name;
  LocalNames? _localNames;
  double? _lat;
  double? _lon;
  String? _country;
  String? _state;

  GeocodingLocation({String? name, LocalNames? localNames, double? lat, double? lon, String? country, String? state}) {
    if (name != null) {
      _name = name;
    }
    if (localNames != null) {
      _localNames = localNames;
    }
    if (lat != null) {
      _lat = lat;
    }
    if (lon != null) {
      _lon = lon;
    }
    if (country != null) {
      _country = country;
    }
    if (state != null) {
      _state = state;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  LocalNames? get localNames => _localNames;
  set localNames(LocalNames? localNames) => _localNames = localNames;
  double? get lat => _lat;
  set lat(double? lat) => _lat = lat;
  double? get lon => _lon;
  set lon(double? lon) => _lon = lon;
  String? get country => _country;
  set country(String? country) => _country = country;
  String? get state => _state;
  set state(String? state) => _state = state;

  GeocodingLocation.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _localNames = json['local_names'] != null ? LocalNames.fromJson(json['local_names']) : null;
    _lat = json['lat'];
    _lon = json['lon'];
    _country = json['country'];
    _state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = _name;
    if (_localNames != null) {
      data['local_names'] = _localNames!.toJson();
    }
    data['lat'] = _lat;
    data['lon'] = _lon;
    data['country'] = _country;
    data['state'] = _state;
    return data;
  }
}

class LocalNames {
  String? _he;
  String? _gn;
  String? _lv;
  String? _ne;
  String? _mk;
  String? _cu;
  String? _bn;
  String? _ml;
  String? _or;
  String? _tl;
  String? _el;
  String? _ur;
  String? _sq;
  String? _kv;
  String? _mn;
  String? _ru;
  String? _rm;
  String? _fa;
  String? _ht;
  String? _my;
  String? _gu;
  String? _sl;
  String? _gv;
  String? _gd;
  String? _ps;
  String? _lo;
  String? _no;
  String? _be;
  String? _kk;
  String? _mr;
  String? _te;
  String? _es;
  String? _nl;
  String? _ba;
  String? _ku;
  String? _os;
  String? _sr;
  String? _mi;
  String? _an;
  String? _si;
  String? _zu;
  String? _am;
  String? _uk;
  String? _fy;
  String? _cv;
  String? _mt;
  String? _ascii;
  String? _et;
  String? _oc;
  String? _sc;
  String? _co;
  String? _eo;
  String? _fr;
  String? _sk;
  String? _fi;
  String? _ln;
  String? _kw;
  String? _bo;
  String? _zh;
  String? _ga;
  String? _ta;
  String? _bg;
  String? _tg;
  String? _th;
  String? _eu;
  String? _hy;
  String? _de;
  String? _ca;
  String? _br;
  String? _sa;
  String? _ab;
  String? _en;
  String? _gl;
  String? _tr;
  String? _pl;
  String? _hi;
  String? _is;
  String? _wo;
  String? _pt;
  String? _ro;
  String? _tt;
  String? _cy;
  String? _af;
  String? _kn;
  String? _hu;
  String? _ky;
  String? _li;
  String? _ka;
  String? _lt;
  String? _ja;
  String? _it;
  String? _ar;
  String? _vi;
  String? _yi;
  String? _ko;
  String? _sv;
  String? _yo;
  String? _featureName;
  String? _cs;

  LocalNames({String? he, String? gn, String? lv, String? ne, String? mk, String? cu, String? bn, String? ml, String? or, String? tl, String? el, String? ur, String? sq, String? kv, String? mn, String? ru, String? rm, String? fa, String? ht, String? my, String? gu, String? sl, String? gv, String? gd, String? ps, String? lo, String? no, String? be, String? kk, String? mr, String? te, String? es, String? nl, String? ba, String? ku, String? os, String? sr, String? mi, String? an, String? si, String? zu, String? am, String? uk, String? fy, String? cv, String? mt, String? ascii, String? et, String? oc, String? sc, String? co, String? eo, String? fr, String? sk, String? fi, String? ln, String? kw, String? bo, String? zh, String? ga, String? ta, String? bg, String? tg, String? th, String? eu, String? hy, String? de, String? ca, String? br, String? sa, String? ab, String? en, String? gl, String? tr, String? pl, String? hi, String? is_, String? wo, String? pt, String? ro, String? tt, String? cy, String? af, String? kn, String? hu, String? ky, String? li, String? ka, String? lt, String? ja, String? it, String? ar, String? vi, String? yi, String? ko, String? sv, String? yo, String? featureName, String? cs}) {
    if (he != null) {
      _he = he;
    }
    if (gn != null) {
      _gn = gn;
    }
    if (lv != null) {
      _lv = lv;
    }
    if (ne != null) {
      _ne = ne;
    }
    if (mk != null) {
      _mk = mk;
    }
    if (cu != null) {
      _cu = cu;
    }
    if (bn != null) {
      _bn = bn;
    }
    if (ml != null) {
      _ml = ml;
    }
    if (or != null) {
      _or = or;
    }
    if (tl != null) {
      _tl = tl;
    }
    if (el != null) {
      _el = el;
    }
    if (ur != null) {
      _ur = ur;
    }
    if (sq != null) {
      _sq = sq;
    }
    if (kv != null) {
      _kv = kv;
    }
    if (mn != null) {
      _mn = mn;
    }
    if (ru != null) {
      _ru = ru;
    }
    if (rm != null) {
      _rm = rm;
    }
    if (fa != null) {
      _fa = fa;
    }
    if (ht != null) {
      _ht = ht;
    }
    if (my != null) {
      _my = my;
    }
    if (gu != null) {
      _gu = gu;
    }
    if (sl != null) {
      _sl = sl;
    }
    if (gv != null) {
      _gv = gv;
    }
    if (gd != null) {
      _gd = gd;
    }
    if (ps != null) {
      _ps = ps;
    }
    if (lo != null) {
      _lo = lo;
    }
    if (no != null) {
      _no = no;
    }
    if (be != null) {
      _be = be;
    }
    if (kk != null) {
      _kk = kk;
    }
    if (mr != null) {
      _mr = mr;
    }
    if (te != null) {
      _te = te;
    }
    if (es != null) {
      _es = es;
    }
    if (nl != null) {
      _nl = nl;
    }
    if (ba != null) {
      _ba = ba;
    }
    if (ku != null) {
      _ku = ku;
    }
    if (os != null) {
      _os = os;
    }
    if (sr != null) {
      _sr = sr;
    }
    if (mi != null) {
      _mi = mi;
    }
    if (an != null) {
      _an = an;
    }
    if (si != null) {
      _si = si;
    }
    if (zu != null) {
      _zu = zu;
    }
    if (am != null) {
      _am = am;
    }
    if (uk != null) {
      _uk = uk;
    }
    if (fy != null) {
      _fy = fy;
    }
    if (cv != null) {
      _cv = cv;
    }
    if (mt != null) {
      _mt = mt;
    }
    if (ascii != null) {
      _ascii = ascii;
    }
    if (et != null) {
      _et = et;
    }
    if (oc != null) {
      _oc = oc;
    }
    if (sc != null) {
      _sc = sc;
    }
    if (co != null) {
      _co = co;
    }
    if (eo != null) {
      _eo = eo;
    }
    if (fr != null) {
      _fr = fr;
    }
    if (sk != null) {
      _sk = sk;
    }
    if (fi != null) {
      _fi = fi;
    }
    if (ln != null) {
      _ln = ln;
    }
    if (kw != null) {
      _kw = kw;
    }
    if (bo != null) {
      _bo = bo;
    }
    if (zh != null) {
      _zh = zh;
    }
    if (ga != null) {
      _ga = ga;
    }
    if (ta != null) {
      _ta = ta;
    }
    if (bg != null) {
      _bg = bg;
    }
    if (tg != null) {
      _tg = tg;
    }
    if (th != null) {
      _th = th;
    }
    if (eu != null) {
      _eu = eu;
    }
    if (hy != null) {
      _hy = hy;
    }
    if (de != null) {
      _de = de;
    }
    if (ca != null) {
      _ca = ca;
    }
    if (br != null) {
      _br = br;
    }
    if (sa != null) {
      _sa = sa;
    }
    if (ab != null) {
      _ab = ab;
    }
    if (en != null) {
      _en = en;
    }
    if (gl != null) {
      _gl = gl;
    }
    if (tr != null) {
      _tr = tr;
    }
    if (pl != null) {
      _pl = pl;
    }
    if (hi != null) {
      _hi = hi;
    }
    if (is_ != null) {
      _is = is_;
    }
    if (wo != null) {
      _wo = wo;
    }
    if (pt != null) {
      _pt = pt;
    }
    if (ro != null) {
      _ro = ro;
    }
    if (tt != null) {
      _tt = tt;
    }
    if (cy != null) {
      _cy = cy;
    }
    if (af != null) {
      _af = af;
    }
    if (kn != null) {
      _kn = kn;
    }
    if (hu != null) {
      _hu = hu;
    }
    if (ky != null) {
      _ky = ky;
    }
    if (li != null) {
      _li = li;
    }
    if (ka != null) {
      _ka = ka;
    }
    if (lt != null) {
      _lt = lt;
    }
    if (ja != null) {
      _ja = ja;
    }
    if (it != null) {
      _it = it;
    }
    if (ar != null) {
      _ar = ar;
    }
    if (vi != null) {
      _vi = vi;
    }
    if (yi != null) {
      _yi = yi;
    }
    if (ko != null) {
      _ko = ko;
    }
    if (sv != null) {
      _sv = sv;
    }
    if (yo != null) {
      _yo = yo;
    }
    if (featureName != null) {
      _featureName = featureName;
    }
    if (cs != null) {
      _cs = cs;
    }
  }

  String? get he => _he;
  set he(String? he) => _he = he;
  String? get gn => _gn;
  set gn(String? gn) => _gn = gn;
  String? get lv => _lv;
  set lv(String? lv) => _lv = lv;
  String? get ne => _ne;
  set ne(String? ne) => _ne = ne;
  String? get mk => _mk;
  set mk(String? mk) => _mk = mk;
  String? get cu => _cu;
  set cu(String? cu) => _cu = cu;
  String? get bn => _bn;
  set bn(String? bn) => _bn = bn;
  String? get ml => _ml;
  set ml(String? ml) => _ml = ml;
  String? get or => _or;
  set or(String? or) => _or = or;
  String? get tl => _tl;
  set tl(String? tl) => _tl = tl;
  String? get el => _el;
  set el(String? el) => _el = el;
  String? get ur => _ur;
  set ur(String? ur) => _ur = ur;
  String? get sq => _sq;
  set sq(String? sq) => _sq = sq;
  String? get kv => _kv;
  set kv(String? kv) => _kv = kv;
  String? get mn => _mn;
  set mn(String? mn) => _mn = mn;
  String? get ru => _ru;
  set ru(String? ru) => _ru = ru;
  String? get rm => _rm;
  set rm(String? rm) => _rm = rm;
  String? get fa => _fa;
  set fa(String? fa) => _fa = fa;
  String? get ht => _ht;
  set ht(String? ht) => _ht = ht;
  String? get my => _my;
  set my(String? my) => _my = my;
  String? get gu => _gu;
  set gu(String? gu) => _gu = gu;
  String? get sl => _sl;
  set sl(String? sl) => _sl = sl;
  String? get gv => _gv;
  set gv(String? gv) => _gv = gv;
  String? get gd => _gd;
  set gd(String? gd) => _gd = gd;
  String? get ps => _ps;
  set ps(String? ps) => _ps = ps;
  String? get lo => _lo;
  set lo(String? lo) => _lo = lo;
  String? get no => _no;
  set no(String? no) => _no = no;
  String? get be => _be;
  set be(String? be) => _be = be;
  String? get kk => _kk;
  set kk(String? kk) => _kk = kk;
  String? get mr => _mr;
  set mr(String? mr) => _mr = mr;
  String? get te => _te;
  set te(String? te) => _te = te;
  String? get es => _es;
  set es(String? es) => _es = es;
  String? get nl => _nl;
  set nl(String? nl) => _nl = nl;
  String? get ba => _ba;
  set ba(String? ba) => _ba = ba;
  String? get ku => _ku;
  set ku(String? ku) => _ku = ku;
  String? get os => _os;
  set os(String? os) => _os = os;
  String? get sr => _sr;
  set sr(String? sr) => _sr = sr;
  String? get mi => _mi;
  set mi(String? mi) => _mi = mi;
  String? get an => _an;
  set an(String? an) => _an = an;
  String? get si => _si;
  set si(String? si) => _si = si;
  String? get zu => _zu;
  set zu(String? zu) => _zu = zu;
  String? get am => _am;
  set am(String? am) => _am = am;
  String? get uk => _uk;
  set uk(String? uk) => _uk = uk;
  String? get fy => _fy;
  set fy(String? fy) => _fy = fy;
  String? get cv => _cv;
  set cv(String? cv) => _cv = cv;
  String? get mt => _mt;
  set mt(String? mt) => _mt = mt;
  String? get ascii => _ascii;
  set ascii(String? ascii) => _ascii = ascii;
  String? get et => _et;
  set et(String? et) => _et = et;
  String? get oc => _oc;
  set oc(String? oc) => _oc = oc;
  String? get sc => _sc;
  set sc(String? sc) => _sc = sc;
  String? get co => _co;
  set co(String? co) => _co = co;
  String? get eo => _eo;
  set eo(String? eo) => _eo = eo;
  String? get fr => _fr;
  set fr(String? fr) => _fr = fr;
  String? get sk => _sk;
  set sk(String? sk) => _sk = sk;
  String? get fi => _fi;
  set fi(String? fi) => _fi = fi;
  String? get ln => _ln;
  set ln(String? ln) => _ln = ln;
  String? get kw => _kw;
  set kw(String? kw) => _kw = kw;
  String? get bo => _bo;
  set bo(String? bo) => _bo = bo;
  String? get zh => _zh;
  set zh(String? zh) => _zh = zh;
  String? get ga => _ga;
  set ga(String? ga) => _ga = ga;
  String? get ta => _ta;
  set ta(String? ta) => _ta = ta;
  String? get bg => _bg;
  set bg(String? bg) => _bg = bg;
  String? get tg => _tg;
  set tg(String? tg) => _tg = tg;
  String? get th => _th;
  set th(String? th) => _th = th;
  String? get eu => _eu;
  set eu(String? eu) => _eu = eu;
  String? get hy => _hy;
  set hy(String? hy) => _hy = hy;
  String? get de => _de;
  set de(String? de) => _de = de;
  String? get ca => _ca;
  set ca(String? ca) => _ca = ca;
  String? get br => _br;
  set br(String? br) => _br = br;
  String? get sa => _sa;
  set sa(String? sa) => _sa = sa;
  String? get ab => _ab;
  set ab(String? ab) => _ab = ab;
  String? get en => _en;
  set en(String? en) => _en = en;
  String? get gl => _gl;
  set gl(String? gl) => _gl = gl;
  String? get tr => _tr;
  set tr(String? tr) => _tr = tr;
  String? get pl => _pl;
  set pl(String? pl) => _pl = pl;
  String? get hi => _hi;
  set hi(String? hi) => _hi = hi;
  String? get is_ => _is;
  set is_(String? is_) => _is = is_;
  String? get wo => _wo;
  set wo(String? wo) => _wo = wo;
  String? get pt => _pt;
  set pt(String? pt) => _pt = pt;
  String? get ro => _ro;
  set ro(String? ro) => _ro = ro;
  String? get tt => _tt;
  set tt(String? tt) => _tt = tt;
  String? get cy => _cy;
  set cy(String? cy) => _cy = cy;
  String? get af => _af;
  set af(String? af) => _af = af;
  String? get kn => _kn;
  set kn(String? kn) => _kn = kn;
  String? get hu => _hu;
  set hu(String? hu) => _hu = hu;
  String? get ky => _ky;
  set ky(String? ky) => _ky = ky;
  String? get li => _li;
  set li(String? li) => _li = li;
  String? get ka => _ka;
  set ka(String? ka) => _ka = ka;
  String? get lt => _lt;
  set lt(String? lt) => _lt = lt;
  String? get ja => _ja;
  set ja(String? ja) => _ja = ja;
  String? get it => _it;
  set it(String? it) => _it = it;
  String? get ar => _ar;
  set ar(String? ar) => _ar = ar;
  String? get vi => _vi;
  set vi(String? vi) => _vi = vi;
  String? get yi => _yi;
  set yi(String? yi) => _yi = yi;
  String? get ko => _ko;
  set ko(String? ko) => _ko = ko;
  String? get sv => _sv;
  set sv(String? sv) => _sv = sv;
  String? get yo => _yo;
  set yo(String? yo) => _yo = yo;
  String? get featureName => _featureName;
  set featureName(String? featureName) => _featureName = featureName;
  String? get cs => _cs;
  set cs(String? cs) => _cs = cs;

  LocalNames.fromJson(Map<String, dynamic> json) {
    _he = json['he'];
    _gn = json['gn'];
    _lv = json['lv'];
    _ne = json['ne'];
    _mk = json['mk'];
    _cu = json['cu'];
    _bn = json['bn'];
    _ml = json['ml'];
    _or = json['or'];
    _tl = json['tl'];
    _el = json['el'];
    _ur = json['ur'];
    _sq = json['sq'];
    _kv = json['kv'];
    _mn = json['mn'];
    _ru = json['ru'];
    _rm = json['rm'];
    _fa = json['fa'];
    _ht = json['ht'];
    _my = json['my'];
    _gu = json['gu'];
    _sl = json['sl'];
    _gv = json['gv'];
    _gd = json['gd'];
    _ps = json['ps'];
    _lo = json['lo'];
    _no = json['no'];
    _be = json['be'];
    _kk = json['kk'];
    _mr = json['mr'];
    _te = json['te'];
    _es = json['es'];
    _nl = json['nl'];
    _ba = json['ba'];
    _ku = json['ku'];
    _os = json['os'];
    _sr = json['sr'];
    _mi = json['mi'];
    _an = json['an'];
    _si = json['si'];
    _zu = json['zu'];
    _am = json['am'];
    _uk = json['uk'];
    _fy = json['fy'];
    _cv = json['cv'];
    _mt = json['mt'];
    _ascii = json['ascii'];
    _et = json['et'];
    _oc = json['oc'];
    _sc = json['sc'];
    _co = json['co'];
    _eo = json['eo'];
    _fr = json['fr'];
    _sk = json['sk'];
    _fi = json['fi'];
    _ln = json['ln'];
    _kw = json['kw'];
    _bo = json['bo'];
    _zh = json['zh'];
    _ga = json['ga'];
    _ta = json['ta'];
    _bg = json['bg'];
    _tg = json['tg'];
    _th = json['th'];
    _eu = json['eu'];
    _hy = json['hy'];
    _de = json['de'];
    _ca = json['ca'];
    _br = json['br'];
    _sa = json['sa'];
    _ab = json['ab'];
    _en = json['en'];
    _gl = json['gl'];
    _tr = json['tr'];
    _pl = json['pl'];
    _hi = json['hi'];
    _is = json['is'];
    _wo = json['wo'];
    _pt = json['pt'];
    _ro = json['ro'];
    _tt = json['tt'];
    _cy = json['cy'];
    _af = json['af'];
    _kn = json['kn'];
    _hu = json['hu'];
    _ky = json['ky'];
    _li = json['li'];
    _ka = json['ka'];
    _lt = json['lt'];
    _ja = json['ja'];
    _it = json['it'];
    _ar = json['ar'];
    _vi = json['vi'];
    _yi = json['yi'];
    _ko = json['ko'];
    _sv = json['sv'];
    _yo = json['yo'];
    _featureName = json['feature_name'];
    _cs = json['cs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['he'] = _he;
    data['gn'] = _gn;
    data['lv'] = _lv;
    data['ne'] = _ne;
    data['mk'] = _mk;
    data['cu'] = _cu;
    data['bn'] = _bn;
    data['ml'] = _ml;
    data['or'] = _or;
    data['tl'] = _tl;
    data['el'] = _el;
    data['ur'] = _ur;
    data['sq'] = _sq;
    data['kv'] = _kv;
    data['mn'] = _mn;
    data['ru'] = _ru;
    data['rm'] = _rm;
    data['fa'] = _fa;
    data['ht'] = _ht;
    data['my'] = _my;
    data['gu'] = _gu;
    data['sl'] = _sl;
    data['gv'] = _gv;
    data['gd'] = _gd;
    data['ps'] = _ps;
    data['lo'] = _lo;
    data['no'] = _no;
    data['be'] = _be;
    data['kk'] = _kk;
    data['mr'] = _mr;
    data['te'] = _te;
    data['es'] = _es;
    data['nl'] = _nl;
    data['ba'] = _ba;
    data['ku'] = _ku;
    data['os'] = _os;
    data['sr'] = _sr;
    data['mi'] = _mi;
    data['an'] = _an;
    data['si'] = _si;
    data['zu'] = _zu;
    data['am'] = _am;
    data['uk'] = _uk;
    data['fy'] = _fy;
    data['cv'] = _cv;
    data['mt'] = _mt;
    data['ascii'] = _ascii;
    data['et'] = _et;
    data['oc'] = _oc;
    data['sc'] = _sc;
    data['co'] = _co;
    data['eo'] = _eo;
    data['fr'] = _fr;
    data['sk'] = _sk;
    data['fi'] = _fi;
    data['ln'] = _ln;
    data['kw'] = _kw;
    data['bo'] = _bo;
    data['zh'] = _zh;
    data['ga'] = _ga;
    data['ta'] = _ta;
    data['bg'] = _bg;
    data['tg'] = _tg;
    data['th'] = _th;
    data['eu'] = _eu;
    data['hy'] = _hy;
    data['de'] = _de;
    data['ca'] = _ca;
    data['br'] = _br;
    data['sa'] = _sa;
    data['ab'] = _ab;
    data['en'] = _en;
    data['gl'] = _gl;
    data['tr'] = _tr;
    data['pl'] = _pl;
    data['hi'] = _hi;
    data['is'] = _is;
    data['wo'] = _wo;
    data['pt'] = _pt;
    data['ro'] = _ro;
    data['tt'] = _tt;
    data['cy'] = _cy;
    data['af'] = _af;
    data['kn'] = _kn;
    data['hu'] = _hu;
    data['ky'] = _ky;
    data['li'] = _li;
    data['ka'] = _ka;
    data['lt'] = _lt;
    data['ja'] = _ja;
    data['it'] = _it;
    data['ar'] = _ar;
    data['vi'] = _vi;
    data['yi'] = _yi;
    data['ko'] = _ko;
    data['sv'] = _sv;
    data['yo'] = _yo;
    data['feature_name'] = _featureName;
    data['cs'] = _cs;
    return data;
  }
}
