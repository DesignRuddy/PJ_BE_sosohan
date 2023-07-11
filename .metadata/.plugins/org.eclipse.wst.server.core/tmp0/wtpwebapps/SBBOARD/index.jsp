<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

    <link href="/resources/job/sosohanjob3.css" rel="stylesheet">
    
    <script src="/resources/job/sosohanjs.js"></script>
    
</head>
<body>

            <div id='bbArea' class='rcr_cnt'>
            <div class="cntWrap clear" id="devSearchForm" data-value-json="{&quot;dutyCtgr&quot;:0,&quot;duty&quot;:null,&quot;dkwrd&quot;:null,&quot;local&quot;:null,&quot;subwayUpp&quot;:null,&quot;subway&quot;:null,&quot;career&quot;:null,&quot;careerStart&quot;:null,&quot;careerEnd&quot;:null,&quot;edu&quot;:null,&quot;cotype&quot;:null,&quot;jobtype&quot;:null,&quot;industryCtgr&quot;:0,&quot;industry&quot;:null,&quot;ikwrd&quot;:null,&quot;position&quot;:null,&quot;age&quot;:null,&quot;pay&quot;:null,&quot;paytype&quot;:null,&quot;payinput&quot;:null,&quot;sex&quot;:null,&quot;majorCtgr&quot;:null,&quot;major&quot;:null,&quot;license&quot;:null,&quot;pref&quot;:null,&quot;wel&quot;:null,&quot;textinclude&quot;:null,&quot;textexclude&quot;:null,&quot;IncludeAgeZero&quot;:false,&quot;IncludeGenderIrrelevant&quot;:false,&quot;iframeFlag&quot;:false,&quot;monJobType&quot;:null,&quot;monJobTypeArray&quot;:null,&quot;monLocalArray&quot;:null,&quot;menucode&quot;:&quot;local&quot;,&quot;searchtype&quot;:&quot;B&quot;,&quot;hasSubwayOnlyCache&quot;:false,&quot;hasLocalOnlyCache&quot;:null,&quot;dutyArr&quot;:null,&quot;dkwrdArr&quot;:null,&quot;localArr&quot;:null,&quot;subwayUppArr&quot;:null,&quot;subwayArr&quot;:null,&quot;careerArr&quot;:null,&quot;eduArr&quot;:null,&quot;cotypeArr&quot;:null,&quot;jobtypeArr&quot;:null,&quot;industryArr&quot;:null,&quot;ikwrdArr&quot;:null,&quot;positionArr&quot;:null,&quot;payArr&quot;:null,&quot;majorCtgrArr&quot;:null,&quot;majorArr&quot;:null,&quot;licenseArr&quot;:null,&quot;prefArr&quot;:null,&quot;welArr&quot;:null,&quot;textincludeArr&quot;:null,&quot;textexcludeArr&quot;:null,&quot;dutyCtgrSelect&quot;:null,&quot;IndustryCtgrSelect&quot;:null,&quot;dutySelect&quot;:null,&quot;IndustrySelect&quot;:null,&quot;localCtgrSelect&quot;:null,&quot;majorCtgrSelect&quot;:null}" data-search-type="">
                <h2 class="titDetailSch">채용공고 상세검색</h2>
                {/* <!-- 최근 검색한 조건 --> */}
                <div class="detail-search-button">
                    <div class="recentSetting">
                        <button type="button" class="btn_rs" id="devSearchedTerms" onclick="GA_Event('상세검색_PC', '상세검색', '최근검색한조건')">최근 검색한 조건 <strong>0건</strong><span class="ico">열기</span></button>
                        <div class="ly_rs lySchImport devLyType_P" style={{display:'none'}} id="devSearchedTermsLayer">
            <h3 class="lyHd">최근 검색한 조건 <em>(보관은 <span class="tahoma">5</span>개까지 가능)</em></h3>
            <div class="lyCnt">
                <div class="tplList">
                    <table>
                        <caption><span class="blind">최근 검색 조건 목록</span></caption>
                  
                        <thead>
                            <tr>
                                <th scope="col" class="tahoma">검색일</th>
                                <th scope="col">검색조건</th>
                                <th scope="col">보관 / 삭제</th>
                            </tr>
                        </thead>
                        <tbody>

                                <tr>
                                    <td colspan="4" class="noData"><span class="dotum">검색조건 내역이 없습니다.</span></td>
                                </tr>
                        </tbody>
                    </table>
                </div>
            </div>



                <p class="lyBtn"><button type="button" class="tplBtnTy tplLyBtnClose_1 devLyBtnClose_P"><span class="blind">최근 검색한 조건 목록  닫기</span></button></p></div>
                </div>
                    
                </div>

                <div class="detailArea">

                    <div class="detailWrap">
                        <div class="detail-search clear">
                            <dl class="job circleType dev-tab dev-duty" data-category="duty">

                                <dt>
                                    <p class="btn_tit">
                                        직무
                                        <span class="ico arrow">펴기</span>
                                    </p>
                                </dt>
                                <dd class="nano has-scrollbar">
                                    <div class="nano-content dev-main" tabindex="0" style={{right:'-17'}}>
                                        <ul data-category="duty">
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10026" name="duty" value="10026"/>
                                                    <label class="lb_tag" for="duty_10026">
                                                        <span class="radiWrap">
                                                            <span>기획·전략</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10027" name="duty" value="10027"/>
                                                    <label class="lb_tag" for="duty_10027">
                                                        <span class="radiWrap">
                                                            <span>법무·사무·총무</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10028" name="duty" value="10028"/>
                                                    <label class="lb_tag" for="duty_10028">
                                                        <span class="radiWrap">
                                                            <span>인사·HR</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10029" name="duty" value="10029"/>
                                                    <label class="lb_tag" for="duty_10029">
                                                        <span class="radiWrap">
                                                            <span>회계·세무</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10030" name="duty" value="10030"/>
                                                    <label class="lb_tag" for="duty_10030">
                                                        <span class="radiWrap">
                                                            <span>마케팅·광고·MD</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10031" name="duty" value="10031"/>
                                                    <label class="lb_tag" for="duty_10031">
                                                        <span class="radiWrap">
                                                            <span>개발·데이터</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10032" name="duty" value="10032"/>
                                                    <label class="lb_tag" for="duty_10032">
                                                        <span class="radiWrap">
                                                            <span>디자인</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10033" name="duty" value="10033"/>
                                                    <label class="lb_tag" for="duty_10033">
                                                        <span class="radiWrap">
                                                            <span>물류·무역</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10034" name="duty" value="10034"/>
                                                    <label class="lb_tag" for="duty_10034">
                                                        <span class="radiWrap">
                                                            <span>운전·운송·배송</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10035" name="duty" value="10035"/>
                                                    <label class="lb_tag" for="duty_10035">
                                                        <span class="radiWrap">
                                                            <span>영업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10036" name="duty" value="10036"/>
                                                    <label class="lb_tag" for="duty_10036">
                                                        <span class="radiWrap">
                                                            <span>고객상담·TM</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10037" name="duty" value="10037"/>
                                                    <label class="lb_tag" for="duty_10037">
                                                        <span class="radiWrap">
                                                            <span>금융·보험</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10038" name="duty" value="10038"/>
                                                    <label class="lb_tag" for="duty_10038">
                                                        <span class="radiWrap">
                                                            <span>식·음료</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10039" name="duty" value="10039"/>
                                                    <label class="lb_tag" for="duty_10039">
                                                        <span class="radiWrap">
                                                            <span>고객서비스·리테일</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10040" name="duty" value="10040"/>
                                                    <label class="lb_tag" for="duty_10040">
                                                        <span class="radiWrap">
                                                            <span>엔지니어링·설계</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10041" name="duty" value="10041"/>
                                                    <label class="lb_tag" for="duty_10041">
                                                        <span class="radiWrap">
                                                            <span>제조·생산</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10042" name="duty" value="10042"/>
                                                    <label class="lb_tag" for="duty_10042">
                                                        <span class="radiWrap">
                                                            <span>교육</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10043" name="duty" value="10043"/>
                                                    <label class="lb_tag" for="duty_10043">
                                                        <span class="radiWrap">
                                                            <span>건축·시설</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10044" name="duty" value="10044"/>
                                                    <label class="lb_tag" for="duty_10044">
                                                        <span class="radiWrap">
                                                            <span>의료·바이오</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10045" name="duty" value="10045"/>
                                                    <label class="lb_tag" for="duty_10045">
                                                        <span class="radiWrap">
                                                            <span>미디어·문화·스포츠</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="duty_10046" name="duty" value="10046"/>
                                                    <label class="lb_tag" for="duty_10046">
                                                        <span class="radiWrap">
                                                            <span>공공·복지</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                        </ul>
                                    </div>
                                    <div class="nano-pane" style={{display:'block'}}><div class="nano-slider" style={{height: 63, transform: 'translate(0, 0)'}}></div></div>
                                </dd>
                                <dd class="ly_sub">
                                    <div class="ly_sub_sch clear">
                                        {/* <!-- 검색영역--> */}
                                        <div class="sch_box">
                                            <input type="search" id="lb_job_sch" class="ty_sch lb_job_sch_inp" data-type="Duty"/>
                                            <label for="lb_job_sch" class="ty_lb lb_job_sch_label dev-ph-label">직무, 전문분야 입력</label>
                                            <button type="button" class="btn_sch dev-search-ok">찾기</button>
                                            <div class="autoRecommand" style={{display:'none'}}>
                                                {/* <!-- 추천 검색어 / on 클래스 추가하면 검색결과 없음 노출--> */}
                                                <dl class="chkType">
                                                    <dd class="nano has-scrollbar">
                                                        <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                                            <ul class="list">

                                                            </ul>
                                                        </div>
                                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                                    </dd>
                                                    <div class="ar_confirm">
                                                        <button type="button" class="btn_cancel dev-searched-terms-close">취소</button>
                                                        <button type="button" class="btn_okay dev-searched-terms-ok">선택</button>
                                                    </div>
                                                </dl>
                                                <p class="emptyResult">검색 결과가 없습니다.</p>
                                            </div>
                                        </div>
                                        <dl class="recentWord clear" style={{display:'none'}}>
                                            <dt class="tit">최근검색</dt>
                                            <dd class="list">
                                                <ul class="clear"></ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="ly_sub_cnt colm3-ty1 clear">
                                        <dl class="detail_sec barType">

                                            <dt class="blind">
                                                <p class="btn_tit">1차메뉴</p>
                                            </dt>
                                            <dd class="nano has-scrollbar">
                                                <div class="nano-content dev-main" tabindex="0" style={{right:'-17'}}>
                                                    <ul data-category="duty">
    
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10026,&quot;groupName&quot;:&quot;기획·전략&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000185,&quot;subName&quot;:&quot;경영·비즈니스기획&quot;,&quot;giCnt&quot;:5196,&quot;groupCode&quot;:10026},{&quot;subCode&quot;:1000186,&quot;subName&quot;:&quot;웹기획&quot;,&quot;giCnt&quot;:3388,&quot;groupCode&quot;:10026},{&quot;subCode&quot;:1000187,&quot;subName&quot;:&quot;마케팅기획&quot;,&quot;giCnt&quot;:4035,&quot;groupCode&quot;:10026},{&quot;subCode&quot;:1000188,&quot;subName&quot;:&quot;PL·PM·PO&quot;,&quot;giCnt&quot;:1380,&quot;groupCode&quot;:10026},{&quot;subCode&quot;:1000189,&quot;subName&quot;:&quot;컨설턴트&quot;,&quot;giCnt&quot;:953,&quot;groupCode&quot;:10026},{&quot;subCode&quot;:1000190,&quot;subName&quot;:&quot;CEO·COO·CTO&quot;,&quot;giCnt&quot;:152,&quot;groupCode&quot;:10026}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10026" name="duty" value="10026"/>
                                                                <label class="lb_tag" for="duty_step1_10026">
                                                                    <span class="radiWrap">
                                                                        <span>기획·전략</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10027,&quot;groupName&quot;:&quot;법무·사무·총무&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000191,&quot;subName&quot;:&quot;경영지원&quot;,&quot;giCnt&quot;:2427,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000192,&quot;subName&quot;:&quot;사무담당자&quot;,&quot;giCnt&quot;:6366,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000193,&quot;subName&quot;:&quot;총무&quot;,&quot;giCnt&quot;:3488,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000194,&quot;subName&quot;:&quot;사무보조&quot;,&quot;giCnt&quot;:8374,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000195,&quot;subName&quot;:&quot;법무담당자&quot;,&quot;giCnt&quot;:923,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000196,&quot;subName&quot;:&quot;비서&quot;,&quot;giCnt&quot;:1002,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000197,&quot;subName&quot;:&quot;변호사&quot;,&quot;giCnt&quot;:214,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000198,&quot;subName&quot;:&quot;법무사&quot;,&quot;giCnt&quot;:53,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000199,&quot;subName&quot;:&quot;변리사&quot;,&quot;giCnt&quot;:159,&quot;groupCode&quot;:10027},{&quot;subCode&quot;:1000200,&quot;subName&quot;:&quot;노무사&quot;,&quot;giCnt&quot;:58,&quot;groupCode&quot;:10027}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10027" name="duty" value="10027"/>
                                                                <label class="lb_tag" for="duty_step1_10027">
                                                                    <span class="radiWrap">
                                                                        <span>법무·사무·총무</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10028,&quot;groupName&quot;:&quot;인사·HR&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000201,&quot;subName&quot;:&quot;인사담당자&quot;,&quot;giCnt&quot;:2387,&quot;groupCode&quot;:10028},{&quot;subCode&quot;:1000202,&quot;subName&quot;:&quot;HRD·HRM&quot;,&quot;giCnt&quot;:2319,&quot;groupCode&quot;:10028},{&quot;subCode&quot;:1000203,&quot;subName&quot;:&quot;노무관리자&quot;,&quot;giCnt&quot;:787,&quot;groupCode&quot;:10028},{&quot;subCode&quot;:1000204,&quot;subName&quot;:&quot;잡매니저&quot;,&quot;giCnt&quot;:363,&quot;groupCode&quot;:10028},{&quot;subCode&quot;:1000205,&quot;subName&quot;:&quot;헤드헌터&quot;,&quot;giCnt&quot;:339,&quot;groupCode&quot;:10028},{&quot;subCode&quot;:1000206,&quot;subName&quot;:&quot;직업상담사&quot;,&quot;giCnt&quot;:212,&quot;groupCode&quot;:10028}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10028" name="duty" value="10028"/>
                                                                <label class="lb_tag" for="duty_step1_10028">
                                                                    <span class="radiWrap">
                                                                        <span>인사·HR</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10029,&quot;groupName&quot;:&quot;회계·세무&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000207,&quot;subName&quot;:&quot;회계담당자&quot;,&quot;giCnt&quot;:6621,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000208,&quot;subName&quot;:&quot;경리&quot;,&quot;giCnt&quot;:3680,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000209,&quot;subName&quot;:&quot;세무담당자&quot;,&quot;giCnt&quot;:2635,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000210,&quot;subName&quot;:&quot;재무담당자&quot;,&quot;giCnt&quot;:2811,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000211,&quot;subName&quot;:&quot;감사&quot;,&quot;giCnt&quot;:508,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000212,&quot;subName&quot;:&quot;IR·공시&quot;,&quot;giCnt&quot;:512,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000213,&quot;subName&quot;:&quot;회계사&quot;,&quot;giCnt&quot;:239,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000214,&quot;subName&quot;:&quot;세무사&quot;,&quot;giCnt&quot;:241,&quot;groupCode&quot;:10029},{&quot;subCode&quot;:1000215,&quot;subName&quot;:&quot;관세사&quot;,&quot;giCnt&quot;:73,&quot;groupCode&quot;:10029}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10029" name="duty" value="10029"/>
                                                                <label class="lb_tag" for="duty_step1_10029">
                                                                    <span class="radiWrap">
                                                                        <span>회계·세무</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10030,&quot;groupName&quot;:&quot;마케팅·광고·MD&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000216,&quot;subName&quot;:&quot;AE(광고기획자)&quot;,&quot;giCnt&quot;:2292,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000217,&quot;subName&quot;:&quot;브랜드마케터&quot;,&quot;giCnt&quot;:2452,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000218,&quot;subName&quot;:&quot;퍼포먼스마케터&quot;,&quot;giCnt&quot;:1930,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000219,&quot;subName&quot;:&quot;CRM마케터&quot;,&quot;giCnt&quot;:644,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000220,&quot;subName&quot;:&quot;온라인마케터&quot;,&quot;giCnt&quot;:5584,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000221,&quot;subName&quot;:&quot;콘텐츠마케터&quot;,&quot;giCnt&quot;:1562,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000222,&quot;subName&quot;:&quot;홍보&quot;,&quot;giCnt&quot;:3578,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000223,&quot;subName&quot;:&quot;설문·리서치&quot;,&quot;giCnt&quot;:445,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000224,&quot;subName&quot;:&quot;MD&quot;,&quot;giCnt&quot;:5315,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000225,&quot;subName&quot;:&quot;카피라이터&quot;,&quot;giCnt&quot;:178,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000226,&quot;subName&quot;:&quot;크리에이티브디렉터&quot;,&quot;giCnt&quot;:138,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000227,&quot;subName&quot;:&quot;채널관리자&quot;,&quot;giCnt&quot;:2146,&quot;groupCode&quot;:10030},{&quot;subCode&quot;:1000228,&quot;subName&quot;:&quot;그로스해커&quot;,&quot;giCnt&quot;:45,&quot;groupCode&quot;:10030}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10030" name="duty" value="10030"/>
                                                                <label class="lb_tag" for="duty_step1_10030">
                                                                    <span class="radiWrap">
                                                                        <span>마케팅·광고·MD</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10031,&quot;groupName&quot;:&quot;개발·데이터&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000229,&quot;subName&quot;:&quot;백엔드개발자&quot;,&quot;giCnt&quot;:1868,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000230,&quot;subName&quot;:&quot;프론트엔드개발자&quot;,&quot;giCnt&quot;:1704,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000231,&quot;subName&quot;:&quot;웹개발자&quot;,&quot;giCnt&quot;:4146,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000232,&quot;subName&quot;:&quot;앱개발자&quot;,&quot;giCnt&quot;:2849,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000233,&quot;subName&quot;:&quot;시스템엔지니어&quot;,&quot;giCnt&quot;:3903,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000234,&quot;subName&quot;:&quot;네트워크엔지니어&quot;,&quot;giCnt&quot;:2270,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000235,&quot;subName&quot;:&quot;DBA&quot;,&quot;giCnt&quot;:1029,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000236,&quot;subName&quot;:&quot;데이터엔지니어&quot;,&quot;giCnt&quot;:739,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000237,&quot;subName&quot;:&quot;데이터사이언티스트&quot;,&quot;giCnt&quot;:604,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000238,&quot;subName&quot;:&quot;보안엔지니어&quot;,&quot;giCnt&quot;:1488,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000239,&quot;subName&quot;:&quot;소프트웨어개발자&quot;,&quot;giCnt&quot;:3152,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000240,&quot;subName&quot;:&quot;게임개발자&quot;,&quot;giCnt&quot;:1755,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000241,&quot;subName&quot;:&quot;하드웨어개발자&quot;,&quot;giCnt&quot;:840,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000242,&quot;subName&quot;:&quot;머신러닝엔지니어&quot;,&quot;giCnt&quot;:954,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000243,&quot;subName&quot;:&quot;블록체인개발자&quot;,&quot;giCnt&quot;:87,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000244,&quot;subName&quot;:&quot;클라우드엔지니어&quot;,&quot;giCnt&quot;:476,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000245,&quot;subName&quot;:&quot;웹퍼블리셔&quot;,&quot;giCnt&quot;:970,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000246,&quot;subName&quot;:&quot;IT컨설팅&quot;,&quot;giCnt&quot;:398,&quot;groupCode&quot;:10031},{&quot;subCode&quot;:1000247,&quot;subName&quot;:&quot;QA&quot;,&quot;giCnt&quot;:704,&quot;groupCode&quot;:10031}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10031" name="duty" value="10031"/>
                                                                <label class="lb_tag" for="duty_step1_10031">
                                                                    <span class="radiWrap">
                                                                        <span>개발·데이터</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10032,&quot;groupName&quot;:&quot;디자인&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000248,&quot;subName&quot;:&quot;그래픽디자이너&quot;,&quot;giCnt&quot;:2542,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000249,&quot;subName&quot;:&quot;3D디자이너&quot;,&quot;giCnt&quot;:1201,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000250,&quot;subName&quot;:&quot;제품디자이너&quot;,&quot;giCnt&quot;:1032,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000251,&quot;subName&quot;:&quot;산업디자이너&quot;,&quot;giCnt&quot;:478,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000252,&quot;subName&quot;:&quot;광고디자이너&quot;,&quot;giCnt&quot;:1495,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000253,&quot;subName&quot;:&quot;시각디자이너&quot;,&quot;giCnt&quot;:2147,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000254,&quot;subName&quot;:&quot;영상디자이너&quot;,&quot;giCnt&quot;:593,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000255,&quot;subName&quot;:&quot;웹디자이너&quot;,&quot;giCnt&quot;:3417,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000256,&quot;subName&quot;:&quot;UI·UX디자이너&quot;,&quot;giCnt&quot;:2148,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000257,&quot;subName&quot;:&quot;패션디자이너&quot;,&quot;giCnt&quot;:1467,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000258,&quot;subName&quot;:&quot;편집디자이너&quot;,&quot;giCnt&quot;:1007,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000259,&quot;subName&quot;:&quot;실내디자이너&quot;,&quot;giCnt&quot;:1265,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000260,&quot;subName&quot;:&quot;공간디자이너&quot;,&quot;giCnt&quot;:918,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000261,&quot;subName&quot;:&quot;캐릭터디자이너&quot;,&quot;giCnt&quot;:1015,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000262,&quot;subName&quot;:&quot;환경디자이너&quot;,&quot;giCnt&quot;:169,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000263,&quot;subName&quot;:&quot;아트디렉터&quot;,&quot;giCnt&quot;:115,&quot;groupCode&quot;:10032},{&quot;subCode&quot;:1000264,&quot;subName&quot;:&quot;일러스트레이터&quot;,&quot;giCnt&quot;:1110,&quot;groupCode&quot;:10032}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10032" name="duty" value="10032"/>
                                                                <label class="lb_tag" for="duty_step1_10032">
                                                                    <span class="radiWrap">
                                                                        <span>디자인</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10033,&quot;groupName&quot;:&quot;물류·무역&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000265,&quot;subName&quot;:&quot;물류관리자&quot;,&quot;giCnt&quot;:6496,&quot;groupCode&quot;:10033},{&quot;subCode&quot;:1000266,&quot;subName&quot;:&quot;구매관리자&quot;,&quot;giCnt&quot;:2026,&quot;groupCode&quot;:10033},{&quot;subCode&quot;:1000267,&quot;subName&quot;:&quot;자재관리자&quot;,&quot;giCnt&quot;:3826,&quot;groupCode&quot;:10033},{&quot;subCode&quot;:1000268,&quot;subName&quot;:&quot;유통관리자&quot;,&quot;giCnt&quot;:2989,&quot;groupCode&quot;:10033},{&quot;subCode&quot;:1000269,&quot;subName&quot;:&quot;무역사무원&quot;,&quot;giCnt&quot;:2193,&quot;groupCode&quot;:10033}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10033" name="duty" value="10033"/>
                                                                <label class="lb_tag" for="duty_step1_10033">
                                                                    <span class="radiWrap">
                                                                        <span>물류·무역</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10034,&quot;groupName&quot;:&quot;운전·운송·배송&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000270,&quot;subName&quot;:&quot;납품·배송기사&quot;,&quot;giCnt&quot;:3413,&quot;groupCode&quot;:10034},{&quot;subCode&quot;:1000271,&quot;subName&quot;:&quot;배달기사&quot;,&quot;giCnt&quot;:558,&quot;groupCode&quot;:10034},{&quot;subCode&quot;:1000272,&quot;subName&quot;:&quot;수행·운전기사&quot;,&quot;giCnt&quot;:1204,&quot;groupCode&quot;:10034},{&quot;subCode&quot;:1000273,&quot;subName&quot;:&quot;화물·중장비기사&quot;,&quot;giCnt&quot;:1731,&quot;groupCode&quot;:10034},{&quot;subCode&quot;:1000274,&quot;subName&quot;:&quot;버스기사&quot;,&quot;giCnt&quot;:266,&quot;groupCode&quot;:10034},{&quot;subCode&quot;:1000275,&quot;subName&quot;:&quot;택시기사&quot;,&quot;giCnt&quot;:95,&quot;groupCode&quot;:10034},{&quot;subCode&quot;:1000276,&quot;subName&quot;:&quot;조종·기관사&quot;,&quot;giCnt&quot;:36,&quot;groupCode&quot;:10034}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10034" name="duty" value="10034"/>
                                                                <label class="lb_tag" for="duty_step1_10034">
                                                                    <span class="radiWrap">
                                                                        <span>운전·운송·배송</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10035,&quot;groupName&quot;:&quot;영업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000277,&quot;subName&quot;:&quot;제품영업&quot;,&quot;giCnt&quot;:6758,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000278,&quot;subName&quot;:&quot;서비스영업&quot;,&quot;giCnt&quot;:2880,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000279,&quot;subName&quot;:&quot;해외영업&quot;,&quot;giCnt&quot;:3082,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000280,&quot;subName&quot;:&quot;광고영업&quot;,&quot;giCnt&quot;:909,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000281,&quot;subName&quot;:&quot;금융영업&quot;,&quot;giCnt&quot;:1363,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000282,&quot;subName&quot;:&quot;법인영업&quot;,&quot;giCnt&quot;:2227,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000283,&quot;subName&quot;:&quot;IT·기술영업&quot;,&quot;giCnt&quot;:3641,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000284,&quot;subName&quot;:&quot;영업관리&quot;,&quot;giCnt&quot;:9840,&quot;groupCode&quot;:10035},{&quot;subCode&quot;:1000285,&quot;subName&quot;:&quot;영업지원&quot;,&quot;giCnt&quot;:6293,&quot;groupCode&quot;:10035}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10035" name="duty" value="10035"/>
                                                                <label class="lb_tag" for="duty_step1_10035">
                                                                    <span class="radiWrap">
                                                                        <span>영업</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10036,&quot;groupName&quot;:&quot;고객상담·TM&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000286,&quot;subName&quot;:&quot;인바운드상담원&quot;,&quot;giCnt&quot;:9396,&quot;groupCode&quot;:10036},{&quot;subCode&quot;:1000287,&quot;subName&quot;:&quot;아웃바운드상담원&quot;,&quot;giCnt&quot;:4586,&quot;groupCode&quot;:10036},{&quot;subCode&quot;:1000288,&quot;subName&quot;:&quot;고객센터관리자&quot;,&quot;giCnt&quot;:1418,&quot;groupCode&quot;:10036}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10036" name="duty" value="10036"/>
                                                                <label class="lb_tag" for="duty_step1_10036">
                                                                    <span class="radiWrap">
                                                                        <span>고객상담·TM</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10037,&quot;groupName&quot;:&quot;금융·보험&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000289,&quot;subName&quot;:&quot;금융사무&quot;,&quot;giCnt&quot;:810,&quot;groupCode&quot;:10037},{&quot;subCode&quot;:1000290,&quot;subName&quot;:&quot;보험설계사&quot;,&quot;giCnt&quot;:878,&quot;groupCode&quot;:10037},{&quot;subCode&quot;:1000291,&quot;subName&quot;:&quot;손해사정사&quot;,&quot;giCnt&quot;:294,&quot;groupCode&quot;:10037},{&quot;subCode&quot;:1000292,&quot;subName&quot;:&quot;심사&quot;,&quot;giCnt&quot;:655,&quot;groupCode&quot;:10037},{&quot;subCode&quot;:1000293,&quot;subName&quot;:&quot;은행원·텔러&quot;,&quot;giCnt&quot;:152,&quot;groupCode&quot;:10037},{&quot;subCode&quot;:1000294,&quot;subName&quot;:&quot;계리사&quot;,&quot;giCnt&quot;:76,&quot;groupCode&quot;:10037},{&quot;subCode&quot;:1000295,&quot;subName&quot;:&quot;펀드매니저&quot;,&quot;giCnt&quot;:111,&quot;groupCode&quot;:10037},{&quot;subCode&quot;:1000296,&quot;subName&quot;:&quot;애널리스트&quot;,&quot;giCnt&quot;:167,&quot;groupCode&quot;:10037}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10037" name="duty" value="10037"/>
                                                                <label class="lb_tag" for="duty_step1_10037">
                                                                    <span class="radiWrap">
                                                                        <span>금융·보험</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10038,&quot;groupName&quot;:&quot;식·음료&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000297,&quot;subName&quot;:&quot;요리사&quot;,&quot;giCnt&quot;:4282,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000298,&quot;subName&quot;:&quot;조리사&quot;,&quot;giCnt&quot;:4356,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000299,&quot;subName&quot;:&quot;제과제빵사&quot;,&quot;giCnt&quot;:2116,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000300,&quot;subName&quot;:&quot;바리스타&quot;,&quot;giCnt&quot;:2761,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000301,&quot;subName&quot;:&quot;셰프·주방장&quot;,&quot;giCnt&quot;:2317,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000302,&quot;subName&quot;:&quot;카페·레스토랑매니저&quot;,&quot;giCnt&quot;:3369,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000303,&quot;subName&quot;:&quot;홀서버&quot;,&quot;giCnt&quot;:3740,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000304,&quot;subName&quot;:&quot;주방보조&quot;,&quot;giCnt&quot;:2949,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000305,&quot;subName&quot;:&quot;소믈리에·바텐더&quot;,&quot;giCnt&quot;:441,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000306,&quot;subName&quot;:&quot;영양사&quot;,&quot;giCnt&quot;:319,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000307,&quot;subName&quot;:&quot;식품연구원&quot;,&quot;giCnt&quot;:402,&quot;groupCode&quot;:10038},{&quot;subCode&quot;:1000308,&quot;subName&quot;:&quot;푸드스타일리스트&quot;,&quot;giCnt&quot;:82,&quot;groupCode&quot;:10038}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10038" name="duty" value="10038"/>
                                                                <label class="lb_tag" for="duty_step1_10038">
                                                                    <span class="radiWrap">
                                                                        <span>식·음료</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10039,&quot;groupName&quot;:&quot;고객서비스·리테일&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000309,&quot;subName&quot;:&quot;설치·수리기사&quot;,&quot;giCnt&quot;:3411,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000310,&quot;subName&quot;:&quot;정비기사&quot;,&quot;giCnt&quot;:1642,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000311,&quot;subName&quot;:&quot;호텔종사자&quot;,&quot;giCnt&quot;:1873,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000312,&quot;subName&quot;:&quot;여행에이전트&quot;,&quot;giCnt&quot;:985,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000313,&quot;subName&quot;:&quot;매장관리자&quot;,&quot;giCnt&quot;:6586,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000314,&quot;subName&quot;:&quot;뷰티·미용사&quot;,&quot;giCnt&quot;:1755,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000315,&quot;subName&quot;:&quot;애견미용·훈련&quot;,&quot;giCnt&quot;:121,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000316,&quot;subName&quot;:&quot;안내데스크·리셉셔니스트&quot;,&quot;giCnt&quot;:1567,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000317,&quot;subName&quot;:&quot;경호·경비&quot;,&quot;giCnt&quot;:1519,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000318,&quot;subName&quot;:&quot;운영보조·매니저&quot;,&quot;giCnt&quot;:975,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000319,&quot;subName&quot;:&quot;이벤트·웨딩플래너&quot;,&quot;giCnt&quot;:463,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000320,&quot;subName&quot;:&quot;주차·주유원&quot;,&quot;giCnt&quot;:449,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000321,&quot;subName&quot;:&quot;스타일리스트&quot;,&quot;giCnt&quot;:424,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000322,&quot;subName&quot;:&quot;장례지도사&quot;,&quot;giCnt&quot;:35,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000323,&quot;subName&quot;:&quot;가사도우미&quot;,&quot;giCnt&quot;:299,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000324,&quot;subName&quot;:&quot;승무원&quot;,&quot;giCnt&quot;:343,&quot;groupCode&quot;:10039},{&quot;subCode&quot;:1000325,&quot;subName&quot;:&quot;플로리스트&quot;,&quot;giCnt&quot;:39,&quot;groupCode&quot;:10039}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10039" name="duty" value="10039"/>
                                                                <label class="lb_tag" for="duty_step1_10039">
                                                                    <span class="radiWrap">
                                                                        <span>고객서비스·리테일</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10040,&quot;groupName&quot;:&quot;엔지니어링·설계&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000326,&quot;subName&quot;:&quot;전기·전자엔지니어&quot;,&quot;giCnt&quot;:2989,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000327,&quot;subName&quot;:&quot;기계엔지니어&quot;,&quot;giCnt&quot;:3793,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000328,&quot;subName&quot;:&quot;설계엔지니어&quot;,&quot;giCnt&quot;:3973,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000329,&quot;subName&quot;:&quot;설비엔지니어&quot;,&quot;giCnt&quot;:657,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000330,&quot;subName&quot;:&quot;반도체엔지니어&quot;,&quot;giCnt&quot;:1537,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000331,&quot;subName&quot;:&quot;화학엔지니어&quot;,&quot;giCnt&quot;:979,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000332,&quot;subName&quot;:&quot;공정엔지니어&quot;,&quot;giCnt&quot;:906,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000333,&quot;subName&quot;:&quot;하드웨어엔지니어&quot;,&quot;giCnt&quot;:1222,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000334,&quot;subName&quot;:&quot;통신엔지니어&quot;,&quot;giCnt&quot;:710,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000335,&quot;subName&quot;:&quot;RF엔지니어&quot;,&quot;giCnt&quot;:177,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000336,&quot;subName&quot;:&quot;필드엔지니어&quot;,&quot;giCnt&quot;:758,&quot;groupCode&quot;:10040},{&quot;subCode&quot;:1000337,&quot;subName&quot;:&quot;R\u0026D·연구원&quot;,&quot;giCnt&quot;:3621,&quot;groupCode&quot;:10040}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10040" name="duty" value="10040"/>
                                                                <label class="lb_tag" for="duty_step1_10040">
                                                                    <span class="radiWrap">
                                                                        <span>엔지니어링·설계</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10041,&quot;groupName&quot;:&quot;제조·생산&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000338,&quot;subName&quot;:&quot;생산직종사자&quot;,&quot;giCnt&quot;:9019,&quot;groupCode&quot;:10041},{&quot;subCode&quot;:1000339,&quot;subName&quot;:&quot;생산·공정관리자&quot;,&quot;giCnt&quot;:6157,&quot;groupCode&quot;:10041},{&quot;subCode&quot;:1000340,&quot;subName&quot;:&quot;품질관리자&quot;,&quot;giCnt&quot;:4858,&quot;groupCode&quot;:10041},{&quot;subCode&quot;:1000341,&quot;subName&quot;:&quot;포장·가공담당자&quot;,&quot;giCnt&quot;:3080,&quot;groupCode&quot;:10041},{&quot;subCode&quot;:1000342,&quot;subName&quot;:&quot;공장관리자&quot;,&quot;giCnt&quot;:362,&quot;groupCode&quot;:10041},{&quot;subCode&quot;:1000343,&quot;subName&quot;:&quot;용접사&quot;,&quot;giCnt&quot;:547,&quot;groupCode&quot;:10041}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10041" name="duty" value="10041"/>
                                                                <label class="lb_tag" for="duty_step1_10041">
                                                                    <span class="radiWrap">
                                                                        <span>제조·생산</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10042,&quot;groupName&quot;:&quot;교육&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000344,&quot;subName&quot;:&quot;유치원·보육교사&quot;,&quot;giCnt&quot;:673,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000345,&quot;subName&quot;:&quot;학교·특수학교교사&quot;,&quot;giCnt&quot;:553,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000346,&quot;subName&quot;:&quot;대학교수·강사&quot;,&quot;giCnt&quot;:86,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000347,&quot;subName&quot;:&quot;학원강사&quot;,&quot;giCnt&quot;:2865,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000348,&quot;subName&quot;:&quot;외국어강사&quot;,&quot;giCnt&quot;:2022,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000349,&quot;subName&quot;:&quot;기술·전문강사&quot;,&quot;giCnt&quot;:1067,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000350,&quot;subName&quot;:&quot;학습지·방문교사&quot;,&quot;giCnt&quot;:641,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000351,&quot;subName&quot;:&quot;학원상담·운영&quot;,&quot;giCnt&quot;:1958,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000352,&quot;subName&quot;:&quot;교직원·조교&quot;,&quot;giCnt&quot;:321,&quot;groupCode&quot;:10042},{&quot;subCode&quot;:1000353,&quot;subName&quot;:&quot;교재개발·교수설계&quot;,&quot;giCnt&quot;:830,&quot;groupCode&quot;:10042}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10042" name="duty" value="10042"/>
                                                                <label class="lb_tag" for="duty_step1_10042">
                                                                    <span class="radiWrap">
                                                                        <span>교육</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10043,&quot;groupName&quot;:&quot;건축·시설&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000354,&quot;subName&quot;:&quot;건축가&quot;,&quot;giCnt&quot;:435,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000355,&quot;subName&quot;:&quot;건축기사&quot;,&quot;giCnt&quot;:1921,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000356,&quot;subName&quot;:&quot;시공기사&quot;,&quot;giCnt&quot;:2649,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000357,&quot;subName&quot;:&quot;전기기사&quot;,&quot;giCnt&quot;:2202,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000358,&quot;subName&quot;:&quot;토목기사&quot;,&quot;giCnt&quot;:1399,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000359,&quot;subName&quot;:&quot;시설관리자&quot;,&quot;giCnt&quot;:3252,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000360,&quot;subName&quot;:&quot;현장관리자&quot;,&quot;giCnt&quot;:2645,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000361,&quot;subName&quot;:&quot;안전관리자&quot;,&quot;giCnt&quot;:2760,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000362,&quot;subName&quot;:&quot;공무&quot;,&quot;giCnt&quot;:1804,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000363,&quot;subName&quot;:&quot;소방설비&quot;,&quot;giCnt&quot;:781,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000364,&quot;subName&quot;:&quot;현장보조&quot;,&quot;giCnt&quot;:514,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000365,&quot;subName&quot;:&quot;감리원&quot;,&quot;giCnt&quot;:457,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000366,&quot;subName&quot;:&quot;도시·조경설계&quot;,&quot;giCnt&quot;:529,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000367,&quot;subName&quot;:&quot;환경기사&quot;,&quot;giCnt&quot;:862,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000368,&quot;subName&quot;:&quot;비파괴검사원&quot;,&quot;giCnt&quot;:63,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000369,&quot;subName&quot;:&quot;공인중개사&quot;,&quot;giCnt&quot;:838,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000370,&quot;subName&quot;:&quot;감정평가사&quot;,&quot;giCnt&quot;:29,&quot;groupCode&quot;:10043},{&quot;subCode&quot;:1000371,&quot;subName&quot;:&quot;분양매니저&quot;,&quot;giCnt&quot;:801,&quot;groupCode&quot;:10043}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10043" name="duty" value="10043"/>
                                                                <label class="lb_tag" for="duty_step1_10043">
                                                                    <span class="radiWrap">
                                                                        <span>건축·시설</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10044,&quot;groupName&quot;:&quot;의료·바이오&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000372,&quot;subName&quot;:&quot;의사&quot;,&quot;giCnt&quot;:50,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000373,&quot;subName&quot;:&quot;한의사&quot;,&quot;giCnt&quot;:7,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000374,&quot;subName&quot;:&quot;간호사&quot;,&quot;giCnt&quot;:599,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000375,&quot;subName&quot;:&quot;간호조무사&quot;,&quot;giCnt&quot;:1947,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000376,&quot;subName&quot;:&quot;약사·한약사&quot;,&quot;giCnt&quot;:185,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000377,&quot;subName&quot;:&quot;의료기사&quot;,&quot;giCnt&quot;:476,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000378,&quot;subName&quot;:&quot;수의사&quot;,&quot;giCnt&quot;:15,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000379,&quot;subName&quot;:&quot;수의테크니션&quot;,&quot;giCnt&quot;:175,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000380,&quot;subName&quot;:&quot;병원코디네이터&quot;,&quot;giCnt&quot;:1404,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000381,&quot;subName&quot;:&quot;원무행정&quot;,&quot;giCnt&quot;:933,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000382,&quot;subName&quot;:&quot;기타의료종사자&quot;,&quot;giCnt&quot;:736,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000383,&quot;subName&quot;:&quot;의료·약무보조&quot;,&quot;giCnt&quot;:172,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000384,&quot;subName&quot;:&quot;바이오·제약연구원&quot;,&quot;giCnt&quot;:1527,&quot;groupCode&quot;:10044},{&quot;subCode&quot;:1000385,&quot;subName&quot;:&quot;임상연구원&quot;,&quot;giCnt&quot;:217,&quot;groupCode&quot;:10044}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10044" name="duty" value="10044"/>
                                                                <label class="lb_tag" for="duty_step1_10044">
                                                                    <span class="radiWrap">
                                                                        <span>의료·바이오</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10045,&quot;groupName&quot;:&quot;미디어·문화·스포츠&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000386,&quot;subName&quot;:&quot;PD·감독&quot;,&quot;giCnt&quot;:921,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000387,&quot;subName&quot;:&quot;포토그래퍼&quot;,&quot;giCnt&quot;:879,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000388,&quot;subName&quot;:&quot;영상편집자&quot;,&quot;giCnt&quot;:1387,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000389,&quot;subName&quot;:&quot;사운드엔지니어&quot;,&quot;giCnt&quot;:120,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000390,&quot;subName&quot;:&quot;스태프&quot;,&quot;giCnt&quot;:655,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000391,&quot;subName&quot;:&quot;출판·편집&quot;,&quot;giCnt&quot;:519,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000392,&quot;subName&quot;:&quot;배급·제작자&quot;,&quot;giCnt&quot;:399,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000393,&quot;subName&quot;:&quot;콘텐츠에디터&quot;,&quot;giCnt&quot;:334,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000394,&quot;subName&quot;:&quot;크리에이터&quot;,&quot;giCnt&quot;:198,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000395,&quot;subName&quot;:&quot;기자&quot;,&quot;giCnt&quot;:273,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000396,&quot;subName&quot;:&quot;작가&quot;,&quot;giCnt&quot;:298,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000397,&quot;subName&quot;:&quot;아나운서&quot;,&quot;giCnt&quot;:62,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000398,&quot;subName&quot;:&quot;리포터·성우&quot;,&quot;giCnt&quot;:36,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000399,&quot;subName&quot;:&quot;MC·쇼호스트&quot;,&quot;giCnt&quot;:71,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000400,&quot;subName&quot;:&quot;모델&quot;,&quot;giCnt&quot;:153,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000401,&quot;subName&quot;:&quot;연예인·매니저&quot;,&quot;giCnt&quot;:427,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000402,&quot;subName&quot;:&quot;인플루언서&quot;,&quot;giCnt&quot;:82,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000403,&quot;subName&quot;:&quot;통번역사&quot;,&quot;giCnt&quot;:917,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000404,&quot;subName&quot;:&quot;큐레이터&quot;,&quot;giCnt&quot;:61,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000405,&quot;subName&quot;:&quot;음반기획&quot;,&quot;giCnt&quot;:99,&quot;groupCode&quot;:10045},{&quot;subCode&quot;:1000406,&quot;subName&quot;:&quot;스포츠강사&quot;,&quot;giCnt&quot;:1209,&quot;groupCode&quot;:10045}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10045" name="duty" value="10045"/>
                                                                <label class="lb_tag" for="duty_step1_10045">
                                                                    <span class="radiWrap">
                                                                        <span>미디어·문화·스포츠</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:10046,&quot;groupName&quot;:&quot;공공·복지&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000407,&quot;subName&quot;:&quot;사회복지사&quot;,&quot;giCnt&quot;:414,&quot;groupCode&quot;:10046},{&quot;subCode&quot;:1000408,&quot;subName&quot;:&quot;요양보호사&quot;,&quot;giCnt&quot;:199,&quot;groupCode&quot;:10046},{&quot;subCode&quot;:1000409,&quot;subName&quot;:&quot;환경미화원&quot;,&quot;giCnt&quot;:607,&quot;groupCode&quot;:10046},{&quot;subCode&quot;:1000410,&quot;subName&quot;:&quot;보건관리자&quot;,&quot;giCnt&quot;:123,&quot;groupCode&quot;:10046},{&quot;subCode&quot;:1000411,&quot;subName&quot;:&quot;사서&quot;,&quot;giCnt&quot;:26,&quot;groupCode&quot;:10046},{&quot;subCode&quot;:1000412,&quot;subName&quot;:&quot;자원봉사자&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:10046},{&quot;subCode&quot;:1000413,&quot;subName&quot;:&quot;방역·방재기사&quot;,&quot;giCnt&quot;:144,&quot;groupCode&quot;:10046}]}">
                                                                <input type="checkbox" class="inp_chk" id="duty_step1_10046" name="duty" value="10046"/>
                                                                <label class="lb_tag" for="duty_step1_10046">
                                                                    <span class="radiWrap">
                                                                        <span>공공·복지</span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                    </ul>
                                                </div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                        <dl class="detail_sec barType">

                                            <dt class="blind">
                                                <p class="btn_tit ">2차메뉴</p>
                                            </dt>
                                            <dd class="nano has-scrollbar">
                                                <div class="nano-content dev-sub" tabindex="0" style={{right:'-17'}} data-category="duty">
                                                    {/* <!-- 중분류 항목 --> */}
                                                <ul id="duty_step2_10026_ly" data-value="10026" style={{display:'none'}}>
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="duty_step2_1000185" name="duty" value="1000185" data-name="경영·비즈니스기획" data-type=""/>
                            <label class="lb_tag" for="duty_step2_1000185">
                                <span class="radiWrap">
                                    <span>경영·비즈니스기획<em class="num">(5,196)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="duty_step2_1000186" name="duty" value="1000186" data-name="웹기획" data-type=""/>
                            <label class="lb_tag" for="duty_step2_1000186">
                                <span class="radiWrap">
                                    <span>웹기획<em class="num">(3,388)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="duty_step2_1000187" name="duty" value="1000187" data-name="마케팅기획" data-type=""/>
                            <label class="lb_tag" for="duty_step2_1000187">
                                <span class="radiWrap">
                                    <span>마케팅기획<em class="num">(4,035)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="duty_step2_1000188" name="duty" value="1000188" data-name="PL·PM·PO" data-type=""/>
                            <label class="lb_tag" for="duty_step2_1000188">
                                <span class="radiWrap">
                                    <span>PL·PM·PO<em class="num">(1,380)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="duty_step2_1000189" name="duty" value="1000189" data-name="컨설턴트" data-type=""/>
                            <label class="lb_tag" for="duty_step2_1000189">
                                <span class="radiWrap">
                                    <span>컨설턴트<em class="num">(953)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="duty_step2_1000190" name="duty" value="1000190" data-name="CEO·COO·CTO" data-type=""/>
                            <label class="lb_tag" for="duty_step2_1000190">
                                <span class="radiWrap">
                                    <span>CEO·COO·CTO<em class="num">(152)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    </ul></div>
                                                <div class="nano-pane" style={{display:"none"}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                        <dl class="detail_sec circleType">

                                            <dt class="blind">
                                                <p class="btn_tit blind">3차메뉴</p>
                                            </dt>
                                            <dd class="empty">← 직무를 선택해주세요</dd> 
     
                                            <dd class="nano has-scrollbar" style={{display:'none'}}>
                                                <div class="nano-content dev-keyword" tabindex="0" style={{right:'-17'}} data-category="duty">
  
                                                </div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="loc circleType dev-tab dev-local" data-category="local">

                                <dt>
                                    <p class="btn_tit">
                                        근무지역
                                        <span class="ico arrow">펴기</span>
                                    </p>
                                </dt>
                                <dd class="nano has-scrollbar">
                                    <div class="nano-content dev-main" tabindex="0"  style={{right:'-17'}}>
                                        <ul class="local clear" data-category="local">

                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_I000" name="local" value="I000" data-name="서울특별시"/>
                                                    <label class="lb_tag" for="local_I000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>서울특별시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_B000" name="local" value="B000" data-name="경기도"/>
                                                    <label class="lb_tag" for="local_B000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>경기도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_K000" name="local" value="K000" data-name="인천광역시"/>
                                                    <label class="lb_tag" for="local_K000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>인천광역시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_G000" name="local" value="G000" data-name="대전광역시"/>
                                                    <label class="lb_tag" for="local_G000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>대전광역시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_1000" name="local" value="1000" data-name="세종특별자치시"/>
                                                    <label class="lb_tag" for="local_1000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>세종특별자치시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_O000" name="local" value="O000" data-name="충청남도"/>
                                                    <label class="lb_tag" for="local_O000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>충청남도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_P000" name="local" value="P000" data-name="충청북도"/>
                                                    <label class="lb_tag" for="local_P000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>충청북도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_E000" name="local" value="E000" data-name="광주광역시"/>
                                                    <label class="lb_tag" for="local_E000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>광주광역시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_L000" name="local" value="L000" data-name="전라남도"/>
                                                    <label class="lb_tag" for="local_L000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>전라남도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_M000" name="local" value="M000" data-name="전라북도"/>
                                                    <label class="lb_tag" for="local_M000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>전라북도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_F000" name="local" value="F000" data-name="대구광역시"/>
                                                    <label class="lb_tag" for="local_F000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>대구광역시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_D000" name="local" value="D000" data-name="경상북도"/>
                                                    <label class="lb_tag" for="local_D000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>경상북도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_H000" name="local" value="H000" data-name="부산광역시"/>
                                                    <label class="lb_tag" for="local_H000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>부산광역시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_J000" name="local" value="J000" data-name="울산광역시"/>
                                                    <label class="lb_tag" for="local_J000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>울산광역시</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_C000" name="local" value="C000" data-name="경상남도"/>
                                                    <label class="lb_tag" for="local_C000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>경상남도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_A000" name="local" value="A000" data-name="강원특별자치도"/>
                                                    <label class="lb_tag" for="local_A000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>강원특별자치도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_N000" name="local" value="N000" data-name="제주특별자치도"/>
                                                    <label class="lb_tag" for="local_N000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>제주특별자치도</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="local_Q000" name="local" value="Q000" data-name="전국"/>
                                                    <label class="lb_tag" for="local_Q000">
                                                        <span class="radiWrap">
                                                            
                                                            <span>전국</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                        </ul>
                                        {/* 여기까지 근무지 설정 */}
                                    </div>
                                    <div class="nano-pane" style={{display:'block'}}><div class="nano-slider" style={{height: 48, transform: 'translate(0, 0)'}}></div></div>
                                </dd>
                                <dd class="ly_sub">
                                    <div class="ly_sub_sch clear">
                                        {/* <!-- 검색영역 --> */}
                                        <div class="sch_box">
                                            <input type="search" id="lb_loc_sch" class="ty_sch lb_job_sch_inp" data-type="Local"/>
                                            <label for="lb_loc_sch" class="ty_lb lb_loc_sch_label dev-ph-label">지역명, 지하철역명 입력</label>
                                            <button type="button" class="btn_sch dev-search-ok">찾기</button>
                                            <div class="autoRecommand" style={{display:'none'}}>``
                                                {/* <!-- 추천 검색어 / on 클래스 추가하면 검색결과 없음 노출--> */}
                                                <dl class="chkType">
                                                    <dd class="nano has-scrollbar">
                                                        <div class="nano-content" tabindex="0"  style={{right:'-17'}}
>
                                                            <ul class="list">
                                                                
                                                            </ul>
                                                        </div>
                                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                                    </dd>
                                                    <div class="ar_confirm">
                                                        <button type="button" class="btn_cancel dev-searched-terms-close">취소</button>
                                                        <button type="button" class="btn_okay dev-searched-terms-ok">선택</button>
                                                    </div>
                                                </dl>
                                                <p class="emptyResult">검색 결과가 없습니다.</p>
                                            </div>
                                        </div>
                                        <dl class="recentWord clear" style={{display:'none'}}>
                                            <dt class="tit">최근검색</dt>
                                            <dd class="list">
                                                <ul class="clear"></ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="ly_sub_cnt colm2-ty2 clear">
                                        <dl class="detail_sec barType">
                                           
                                            <dt class="blind">
                                                <p class="btn_tit">1차메뉴</p>
                                            </dt>
                                            <dd class="nano has-scrollbar">
                                                <div class="nano-content dev-main" tabindex="0" style={{right:'-17'}}>
                                                    <ul class="clear" data-category="local">
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;I000&quot;,&quot;groupName&quot;:&quot;서울&quot;,&quot;groupOrder&quot;:1,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:89867,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I010&quot;,&quot;subName&quot;:&quot;강남구&quot;,&quot;giCnt&quot;:27106,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I020&quot;,&quot;subName&quot;:&quot;강동구&quot;,&quot;giCnt&quot;:4246,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I030&quot;,&quot;subName&quot;:&quot;강북구&quot;,&quot;giCnt&quot;:1725,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I040&quot;,&quot;subName&quot;:&quot;강서구&quot;,&quot;giCnt&quot;:6543,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I050&quot;,&quot;subName&quot;:&quot;관악구&quot;,&quot;giCnt&quot;:4989,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I060&quot;,&quot;subName&quot;:&quot;광진구&quot;,&quot;giCnt&quot;:4351,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I070&quot;,&quot;subName&quot;:&quot;구로구&quot;,&quot;giCnt&quot;:7040,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I080&quot;,&quot;subName&quot;:&quot;금천구&quot;,&quot;giCnt&quot;:7841,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I090&quot;,&quot;subName&quot;:&quot;노원구&quot;,&quot;giCnt&quot;:2376,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I100&quot;,&quot;subName&quot;:&quot;도봉구&quot;,&quot;giCnt&quot;:1433,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I110&quot;,&quot;subName&quot;:&quot;동대문구&quot;,&quot;giCnt&quot;:3915,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I120&quot;,&quot;subName&quot;:&quot;동작구&quot;,&quot;giCnt&quot;:4093,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I130&quot;,&quot;subName&quot;:&quot;마포구&quot;,&quot;giCnt&quot;:9159,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I140&quot;,&quot;subName&quot;:&quot;서대문구&quot;,&quot;giCnt&quot;:3892,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I150&quot;,&quot;subName&quot;:&quot;서초구&quot;,&quot;giCnt&quot;:12521,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I160&quot;,&quot;subName&quot;:&quot;성동구&quot;,&quot;giCnt&quot;:6814,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I170&quot;,&quot;subName&quot;:&quot;성북구&quot;,&quot;giCnt&quot;:2577,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I180&quot;,&quot;subName&quot;:&quot;송파구&quot;,&quot;giCnt&quot;:9534,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I190&quot;,&quot;subName&quot;:&quot;양천구&quot;,&quot;giCnt&quot;:3498,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I200&quot;,&quot;subName&quot;:&quot;영등포구&quot;,&quot;giCnt&quot;:10165,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I210&quot;,&quot;subName&quot;:&quot;용산구&quot;,&quot;giCnt&quot;:6224,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I220&quot;,&quot;subName&quot;:&quot;은평구&quot;,&quot;giCnt&quot;:2615,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I230&quot;,&quot;subName&quot;:&quot;종로구&quot;,&quot;giCnt&quot;:5873,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I240&quot;,&quot;subName&quot;:&quot;중구&quot;,&quot;giCnt&quot;:8705,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I250&quot;,&quot;subName&quot;:&quot;중랑구&quot;,&quot;giCnt&quot;:2286,&quot;groupCode&quot;:&quot;I000&quot;},{&quot;subCode&quot;:&quot;I000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:19854,&quot;groupCode&quot;:&quot;I000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_I000" name="local" value="I000"/>
                                                                <label class="lb_tag" for="local_step1_I000">
                                                                    <span class="radiWrap">
                                                                        <span>서울<em class="num">(89,867)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;B000&quot;,&quot;groupName&quot;:&quot;경기&quot;,&quot;groupOrder&quot;:2,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:57292,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B010&quot;,&quot;subName&quot;:&quot;가평군&quot;,&quot;giCnt&quot;:257,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B020&quot;,&quot;subName&quot;:&quot;고양시 덕양구&quot;,&quot;giCnt&quot;:2838,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B030&quot;,&quot;subName&quot;:&quot;고양시 일산동구&quot;,&quot;giCnt&quot;:3054,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B031&quot;,&quot;subName&quot;:&quot;고양시 일산서구&quot;,&quot;giCnt&quot;:2258,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B040&quot;,&quot;subName&quot;:&quot;과천시&quot;,&quot;giCnt&quot;:1144,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B050&quot;,&quot;subName&quot;:&quot;광명시&quot;,&quot;giCnt&quot;:2621,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B060&quot;,&quot;subName&quot;:&quot;광주시&quot;,&quot;giCnt&quot;:2193,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B070&quot;,&quot;subName&quot;:&quot;구리시&quot;,&quot;giCnt&quot;:1272,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B080&quot;,&quot;subName&quot;:&quot;군포시&quot;,&quot;giCnt&quot;:2163,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B090&quot;,&quot;subName&quot;:&quot;김포시&quot;,&quot;giCnt&quot;:3643,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B100&quot;,&quot;subName&quot;:&quot;남양주시&quot;,&quot;giCnt&quot;:2519,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B110&quot;,&quot;subName&quot;:&quot;동두천시&quot;,&quot;giCnt&quot;:401,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B125&quot;,&quot;subName&quot;:&quot;부천시&quot;,&quot;giCnt&quot;:4774,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B150&quot;,&quot;subName&quot;:&quot;성남시 분당구&quot;,&quot;giCnt&quot;:9294,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B160&quot;,&quot;subName&quot;:&quot;성남시 수정구&quot;,&quot;giCnt&quot;:3359,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B170&quot;,&quot;subName&quot;:&quot;성남시 중원구&quot;,&quot;giCnt&quot;:3073,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B180&quot;,&quot;subName&quot;:&quot;수원시 권선구&quot;,&quot;giCnt&quot;:3220,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B190&quot;,&quot;subName&quot;:&quot;수원시 장안구&quot;,&quot;giCnt&quot;:2526,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B200&quot;,&quot;subName&quot;:&quot;수원시 팔달구&quot;,&quot;giCnt&quot;:3074,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B201&quot;,&quot;subName&quot;:&quot;수원시 영통구&quot;,&quot;giCnt&quot;:3875,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B210&quot;,&quot;subName&quot;:&quot;시흥시&quot;,&quot;giCnt&quot;:3337,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B220&quot;,&quot;subName&quot;:&quot;안산시 단원구&quot;,&quot;giCnt&quot;:3211,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B221&quot;,&quot;subName&quot;:&quot;안산시 상록구&quot;,&quot;giCnt&quot;:2097,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B230&quot;,&quot;subName&quot;:&quot;안성시&quot;,&quot;giCnt&quot;:1573,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B240&quot;,&quot;subName&quot;:&quot;안양시 동안구&quot;,&quot;giCnt&quot;:3479,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B250&quot;,&quot;subName&quot;:&quot;안양시 만안구&quot;,&quot;giCnt&quot;:2327,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B260&quot;,&quot;subName&quot;:&quot;양주시&quot;,&quot;giCnt&quot;:1133,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B270&quot;,&quot;subName&quot;:&quot;양평군&quot;,&quot;giCnt&quot;:289,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B280&quot;,&quot;subName&quot;:&quot;여주시&quot;,&quot;giCnt&quot;:612,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B290&quot;,&quot;subName&quot;:&quot;연천군&quot;,&quot;giCnt&quot;:164,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B300&quot;,&quot;subName&quot;:&quot;오산시&quot;,&quot;giCnt&quot;:2196,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B310&quot;,&quot;subName&quot;:&quot;용인시 기흥구&quot;,&quot;giCnt&quot;:3396,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B311&quot;,&quot;subName&quot;:&quot;용인시 수지구&quot;,&quot;giCnt&quot;:2591,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B312&quot;,&quot;subName&quot;:&quot;용인시 처인구&quot;,&quot;giCnt&quot;:2664,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B320&quot;,&quot;subName&quot;:&quot;의왕시&quot;,&quot;giCnt&quot;:1432,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B330&quot;,&quot;subName&quot;:&quot;의정부시&quot;,&quot;giCnt&quot;:1489,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B340&quot;,&quot;subName&quot;:&quot;이천시&quot;,&quot;giCnt&quot;:1377,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B350&quot;,&quot;subName&quot;:&quot;파주시&quot;,&quot;giCnt&quot;:2572,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B360&quot;,&quot;subName&quot;:&quot;평택시&quot;,&quot;giCnt&quot;:3429,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B370&quot;,&quot;subName&quot;:&quot;포천시&quot;,&quot;giCnt&quot;:762,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B380&quot;,&quot;subName&quot;:&quot;하남시&quot;,&quot;giCnt&quot;:2694,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B390&quot;,&quot;subName&quot;:&quot;화성시&quot;,&quot;giCnt&quot;:5812,&quot;groupCode&quot;:&quot;B000&quot;},{&quot;subCode&quot;:&quot;B000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:10983,&quot;groupCode&quot;:&quot;B000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_B000" name="local" value="B000"/>
                                                                <label class="lb_tag" for="local_step1_B000">
                                                                    <span class="radiWrap">
                                                                        <span>경기<em class="num">(57,292)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;K000&quot;,&quot;groupName&quot;:&quot;인천&quot;,&quot;groupOrder&quot;:3,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:13750,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K010&quot;,&quot;subName&quot;:&quot;강화군&quot;,&quot;giCnt&quot;:428,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K020&quot;,&quot;subName&quot;:&quot;계양구&quot;,&quot;giCnt&quot;:2567,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K030&quot;,&quot;subName&quot;:&quot;미추홀구&quot;,&quot;giCnt&quot;:2243,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K040&quot;,&quot;subName&quot;:&quot;남동구&quot;,&quot;giCnt&quot;:3338,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K050&quot;,&quot;subName&quot;:&quot;동구&quot;,&quot;giCnt&quot;:1335,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K060&quot;,&quot;subName&quot;:&quot;부평구&quot;,&quot;giCnt&quot;:3809,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K070&quot;,&quot;subName&quot;:&quot;서구&quot;,&quot;giCnt&quot;:3669,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K080&quot;,&quot;subName&quot;:&quot;연수구&quot;,&quot;giCnt&quot;:2976,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K090&quot;,&quot;subName&quot;:&quot;옹진군&quot;,&quot;giCnt&quot;:296,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K100&quot;,&quot;subName&quot;:&quot;중구&quot;,&quot;giCnt&quot;:2283,&quot;groupCode&quot;:&quot;K000&quot;},{&quot;subCode&quot;:&quot;K000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:5844,&quot;groupCode&quot;:&quot;K000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_K000" name="local" value="K000"/>
                                                                <label class="lb_tag" for="local_step1_K000">
                                                                    <span class="radiWrap">
                                                                        <span>인천<em class="num">(13,750)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;G000&quot;,&quot;groupName&quot;:&quot;대전&quot;,&quot;groupOrder&quot;:4,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:4708,&quot;groupCode&quot;:&quot;G000&quot;},{&quot;subCode&quot;:&quot;G010&quot;,&quot;subName&quot;:&quot;대덕구&quot;,&quot;giCnt&quot;:1042,&quot;groupCode&quot;:&quot;G000&quot;},{&quot;subCode&quot;:&quot;G020&quot;,&quot;subName&quot;:&quot;동구&quot;,&quot;giCnt&quot;:949,&quot;groupCode&quot;:&quot;G000&quot;},{&quot;subCode&quot;:&quot;G030&quot;,&quot;subName&quot;:&quot;서구&quot;,&quot;giCnt&quot;:1674,&quot;groupCode&quot;:&quot;G000&quot;},{&quot;subCode&quot;:&quot;G040&quot;,&quot;subName&quot;:&quot;유성구&quot;,&quot;giCnt&quot;:2134,&quot;groupCode&quot;:&quot;G000&quot;},{&quot;subCode&quot;:&quot;G050&quot;,&quot;subName&quot;:&quot;중구&quot;,&quot;giCnt&quot;:1070,&quot;groupCode&quot;:&quot;G000&quot;},{&quot;subCode&quot;:&quot;G000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:2040,&quot;groupCode&quot;:&quot;G000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_G000" name="local" value="G000"/>
                                                                <label class="lb_tag" for="local_step1_G000">
                                                                    <span class="radiWrap">
                                                                        <span>대전<em class="num">(4,708)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;1000&quot;,&quot;groupName&quot;:&quot;세종&quot;,&quot;groupOrder&quot;:5,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:1412,&quot;groupCode&quot;:&quot;1000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_1000" name="local" value="1000"/>
                                                                <label class="lb_tag" for="local_step1_1000">
                                                                    <span class="radiWrap">
                                                                        <span>세종<em class="num">(1,412)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;O000&quot;,&quot;groupName&quot;:&quot;충남&quot;,&quot;groupOrder&quot;:6,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:5911,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O010&quot;,&quot;subName&quot;:&quot;공주시&quot;,&quot;giCnt&quot;:326,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O020&quot;,&quot;subName&quot;:&quot;금산군&quot;,&quot;giCnt&quot;:123,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O030&quot;,&quot;subName&quot;:&quot;논산시&quot;,&quot;giCnt&quot;:231,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O040&quot;,&quot;subName&quot;:&quot;당진시&quot;,&quot;giCnt&quot;:578,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O050&quot;,&quot;subName&quot;:&quot;보령시&quot;,&quot;giCnt&quot;:154,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O060&quot;,&quot;subName&quot;:&quot;부여군&quot;,&quot;giCnt&quot;:82,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O070&quot;,&quot;subName&quot;:&quot;서산시&quot;,&quot;giCnt&quot;:341,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O080&quot;,&quot;subName&quot;:&quot;서천군&quot;,&quot;giCnt&quot;:71,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O090&quot;,&quot;subName&quot;:&quot;아산시&quot;,&quot;giCnt&quot;:1770,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O110&quot;,&quot;subName&quot;:&quot;예산군&quot;,&quot;giCnt&quot;:282,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O120&quot;,&quot;subName&quot;:&quot;천안시 동남구&quot;,&quot;giCnt&quot;:1678,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O121&quot;,&quot;subName&quot;:&quot;천안시 서북구&quot;,&quot;giCnt&quot;:2306,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O130&quot;,&quot;subName&quot;:&quot;청양군&quot;,&quot;giCnt&quot;:53,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O140&quot;,&quot;subName&quot;:&quot;태안군&quot;,&quot;giCnt&quot;:134,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O150&quot;,&quot;subName&quot;:&quot;홍성군&quot;,&quot;giCnt&quot;:170,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O160&quot;,&quot;subName&quot;:&quot;계룡시&quot;,&quot;giCnt&quot;:135,&quot;groupCode&quot;:&quot;O000&quot;},{&quot;subCode&quot;:&quot;O000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:1427,&quot;groupCode&quot;:&quot;O000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_O000" name="local" value="O000"/>
                                                                <label class="lb_tag" for="local_step1_O000">
                                                                    <span class="radiWrap">
                                                                        <span>충남<em class="num">(5,911)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;P000&quot;,&quot;groupName&quot;:&quot;충북&quot;,&quot;groupOrder&quot;:7,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:4335,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P010&quot;,&quot;subName&quot;:&quot;괴산군&quot;,&quot;giCnt&quot;:97,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P020&quot;,&quot;subName&quot;:&quot;단양군&quot;,&quot;giCnt&quot;:51,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P030&quot;,&quot;subName&quot;:&quot;보은군&quot;,&quot;giCnt&quot;:71,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P040&quot;,&quot;subName&quot;:&quot;영동군&quot;,&quot;giCnt&quot;:66,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P050&quot;,&quot;subName&quot;:&quot;옥천군&quot;,&quot;giCnt&quot;:104,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P060&quot;,&quot;subName&quot;:&quot;음성군&quot;,&quot;giCnt&quot;:625,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P070&quot;,&quot;subName&quot;:&quot;제천시&quot;,&quot;giCnt&quot;:231,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P080&quot;,&quot;subName&quot;:&quot;진천군&quot;,&quot;giCnt&quot;:547,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P090&quot;,&quot;subName&quot;:&quot;청주시 청원구&quot;,&quot;giCnt&quot;:1126,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P100&quot;,&quot;subName&quot;:&quot;청주시 상당구&quot;,&quot;giCnt&quot;:865,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P101&quot;,&quot;subName&quot;:&quot;청주시 서원구&quot;,&quot;giCnt&quot;:973,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P110&quot;,&quot;subName&quot;:&quot;청주시 흥덕구&quot;,&quot;giCnt&quot;:1476,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P120&quot;,&quot;subName&quot;:&quot;충주시&quot;,&quot;giCnt&quot;:587,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P130&quot;,&quot;subName&quot;:&quot;증평군&quot;,&quot;giCnt&quot;:215,&quot;groupCode&quot;:&quot;P000&quot;},{&quot;subCode&quot;:&quot;P000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:1292,&quot;groupCode&quot;:&quot;P000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_P000" name="local" value="P000"/>
                                                                <label class="lb_tag" for="local_step1_P000">
                                                                    <span class="radiWrap">
                                                                        <span>충북<em class="num">(4,335)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;E000&quot;,&quot;groupName&quot;:&quot;광주&quot;,&quot;groupOrder&quot;:8,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:2971,&quot;groupCode&quot;:&quot;E000&quot;},{&quot;subCode&quot;:&quot;E010&quot;,&quot;subName&quot;:&quot;광산구&quot;,&quot;giCnt&quot;:1108,&quot;groupCode&quot;:&quot;E000&quot;},{&quot;subCode&quot;:&quot;E020&quot;,&quot;subName&quot;:&quot;남구&quot;,&quot;giCnt&quot;:685,&quot;groupCode&quot;:&quot;E000&quot;},{&quot;subCode&quot;:&quot;E030&quot;,&quot;subName&quot;:&quot;동구&quot;,&quot;giCnt&quot;:790,&quot;groupCode&quot;:&quot;E000&quot;},{&quot;subCode&quot;:&quot;E040&quot;,&quot;subName&quot;:&quot;북구&quot;,&quot;giCnt&quot;:973,&quot;groupCode&quot;:&quot;E000&quot;},{&quot;subCode&quot;:&quot;E050&quot;,&quot;subName&quot;:&quot;서구&quot;,&quot;giCnt&quot;:1167,&quot;groupCode&quot;:&quot;E000&quot;},{&quot;subCode&quot;:&quot;E000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:1127,&quot;groupCode&quot;:&quot;E000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_E000" name="local" value="E000"/>
                                                                <label class="lb_tag" for="local_step1_E000">
                                                                    <span class="radiWrap">
                                                                        <span>광주<em class="num">(2,971)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;L000&quot;,&quot;groupName&quot;:&quot;전남&quot;,&quot;groupOrder&quot;:9,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:1934,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L010&quot;,&quot;subName&quot;:&quot;강진군&quot;,&quot;giCnt&quot;:22,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L020&quot;,&quot;subName&quot;:&quot;고흥군&quot;,&quot;giCnt&quot;:36,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L030&quot;,&quot;subName&quot;:&quot;곡성군&quot;,&quot;giCnt&quot;:36,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L040&quot;,&quot;subName&quot;:&quot;광양시&quot;,&quot;giCnt&quot;:234,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L050&quot;,&quot;subName&quot;:&quot;구례군&quot;,&quot;giCnt&quot;:30,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L060&quot;,&quot;subName&quot;:&quot;나주시&quot;,&quot;giCnt&quot;:265,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L070&quot;,&quot;subName&quot;:&quot;담양군&quot;,&quot;giCnt&quot;:97,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L080&quot;,&quot;subName&quot;:&quot;목포시&quot;,&quot;giCnt&quot;:187,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L090&quot;,&quot;subName&quot;:&quot;무안군&quot;,&quot;giCnt&quot;:89,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L100&quot;,&quot;subName&quot;:&quot;보성군&quot;,&quot;giCnt&quot;:28,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L110&quot;,&quot;subName&quot;:&quot;순천시&quot;,&quot;giCnt&quot;:329,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L120&quot;,&quot;subName&quot;:&quot;신안군&quot;,&quot;giCnt&quot;:31,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L130&quot;,&quot;subName&quot;:&quot;여수시&quot;,&quot;giCnt&quot;:420,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L140&quot;,&quot;subName&quot;:&quot;영광군&quot;,&quot;giCnt&quot;:45,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L150&quot;,&quot;subName&quot;:&quot;영암군&quot;,&quot;giCnt&quot;:110,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L160&quot;,&quot;subName&quot;:&quot;완도군&quot;,&quot;giCnt&quot;:23,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L170&quot;,&quot;subName&quot;:&quot;장성군&quot;,&quot;giCnt&quot;:132,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L180&quot;,&quot;subName&quot;:&quot;장흥군&quot;,&quot;giCnt&quot;:31,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L190&quot;,&quot;subName&quot;:&quot;진도군&quot;,&quot;giCnt&quot;:10,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L200&quot;,&quot;subName&quot;:&quot;함평군&quot;,&quot;giCnt&quot;:57,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L210&quot;,&quot;subName&quot;:&quot;해남군&quot;,&quot;giCnt&quot;:45,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L220&quot;,&quot;subName&quot;:&quot;화순군&quot;,&quot;giCnt&quot;:113,&quot;groupCode&quot;:&quot;L000&quot;},{&quot;subCode&quot;:&quot;L000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:494,&quot;groupCode&quot;:&quot;L000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_L000" name="local" value="L000"/>
                                                                <label class="lb_tag" for="local_step1_L000">
                                                                    <span class="radiWrap">
                                                                        <span>전남<em class="num">(1,934)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;M000&quot;,&quot;groupName&quot;:&quot;전북&quot;,&quot;groupOrder&quot;:10,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:2158,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M010&quot;,&quot;subName&quot;:&quot;고창군&quot;,&quot;giCnt&quot;:53,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M020&quot;,&quot;subName&quot;:&quot;군산시&quot;,&quot;giCnt&quot;:475,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M030&quot;,&quot;subName&quot;:&quot;김제시&quot;,&quot;giCnt&quot;:202,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M040&quot;,&quot;subName&quot;:&quot;남원시&quot;,&quot;giCnt&quot;:86,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M050&quot;,&quot;subName&quot;:&quot;무주군&quot;,&quot;giCnt&quot;:27,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M060&quot;,&quot;subName&quot;:&quot;부안군&quot;,&quot;giCnt&quot;:70,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M070&quot;,&quot;subName&quot;:&quot;순창군&quot;,&quot;giCnt&quot;:58,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M080&quot;,&quot;subName&quot;:&quot;완주군&quot;,&quot;giCnt&quot;:282,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M090&quot;,&quot;subName&quot;:&quot;익산시&quot;,&quot;giCnt&quot;:499,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M100&quot;,&quot;subName&quot;:&quot;임실군&quot;,&quot;giCnt&quot;:62,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M110&quot;,&quot;subName&quot;:&quot;장수군&quot;,&quot;giCnt&quot;:35,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M120&quot;,&quot;subName&quot;:&quot;전주시 덕진구&quot;,&quot;giCnt&quot;:657,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M130&quot;,&quot;subName&quot;:&quot;전주시 완산구&quot;,&quot;giCnt&quot;:672,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M140&quot;,&quot;subName&quot;:&quot;정읍시&quot;,&quot;giCnt&quot;:124,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M150&quot;,&quot;subName&quot;:&quot;진안군&quot;,&quot;giCnt&quot;:48,&quot;groupCode&quot;:&quot;M000&quot;},{&quot;subCode&quot;:&quot;M000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:672,&quot;groupCode&quot;:&quot;M000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_M000" name="local" value="M000"/>
                                                                <label class="lb_tag" for="local_step1_M000">
                                                                    <span class="radiWrap">
                                                                        <span>전북<em class="num">(2,158)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;F000&quot;,&quot;groupName&quot;:&quot;대구&quot;,&quot;groupOrder&quot;:11,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:3739,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F010&quot;,&quot;subName&quot;:&quot;남구&quot;,&quot;giCnt&quot;:831,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F020&quot;,&quot;subName&quot;:&quot;달서구&quot;,&quot;giCnt&quot;:1144,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F030&quot;,&quot;subName&quot;:&quot;달성군&quot;,&quot;giCnt&quot;:900,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F040&quot;,&quot;subName&quot;:&quot;동구&quot;,&quot;giCnt&quot;:1065,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F050&quot;,&quot;subName&quot;:&quot;북구&quot;,&quot;giCnt&quot;:1046,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F060&quot;,&quot;subName&quot;:&quot;서구&quot;,&quot;giCnt&quot;:872,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F070&quot;,&quot;subName&quot;:&quot;수성구&quot;,&quot;giCnt&quot;:1117,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F080&quot;,&quot;subName&quot;:&quot;중구&quot;,&quot;giCnt&quot;:1071,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F090&quot;,&quot;subName&quot;:&quot;군위군&quot;,&quot;giCnt&quot;:21,&quot;groupCode&quot;:&quot;F000&quot;},{&quot;subCode&quot;:&quot;F000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:1725,&quot;groupCode&quot;:&quot;F000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_F000" name="local" value="F000"/>
                                                                <label class="lb_tag" for="local_step1_F000">
                                                                    <span class="radiWrap">
                                                                        <span>대구<em class="num">(3,739)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;D000&quot;,&quot;groupName&quot;:&quot;경북&quot;,&quot;groupOrder&quot;:12,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:3020,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D010&quot;,&quot;subName&quot;:&quot;경산시&quot;,&quot;giCnt&quot;:547,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D020&quot;,&quot;subName&quot;:&quot;경주시&quot;,&quot;giCnt&quot;:413,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D030&quot;,&quot;subName&quot;:&quot;고령군&quot;,&quot;giCnt&quot;:75,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D040&quot;,&quot;subName&quot;:&quot;구미시&quot;,&quot;giCnt&quot;:696,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D050&quot;,&quot;subName&quot;:&quot;군위군&quot;,&quot;giCnt&quot;:51,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D060&quot;,&quot;subName&quot;:&quot;김천시&quot;,&quot;giCnt&quot;:229,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D070&quot;,&quot;subName&quot;:&quot;문경시&quot;,&quot;giCnt&quot;:69,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D080&quot;,&quot;subName&quot;:&quot;봉화군&quot;,&quot;giCnt&quot;:13,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D090&quot;,&quot;subName&quot;:&quot;상주시&quot;,&quot;giCnt&quot;:82,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D100&quot;,&quot;subName&quot;:&quot;성주군&quot;,&quot;giCnt&quot;:81,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D110&quot;,&quot;subName&quot;:&quot;안동시&quot;,&quot;giCnt&quot;:123,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D120&quot;,&quot;subName&quot;:&quot;영덕군&quot;,&quot;giCnt&quot;:26,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D130&quot;,&quot;subName&quot;:&quot;영양군&quot;,&quot;giCnt&quot;:10,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D140&quot;,&quot;subName&quot;:&quot;영주시&quot;,&quot;giCnt&quot;:77,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D150&quot;,&quot;subName&quot;:&quot;영천시&quot;,&quot;giCnt&quot;:181,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D160&quot;,&quot;subName&quot;:&quot;예천군&quot;,&quot;giCnt&quot;:37,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D170&quot;,&quot;subName&quot;:&quot;울릉군&quot;,&quot;giCnt&quot;:9,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D180&quot;,&quot;subName&quot;:&quot;울진군&quot;,&quot;giCnt&quot;:24,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D190&quot;,&quot;subName&quot;:&quot;의성군&quot;,&quot;giCnt&quot;:43,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D200&quot;,&quot;subName&quot;:&quot;청도군&quot;,&quot;giCnt&quot;:45,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D210&quot;,&quot;subName&quot;:&quot;청송군&quot;,&quot;giCnt&quot;:21,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D220&quot;,&quot;subName&quot;:&quot;칠곡군&quot;,&quot;giCnt&quot;:293,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D230&quot;,&quot;subName&quot;:&quot;포항시 남구&quot;,&quot;giCnt&quot;:335,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D240&quot;,&quot;subName&quot;:&quot;포항시 북구&quot;,&quot;giCnt&quot;:299,&quot;groupCode&quot;:&quot;D000&quot;},{&quot;subCode&quot;:&quot;D000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:833,&quot;groupCode&quot;:&quot;D000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_D000" name="local" value="D000"/>
                                                                <label class="lb_tag" for="local_step1_D000">
                                                                    <span class="radiWrap">
                                                                        <span>경북<em class="num">(3,020)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;H000&quot;,&quot;groupName&quot;:&quot;부산&quot;,&quot;groupOrder&quot;:13,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:6693,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H010&quot;,&quot;subName&quot;:&quot;강서구&quot;,&quot;giCnt&quot;:1193,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H020&quot;,&quot;subName&quot;:&quot;금정구&quot;,&quot;giCnt&quot;:1206,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H030&quot;,&quot;subName&quot;:&quot;기장군&quot;,&quot;giCnt&quot;:741,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H040&quot;,&quot;subName&quot;:&quot;남구&quot;,&quot;giCnt&quot;:1211,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H050&quot;,&quot;subName&quot;:&quot;동구&quot;,&quot;giCnt&quot;:1168,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H060&quot;,&quot;subName&quot;:&quot;동래구&quot;,&quot;giCnt&quot;:1360,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H070&quot;,&quot;subName&quot;:&quot;부산진구&quot;,&quot;giCnt&quot;:1904,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H080&quot;,&quot;subName&quot;:&quot;북구&quot;,&quot;giCnt&quot;:1065,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H090&quot;,&quot;subName&quot;:&quot;사상구&quot;,&quot;giCnt&quot;:1372,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H100&quot;,&quot;subName&quot;:&quot;사하구&quot;,&quot;giCnt&quot;:1121,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H110&quot;,&quot;subName&quot;:&quot;서구&quot;,&quot;giCnt&quot;:989,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H120&quot;,&quot;subName&quot;:&quot;수영구&quot;,&quot;giCnt&quot;:1256,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H130&quot;,&quot;subName&quot;:&quot;연제구&quot;,&quot;giCnt&quot;:1351,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H140&quot;,&quot;subName&quot;:&quot;영도구&quot;,&quot;giCnt&quot;:518,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H150&quot;,&quot;subName&quot;:&quot;중구&quot;,&quot;giCnt&quot;:1038,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H160&quot;,&quot;subName&quot;:&quot;해운대구&quot;,&quot;giCnt&quot;:2072,&quot;groupCode&quot;:&quot;H000&quot;},{&quot;subCode&quot;:&quot;H000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:2983,&quot;groupCode&quot;:&quot;H000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_H000" name="local" value="H000"/>
                                                                <label class="lb_tag" for="local_step1_H000">
                                                                    <span class="radiWrap">
                                                                        <span>부산<em class="num">(6,693)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;J000&quot;,&quot;groupName&quot;:&quot;울산&quot;,&quot;groupOrder&quot;:14,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:1771,&quot;groupCode&quot;:&quot;J000&quot;},{&quot;subCode&quot;:&quot;J010&quot;,&quot;subName&quot;:&quot;남구&quot;,&quot;giCnt&quot;:599,&quot;groupCode&quot;:&quot;J000&quot;},{&quot;subCode&quot;:&quot;J020&quot;,&quot;subName&quot;:&quot;동구&quot;,&quot;giCnt&quot;:356,&quot;groupCode&quot;:&quot;J000&quot;},{&quot;subCode&quot;:&quot;J030&quot;,&quot;subName&quot;:&quot;북구&quot;,&quot;giCnt&quot;:388,&quot;groupCode&quot;:&quot;J000&quot;},{&quot;subCode&quot;:&quot;J040&quot;,&quot;subName&quot;:&quot;울주군&quot;,&quot;giCnt&quot;:574,&quot;groupCode&quot;:&quot;J000&quot;},{&quot;subCode&quot;:&quot;J050&quot;,&quot;subName&quot;:&quot;중구&quot;,&quot;giCnt&quot;:353,&quot;groupCode&quot;:&quot;J000&quot;},{&quot;subCode&quot;:&quot;J000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:821,&quot;groupCode&quot;:&quot;J000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_J000" name="local" value="J000"/>
                                                                <label class="lb_tag" for="local_step1_J000">
                                                                    <span class="radiWrap">
                                                                        <span>울산<em class="num">(1,771)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;C000&quot;,&quot;groupName&quot;:&quot;경남&quot;,&quot;groupOrder&quot;:15,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:3967,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C010&quot;,&quot;subName&quot;:&quot;거제시&quot;,&quot;giCnt&quot;:244,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C020&quot;,&quot;subName&quot;:&quot;거창군&quot;,&quot;giCnt&quot;:24,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C030&quot;,&quot;subName&quot;:&quot;고성군&quot;,&quot;giCnt&quot;:65,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C040&quot;,&quot;subName&quot;:&quot;김해시&quot;,&quot;giCnt&quot;:1023,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C050&quot;,&quot;subName&quot;:&quot;남해군&quot;,&quot;giCnt&quot;:39,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C080&quot;,&quot;subName&quot;:&quot;밀양시&quot;,&quot;giCnt&quot;:168,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C090&quot;,&quot;subName&quot;:&quot;사천시&quot;,&quot;giCnt&quot;:191,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C100&quot;,&quot;subName&quot;:&quot;산청군&quot;,&quot;giCnt&quot;:24,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C110&quot;,&quot;subName&quot;:&quot;양산시&quot;,&quot;giCnt&quot;:712,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C120&quot;,&quot;subName&quot;:&quot;의령군&quot;,&quot;giCnt&quot;:41,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C130&quot;,&quot;subName&quot;:&quot;진주시&quot;,&quot;giCnt&quot;:342,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C150&quot;,&quot;subName&quot;:&quot;창녕군&quot;,&quot;giCnt&quot;:107,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C160&quot;,&quot;subName&quot;:&quot;창원시 마산합포구&quot;,&quot;giCnt&quot;:643,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C162&quot;,&quot;subName&quot;:&quot;창원시 마산회원구&quot;,&quot;giCnt&quot;:659,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C164&quot;,&quot;subName&quot;:&quot;창원시 성산구&quot;,&quot;giCnt&quot;:987,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C166&quot;,&quot;subName&quot;:&quot;창원시 의창구&quot;,&quot;giCnt&quot;:805,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C168&quot;,&quot;subName&quot;:&quot;창원시 진해구&quot;,&quot;giCnt&quot;:674,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C170&quot;,&quot;subName&quot;:&quot;통영시&quot;,&quot;giCnt&quot;:114,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C180&quot;,&quot;subName&quot;:&quot;하동군&quot;,&quot;giCnt&quot;:30,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C190&quot;,&quot;subName&quot;:&quot;함안군&quot;,&quot;giCnt&quot;:136,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C200&quot;,&quot;subName&quot;:&quot;함양군&quot;,&quot;giCnt&quot;:24,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C210&quot;,&quot;subName&quot;:&quot;합천군&quot;,&quot;giCnt&quot;:21,&quot;groupCode&quot;:&quot;C000&quot;},{&quot;subCode&quot;:&quot;C000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:1154,&quot;groupCode&quot;:&quot;C000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_C000" name="local" value="C000"/>
                                                                <label class="lb_tag" for="local_step1_C000">
                                                                    <span class="radiWrap">
                                                                        <span>경남<em class="num">(3,967)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;A000&quot;,&quot;groupName&quot;:&quot;강원&quot;,&quot;groupOrder&quot;:16,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:2348,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A010&quot;,&quot;subName&quot;:&quot;강릉시&quot;,&quot;giCnt&quot;:401,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A020&quot;,&quot;subName&quot;:&quot;고성군&quot;,&quot;giCnt&quot;:71,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A030&quot;,&quot;subName&quot;:&quot;동해시&quot;,&quot;giCnt&quot;:135,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A040&quot;,&quot;subName&quot;:&quot;삼척시&quot;,&quot;giCnt&quot;:96,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A050&quot;,&quot;subName&quot;:&quot;속초시&quot;,&quot;giCnt&quot;:219,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A060&quot;,&quot;subName&quot;:&quot;양구군&quot;,&quot;giCnt&quot;:29,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A070&quot;,&quot;subName&quot;:&quot;양양군&quot;,&quot;giCnt&quot;:133,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A080&quot;,&quot;subName&quot;:&quot;영월군&quot;,&quot;giCnt&quot;:64,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A090&quot;,&quot;subName&quot;:&quot;원주시&quot;,&quot;giCnt&quot;:934,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A100&quot;,&quot;subName&quot;:&quot;인제군&quot;,&quot;giCnt&quot;:45,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A110&quot;,&quot;subName&quot;:&quot;정선군&quot;,&quot;giCnt&quot;:57,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A120&quot;,&quot;subName&quot;:&quot;철원군&quot;,&quot;giCnt&quot;:31,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A130&quot;,&quot;subName&quot;:&quot;춘천시&quot;,&quot;giCnt&quot;:447,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A140&quot;,&quot;subName&quot;:&quot;태백시&quot;,&quot;giCnt&quot;:66,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A150&quot;,&quot;subName&quot;:&quot;평창군&quot;,&quot;giCnt&quot;:144,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A160&quot;,&quot;subName&quot;:&quot;홍천군&quot;,&quot;giCnt&quot;:178,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A170&quot;,&quot;subName&quot;:&quot;화천군&quot;,&quot;giCnt&quot;:33,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A180&quot;,&quot;subName&quot;:&quot;횡성군&quot;,&quot;giCnt&quot;:192,&quot;groupCode&quot;:&quot;A000&quot;},{&quot;subCode&quot;:&quot;A000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:523,&quot;groupCode&quot;:&quot;A000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_A000" name="local" value="A000"/>
                                                                <label class="lb_tag" for="local_step1_A000">
                                                                    <span class="radiWrap">
                                                                        <span>강원<em class="num">(2,348)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;N000&quot;,&quot;groupName&quot;:&quot;제주&quot;,&quot;groupOrder&quot;:17,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:1903,&quot;groupCode&quot;:&quot;N000&quot;},{&quot;subCode&quot;:&quot;N030&quot;,&quot;subName&quot;:&quot;서귀포시&quot;,&quot;giCnt&quot;:691,&quot;groupCode&quot;:&quot;N000&quot;},{&quot;subCode&quot;:&quot;N040&quot;,&quot;subName&quot;:&quot;제주시&quot;,&quot;giCnt&quot;:1351,&quot;groupCode&quot;:&quot;N000&quot;},{&quot;subCode&quot;:&quot;N000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:370,&quot;groupCode&quot;:&quot;N000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_N000" name="local" value="N000"/>
                                                                <label class="lb_tag" for="local_step1_N000">
                                                                    <span class="radiWrap">
                                                                        <span>제주<em class="num">(1,903)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;Q000&quot;,&quot;groupName&quot;:&quot;전국&quot;,&quot;groupOrder&quot;:18,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:1045,&quot;groupCode&quot;:&quot;Q000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_Q000" name="local" value="Q000"/>
                                                                <label class="lb_tag" for="local_step1_Q000">
                                                                    <span class="radiWrap">
                                                                        <span>전국<em class="num">(1,045)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                                <li class="item hyphen"></li>
                                                                <li class="item hyphen"></li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;R000&quot;,&quot;groupName&quot;:&quot;아시아·중동&quot;,&quot;groupOrder&quot;:22,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:601,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R010&quot;,&quot;subName&quot;:&quot;대만&quot;,&quot;giCnt&quot;:6,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R020&quot;,&quot;subName&quot;:&quot;말레이시아&quot;,&quot;giCnt&quot;:48,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R030&quot;,&quot;subName&quot;:&quot;몽골&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R040&quot;,&quot;subName&quot;:&quot;미얀마&quot;,&quot;giCnt&quot;:9,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R050&quot;,&quot;subName&quot;:&quot;방글라데시&quot;,&quot;giCnt&quot;:10,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R060&quot;,&quot;subName&quot;:&quot;베트남&quot;,&quot;giCnt&quot;:226,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R070&quot;,&quot;subName&quot;:&quot;사우디아라비아&quot;,&quot;giCnt&quot;:39,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R080&quot;,&quot;subName&quot;:&quot;스리랑카&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R090&quot;,&quot;subName&quot;:&quot;싱가포르&quot;,&quot;giCnt&quot;:37,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R100&quot;,&quot;subName&quot;:&quot;인도&quot;,&quot;giCnt&quot;:42,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R110&quot;,&quot;subName&quot;:&quot;인도네시아&quot;,&quot;giCnt&quot;:104,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R120&quot;,&quot;subName&quot;:&quot;캄보디아&quot;,&quot;giCnt&quot;:9,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R130&quot;,&quot;subName&quot;:&quot;태국&quot;,&quot;giCnt&quot;:15,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R140&quot;,&quot;subName&quot;:&quot;필리핀&quot;,&quot;giCnt&quot;:48,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R160&quot;,&quot;subName&quot;:&quot;네팔&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R170&quot;,&quot;subName&quot;:&quot;동티모르&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R180&quot;,&quot;subName&quot;:&quot;라오스&quot;,&quot;giCnt&quot;:7,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R190&quot;,&quot;subName&quot;:&quot;레바논&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R200&quot;,&quot;subName&quot;:&quot;몰디브&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R210&quot;,&quot;subName&quot;:&quot;바레인&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R220&quot;,&quot;subName&quot;:&quot;부탄&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R230&quot;,&quot;subName&quot;:&quot;브루나이&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R240&quot;,&quot;subName&quot;:&quot;시리아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R250&quot;,&quot;subName&quot;:&quot;아랍에미리트연합국&quot;,&quot;giCnt&quot;:14,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R260&quot;,&quot;subName&quot;:&quot;아프가니스탄&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R270&quot;,&quot;subName&quot;:&quot;예멘&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R280&quot;,&quot;subName&quot;:&quot;오만&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R290&quot;,&quot;subName&quot;:&quot;요르단&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R300&quot;,&quot;subName&quot;:&quot;이라크&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R310&quot;,&quot;subName&quot;:&quot;이란&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R320&quot;,&quot;subName&quot;:&quot;이스라엘&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R330&quot;,&quot;subName&quot;:&quot;카타르&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R340&quot;,&quot;subName&quot;:&quot;쿠웨이트&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R350&quot;,&quot;subName&quot;:&quot;파키스탄&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R360&quot;,&quot;subName&quot;:&quot;조지아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R370&quot;,&quot;subName&quot;:&quot;우즈베키스탄&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R380&quot;,&quot;subName&quot;:&quot;카자흐스탄&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R390&quot;,&quot;subName&quot;:&quot;키르기즈스탄&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R400&quot;,&quot;subName&quot;:&quot;타지키스탄&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R410&quot;,&quot;subName&quot;:&quot;투르크메니스탄&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R150&quot;,&quot;subName&quot;:&quot;기타&quot;,&quot;giCnt&quot;:16,&quot;groupCode&quot;:&quot;R000&quot;},{&quot;subCode&quot;:&quot;R000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:37,&quot;groupCode&quot;:&quot;R000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_R000" name="local" value="R000"/>
                                                                <label class="lb_tag" for="local_step1_R000">
                                                                    <span class="radiWrap">
                                                                        <span>아시아·중동<em class="num">(601)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;X000&quot;,&quot;groupName&quot;:&quot;중국·홍콩&quot;,&quot;groupOrder&quot;:23,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:200,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X010&quot;,&quot;subName&quot;:&quot;북경&quot;,&quot;giCnt&quot;:8,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X020&quot;,&quot;subName&quot;:&quot;천진&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X030&quot;,&quot;subName&quot;:&quot;상해&quot;,&quot;giCnt&quot;:17,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X040&quot;,&quot;subName&quot;:&quot;중경&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X050&quot;,&quot;subName&quot;:&quot;홍콩&quot;,&quot;giCnt&quot;:17,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X060&quot;,&quot;subName&quot;:&quot;마카오&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X070&quot;,&quot;subName&quot;:&quot;감숙성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X080&quot;,&quot;subName&quot;:&quot;강서성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X090&quot;,&quot;subName&quot;:&quot;강소성&quot;,&quot;giCnt&quot;:14,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X100&quot;,&quot;subName&quot;:&quot;광동성&quot;,&quot;giCnt&quot;:29,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X110&quot;,&quot;subName&quot;:&quot;귀주성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X120&quot;,&quot;subName&quot;:&quot;길림성&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X130&quot;,&quot;subName&quot;:&quot;복건성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X140&quot;,&quot;subName&quot;:&quot;사천성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X150&quot;,&quot;subName&quot;:&quot;산동성&quot;,&quot;giCnt&quot;:20,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X160&quot;,&quot;subName&quot;:&quot;산서성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X170&quot;,&quot;subName&quot;:&quot;섬서성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X180&quot;,&quot;subName&quot;:&quot;안휘성&quot;,&quot;giCnt&quot;:17,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X190&quot;,&quot;subName&quot;:&quot;요녕성&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X200&quot;,&quot;subName&quot;:&quot;운남성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X210&quot;,&quot;subName&quot;:&quot;절강성&quot;,&quot;giCnt&quot;:10,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X220&quot;,&quot;subName&quot;:&quot;청해성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X230&quot;,&quot;subName&quot;:&quot;하남성&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X240&quot;,&quot;subName&quot;:&quot;하북성&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X250&quot;,&quot;subName&quot;:&quot;해남성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X260&quot;,&quot;subName&quot;:&quot;호남성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X270&quot;,&quot;subName&quot;:&quot;호북성&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X280&quot;,&quot;subName&quot;:&quot;흑룡강성&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X290&quot;,&quot;subName&quot;:&quot;기타&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;X000&quot;},{&quot;subCode&quot;:&quot;X000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:70,&quot;groupCode&quot;:&quot;X000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_X000" name="local" value="X000"/>
                                                                <label class="lb_tag" for="local_step1_X000">
                                                                    <span class="radiWrap">
                                                                        <span>중국·홍콩<em class="num">(200)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;Z000&quot;,&quot;groupName&quot;:&quot;일본&quot;,&quot;groupOrder&quot;:24,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:198,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z010&quot;,&quot;subName&quot;:&quot;도쿄&quot;,&quot;giCnt&quot;:95,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z020&quot;,&quot;subName&quot;:&quot;오사카&quot;,&quot;giCnt&quot;:20,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z030&quot;,&quot;subName&quot;:&quot;쿄토&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z040&quot;,&quot;subName&quot;:&quot;카가와&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z050&quot;,&quot;subName&quot;:&quot;카고시마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z060&quot;,&quot;subName&quot;:&quot;카나가와&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z070&quot;,&quot;subName&quot;:&quot;코치&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z080&quot;,&quot;subName&quot;:&quot;쿠마모토&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z090&quot;,&quot;subName&quot;:&quot;군마&quot;,&quot;giCnt&quot;:6,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z100&quot;,&quot;subName&quot;:&quot;기후&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z110&quot;,&quot;subName&quot;:&quot;나가노&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z120&quot;,&quot;subName&quot;:&quot;나가사키&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z130&quot;,&quot;subName&quot;:&quot;나라&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z140&quot;,&quot;subName&quot;:&quot;니가타&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z150&quot;,&quot;subName&quot;:&quot;토쿠시마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z160&quot;,&quot;subName&quot;:&quot;토야마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z170&quot;,&quot;subName&quot;:&quot;토치기&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z180&quot;,&quot;subName&quot;:&quot;톳토리&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z190&quot;,&quot;subName&quot;:&quot;미야기&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z200&quot;,&quot;subName&quot;:&quot;미야자키&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z210&quot;,&quot;subName&quot;:&quot;미에&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z220&quot;,&quot;subName&quot;:&quot;사가&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z230&quot;,&quot;subName&quot;:&quot;사이타마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z240&quot;,&quot;subName&quot;:&quot;시가&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z250&quot;,&quot;subName&quot;:&quot;시마네&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z260&quot;,&quot;subName&quot;:&quot;시즈오카&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z270&quot;,&quot;subName&quot;:&quot;아키타&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z280&quot;,&quot;subName&quot;:&quot;아오모리&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z290&quot;,&quot;subName&quot;:&quot;아이치&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z300&quot;,&quot;subName&quot;:&quot;야마가타&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z310&quot;,&quot;subName&quot;:&quot;야마구치&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z320&quot;,&quot;subName&quot;:&quot;야마나시&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z330&quot;,&quot;subName&quot;:&quot;에히메&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z340&quot;,&quot;subName&quot;:&quot;오카야마&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z350&quot;,&quot;subName&quot;:&quot;오키나와&quot;,&quot;giCnt&quot;:10,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z360&quot;,&quot;subName&quot;:&quot;오이타&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z370&quot;,&quot;subName&quot;:&quot;와카야마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z380&quot;,&quot;subName&quot;:&quot;이바라키&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z390&quot;,&quot;subName&quot;:&quot;이시카와&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z400&quot;,&quot;subName&quot;:&quot;이와테&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z410&quot;,&quot;subName&quot;:&quot;치바&quot;,&quot;giCnt&quot;:8,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z420&quot;,&quot;subName&quot;:&quot;홋카이도&quot;,&quot;giCnt&quot;:13,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z430&quot;,&quot;subName&quot;:&quot;효고&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z440&quot;,&quot;subName&quot;:&quot;후쿠시마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z450&quot;,&quot;subName&quot;:&quot;후쿠오카&quot;,&quot;giCnt&quot;:18,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z460&quot;,&quot;subName&quot;:&quot;후쿠이&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z470&quot;,&quot;subName&quot;:&quot;히로시마&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;Z000&quot;},{&quot;subCode&quot;:&quot;Z000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:63,&quot;groupCode&quot;:&quot;Z000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_Z000" name="local" value="Z000"/>
                                                                <label class="lb_tag" for="local_step1_Z000">
                                                                    <span class="radiWrap">
                                                                        <span>일본<em class="num">(198)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;Y000&quot;,&quot;groupName&quot;:&quot;미국&quot;,&quot;groupOrder&quot;:25,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:150,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y010&quot;,&quot;subName&quot;:&quot;보스턴&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y020&quot;,&quot;subName&quot;:&quot;필라델피아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y030&quot;,&quot;subName&quot;:&quot;뉴욕&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y040&quot;,&quot;subName&quot;:&quot;시카고&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y050&quot;,&quot;subName&quot;:&quot;로스앤젤레스&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y060&quot;,&quot;subName&quot;:&quot;워싱턴 D.C&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y070&quot;,&quot;subName&quot;:&quot;네바다주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y080&quot;,&quot;subName&quot;:&quot;네브라스카주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y090&quot;,&quot;subName&quot;:&quot;노스다코타주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y100&quot;,&quot;subName&quot;:&quot;노스케롤라이나주&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y110&quot;,&quot;subName&quot;:&quot;뉴멕시코주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y120&quot;,&quot;subName&quot;:&quot;뉴욕주&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y130&quot;,&quot;subName&quot;:&quot;뉴저지주&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y140&quot;,&quot;subName&quot;:&quot;뉴햄프셔주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y150&quot;,&quot;subName&quot;:&quot;델라웨어주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y160&quot;,&quot;subName&quot;:&quot;로드아일랜드주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y170&quot;,&quot;subName&quot;:&quot;루지애나주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y180&quot;,&quot;subName&quot;:&quot;메릴랜드주&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y190&quot;,&quot;subName&quot;:&quot;메사추세츠주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y200&quot;,&quot;subName&quot;:&quot;메인주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y210&quot;,&quot;subName&quot;:&quot;몬타나주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y220&quot;,&quot;subName&quot;:&quot;미네소타주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y230&quot;,&quot;subName&quot;:&quot;미시건주&quot;,&quot;giCnt&quot;:16,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y240&quot;,&quot;subName&quot;:&quot;미시시피주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y250&quot;,&quot;subName&quot;:&quot;미주리주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y260&quot;,&quot;subName&quot;:&quot;버먼트주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y270&quot;,&quot;subName&quot;:&quot;버지니아주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y280&quot;,&quot;subName&quot;:&quot;웨스트버지니아주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y290&quot;,&quot;subName&quot;:&quot;사우스다코타주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y300&quot;,&quot;subName&quot;:&quot;사우스캐롤라이나주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y310&quot;,&quot;subName&quot;:&quot;아이다호주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y320&quot;,&quot;subName&quot;:&quot;아이오와주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y330&quot;,&quot;subName&quot;:&quot;알래스카주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y340&quot;,&quot;subName&quot;:&quot;알칸사주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y350&quot;,&quot;subName&quot;:&quot;애리조나주&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y360&quot;,&quot;subName&quot;:&quot;앨라배마주&quot;,&quot;giCnt&quot;:17,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y370&quot;,&quot;subName&quot;:&quot;오레건주&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y380&quot;,&quot;subName&quot;:&quot;오클라호마주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y390&quot;,&quot;subName&quot;:&quot;오하이오주&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y400&quot;,&quot;subName&quot;:&quot;와이오밍주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y410&quot;,&quot;subName&quot;:&quot;워싱턴주&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y420&quot;,&quot;subName&quot;:&quot;위스콘신주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y430&quot;,&quot;subName&quot;:&quot;유타주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y440&quot;,&quot;subName&quot;:&quot;인디애나주&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y450&quot;,&quot;subName&quot;:&quot;일리노이주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y460&quot;,&quot;subName&quot;:&quot;조지아주&quot;,&quot;giCnt&quot;:26,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y470&quot;,&quot;subName&quot;:&quot;캔사스주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y480&quot;,&quot;subName&quot;:&quot;캘리포니아주&quot;,&quot;giCnt&quot;:18,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y490&quot;,&quot;subName&quot;:&quot;켄터키주&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y500&quot;,&quot;subName&quot;:&quot;코네티컷주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y510&quot;,&quot;subName&quot;:&quot;콜로라도주&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y520&quot;,&quot;subName&quot;:&quot;테네시주&quot;,&quot;giCnt&quot;:11,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y530&quot;,&quot;subName&quot;:&quot;텍사스주&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y540&quot;,&quot;subName&quot;:&quot;펜실베니아주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y550&quot;,&quot;subName&quot;:&quot;플로리다주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y560&quot;,&quot;subName&quot;:&quot;하와이주&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;Y000&quot;},{&quot;subCode&quot;:&quot;Y000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:51,&quot;groupCode&quot;:&quot;Y000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_Y000" name="local" value="Y000"/>
                                                                <label class="lb_tag" for="local_step1_Y000">
                                                                    <span class="radiWrap">
                                                                        <span>미국<em class="num">(150)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;S000&quot;,&quot;groupName&quot;:&quot;북아메리카&quot;,&quot;groupOrder&quot;:26,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:78,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S010&quot;,&quot;subName&quot;:&quot;멕시코&quot;,&quot;giCnt&quot;:38,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S020&quot;,&quot;subName&quot;:&quot;캐나다&quot;,&quot;giCnt&quot;:29,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S040&quot;,&quot;subName&quot;:&quot;그레나다&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S050&quot;,&quot;subName&quot;:&quot;그린란드&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S060&quot;,&quot;subName&quot;:&quot;도미니카공화국&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S070&quot;,&quot;subName&quot;:&quot;바베이도스&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S080&quot;,&quot;subName&quot;:&quot;바하마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S090&quot;,&quot;subName&quot;:&quot;세인트루시아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S100&quot;,&quot;subName&quot;:&quot;세인트빈센트그레나딘&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S110&quot;,&quot;subName&quot;:&quot;세인트키츠네비스&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S120&quot;,&quot;subName&quot;:&quot;코스타리카&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S130&quot;,&quot;subName&quot;:&quot;푸에르토리코&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S030&quot;,&quot;subName&quot;:&quot;기타&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;S000&quot;},{&quot;subCode&quot;:&quot;S000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:11,&quot;groupCode&quot;:&quot;S000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_S000" name="local" value="S000"/>
                                                                <label class="lb_tag" for="local_step1_S000">
                                                                    <span class="radiWrap">
                                                                        <span>북아메리카<em class="num">(78)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;T000&quot;,&quot;groupName&quot;:&quot;남아메리카&quot;,&quot;groupOrder&quot;:27,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:45,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T010&quot;,&quot;subName&quot;:&quot;과테말라&quot;,&quot;giCnt&quot;:25,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T020&quot;,&quot;subName&quot;:&quot;베네수엘라&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T030&quot;,&quot;subName&quot;:&quot;브라질&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T040&quot;,&quot;subName&quot;:&quot;아르헨티나&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T050&quot;,&quot;subName&quot;:&quot;에콰도르&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T060&quot;,&quot;subName&quot;:&quot;온두라스&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T070&quot;,&quot;subName&quot;:&quot;우루과이&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T080&quot;,&quot;subName&quot;:&quot;칠레&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T090&quot;,&quot;subName&quot;:&quot;콜롬비아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T100&quot;,&quot;subName&quot;:&quot;쿠바&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T110&quot;,&quot;subName&quot;:&quot;파나마&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T120&quot;,&quot;subName&quot;:&quot;페루&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T140&quot;,&quot;subName&quot;:&quot;가이아나&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T150&quot;,&quot;subName&quot;:&quot;니카라과&quot;,&quot;giCnt&quot;:11,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T160&quot;,&quot;subName&quot;:&quot;도미니카연방&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T170&quot;,&quot;subName&quot;:&quot;벨리즈&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T180&quot;,&quot;subName&quot;:&quot;볼리비아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T190&quot;,&quot;subName&quot;:&quot;수리남&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T200&quot;,&quot;subName&quot;:&quot;아이티&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T210&quot;,&quot;subName&quot;:&quot;앤티가바부다&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T220&quot;,&quot;subName&quot;:&quot;엘살바도르&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T230&quot;,&quot;subName&quot;:&quot;자메이카&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T240&quot;,&quot;subName&quot;:&quot;트리니다드토바고&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T250&quot;,&quot;subName&quot;:&quot;파라과이&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T130&quot;,&quot;subName&quot;:&quot;기타&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;T000&quot;},{&quot;subCode&quot;:&quot;T000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;T000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_T000" name="local" value="T000"/>
                                                                <label class="lb_tag" for="local_step1_T000">
                                                                    <span class="radiWrap">
                                                                        <span>남아메리카<em class="num">(45)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;U000&quot;,&quot;groupName&quot;:&quot;유럽&quot;,&quot;groupOrder&quot;:28,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:213,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U010&quot;,&quot;subName&quot;:&quot;그리스&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U020&quot;,&quot;subName&quot;:&quot;네덜란드&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U030&quot;,&quot;subName&quot;:&quot;노르웨이&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U040&quot;,&quot;subName&quot;:&quot;덴마크&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U050&quot;,&quot;subName&quot;:&quot;독일&quot;,&quot;giCnt&quot;:24,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U060&quot;,&quot;subName&quot;:&quot;러시아&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U070&quot;,&quot;subName&quot;:&quot;벨기에&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U080&quot;,&quot;subName&quot;:&quot;스웨덴&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U090&quot;,&quot;subName&quot;:&quot;스위스&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U100&quot;,&quot;subName&quot;:&quot;스페인&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U110&quot;,&quot;subName&quot;:&quot;영국&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U120&quot;,&quot;subName&quot;:&quot;이탈리아&quot;,&quot;giCnt&quot;:8,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U130&quot;,&quot;subName&quot;:&quot;체코&quot;,&quot;giCnt&quot;:9,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U140&quot;,&quot;subName&quot;:&quot;터키&quot;,&quot;giCnt&quot;:6,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U150&quot;,&quot;subName&quot;:&quot;포르투갈&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U160&quot;,&quot;subName&quot;:&quot;폴란드&quot;,&quot;giCnt&quot;:12,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U170&quot;,&quot;subName&quot;:&quot;프랑스&quot;,&quot;giCnt&quot;:8,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U180&quot;,&quot;subName&quot;:&quot;핀란드&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U190&quot;,&quot;subName&quot;:&quot;헝가리&quot;,&quot;giCnt&quot;:98,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U220&quot;,&quot;subName&quot;:&quot;라트비아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U230&quot;,&quot;subName&quot;:&quot;루마니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U240&quot;,&quot;subName&quot;:&quot;룩셈부르크&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U250&quot;,&quot;subName&quot;:&quot;리투아니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U260&quot;,&quot;subName&quot;:&quot;리히텐슈타인&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U270&quot;,&quot;subName&quot;:&quot;마케도니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U280&quot;,&quot;subName&quot;:&quot;모나코&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U290&quot;,&quot;subName&quot;:&quot;몰도바&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U300&quot;,&quot;subName&quot;:&quot;몰타&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U310&quot;,&quot;subName&quot;:&quot;바티칸시국&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U320&quot;,&quot;subName&quot;:&quot;벨라루스&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U330&quot;,&quot;subName&quot;:&quot;보스니아헤르체코비나&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U340&quot;,&quot;subName&quot;:&quot;불가리아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U350&quot;,&quot;subName&quot;:&quot;사이프러스&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U360&quot;,&quot;subName&quot;:&quot;산마리노&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U370&quot;,&quot;subName&quot;:&quot;세르비아몬테네그로&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U380&quot;,&quot;subName&quot;:&quot;슬로바키아&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U390&quot;,&quot;subName&quot;:&quot;슬로베니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U400&quot;,&quot;subName&quot;:&quot;아르메니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U410&quot;,&quot;subName&quot;:&quot;아이슬란드&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U420&quot;,&quot;subName&quot;:&quot;아일랜드&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U430&quot;,&quot;subName&quot;:&quot;아제르바이잔&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U440&quot;,&quot;subName&quot;:&quot;안도라&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U450&quot;,&quot;subName&quot;:&quot;알바니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U460&quot;,&quot;subName&quot;:&quot;에스토니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U470&quot;,&quot;subName&quot;:&quot;오스트리아&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U490&quot;,&quot;subName&quot;:&quot;우크라이나&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U510&quot;,&quot;subName&quot;:&quot;크로아티아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U200&quot;,&quot;subName&quot;:&quot;기타&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;U000&quot;},{&quot;subCode&quot;:&quot;U000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:35,&quot;groupCode&quot;:&quot;U000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_U000" name="local" value="U000"/>
                                                                <label class="lb_tag" for="local_step1_U000">
                                                                    <span class="radiWrap">
                                                                        <span>유럽<em class="num">(213)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;V000&quot;,&quot;groupName&quot;:&quot;오세아니아&quot;,&quot;groupOrder&quot;:29,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:45,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V010&quot;,&quot;subName&quot;:&quot;괌&quot;,&quot;giCnt&quot;:13,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V020&quot;,&quot;subName&quot;:&quot;뉴질랜드&quot;,&quot;giCnt&quot;:10,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V030&quot;,&quot;subName&quot;:&quot;파푸아뉴기니&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V040&quot;,&quot;subName&quot;:&quot;피지&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V050&quot;,&quot;subName&quot;:&quot;호주&quot;,&quot;giCnt&quot;:21,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V070&quot;,&quot;subName&quot;:&quot;나우루공화국&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V080&quot;,&quot;subName&quot;:&quot;마셜&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V090&quot;,&quot;subName&quot;:&quot;미크로네시아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V100&quot;,&quot;subName&quot;:&quot;바누아투&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V110&quot;,&quot;subName&quot;:&quot;사모아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V120&quot;,&quot;subName&quot;:&quot;솔로몬제도&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V130&quot;,&quot;subName&quot;:&quot;키리바시&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V140&quot;,&quot;subName&quot;:&quot;통가&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V150&quot;,&quot;subName&quot;:&quot;투발루&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V160&quot;,&quot;subName&quot;:&quot;팔라우&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V060&quot;,&quot;subName&quot;:&quot;기타&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;V000&quot;},{&quot;subCode&quot;:&quot;V000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:&quot;V000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_V000" name="local" value="V000"/>
                                                                <label class="lb_tag" for="local_step1_V000">
                                                                    <span class="radiWrap">
                                                                        <span>오세아니아<em class="num">(45)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                            <li class="item" data-value-json="{&quot;groupCode&quot;:&quot;W000&quot;,&quot;groupName&quot;:&quot;아프리카&quot;,&quot;groupOrder&quot;:30,&quot;subList&quot;:[{&quot;subCode&quot;:&quot;&quot;,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:40,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W010&quot;,&quot;subName&quot;:&quot;가나&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W020&quot;,&quot;subName&quot;:&quot;가봉&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W030&quot;,&quot;subName&quot;:&quot;나이지리아&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W040&quot;,&quot;subName&quot;:&quot;남아프리카공화국&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W050&quot;,&quot;subName&quot;:&quot;리비아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W060&quot;,&quot;subName&quot;:&quot;모로코&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W070&quot;,&quot;subName&quot;:&quot;수단&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W080&quot;,&quot;subName&quot;:&quot;알제리&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W090&quot;,&quot;subName&quot;:&quot;에티오피아&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W100&quot;,&quot;subName&quot;:&quot;우간다&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W110&quot;,&quot;subName&quot;:&quot;이집트&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W120&quot;,&quot;subName&quot;:&quot;케냐&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W130&quot;,&quot;subName&quot;:&quot;탄자니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W140&quot;,&quot;subName&quot;:&quot;튀니지&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W160&quot;,&quot;subName&quot;:&quot;감비아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W170&quot;,&quot;subName&quot;:&quot;기니&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W180&quot;,&quot;subName&quot;:&quot;기니비사우&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W190&quot;,&quot;subName&quot;:&quot;나미비아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W200&quot;,&quot;subName&quot;:&quot;니제르&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W210&quot;,&quot;subName&quot;:&quot;라이베리아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W220&quot;,&quot;subName&quot;:&quot;레소토&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W230&quot;,&quot;subName&quot;:&quot;르완다&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W240&quot;,&quot;subName&quot;:&quot;마다가스카르&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W250&quot;,&quot;subName&quot;:&quot;말라위&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W260&quot;,&quot;subName&quot;:&quot;말리&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W270&quot;,&quot;subName&quot;:&quot;모리셔스&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W280&quot;,&quot;subName&quot;:&quot;모리타니아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W290&quot;,&quot;subName&quot;:&quot;모잠비크&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W300&quot;,&quot;subName&quot;:&quot;베냉&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W310&quot;,&quot;subName&quot;:&quot;보츠와나&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W320&quot;,&quot;subName&quot;:&quot;부룬디&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W330&quot;,&quot;subName&quot;:&quot;부르키나파소&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W340&quot;,&quot;subName&quot;:&quot;상투메프린시페&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W350&quot;,&quot;subName&quot;:&quot;세네갈&quot;,&quot;giCnt&quot;:6,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W360&quot;,&quot;subName&quot;:&quot;세이셸&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W370&quot;,&quot;subName&quot;:&quot;소말리아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W380&quot;,&quot;subName&quot;:&quot;스와질란드&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W390&quot;,&quot;subName&quot;:&quot;시에라리온&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W400&quot;,&quot;subName&quot;:&quot;앙골라&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W410&quot;,&quot;subName&quot;:&quot;에리트레아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W420&quot;,&quot;subName&quot;:&quot;잠비아&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W430&quot;,&quot;subName&quot;:&quot;적도기니&quot;,&quot;giCnt&quot;:1,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W440&quot;,&quot;subName&quot;:&quot;중앙아프리카공화국&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W450&quot;,&quot;subName&quot;:&quot;지부티&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W460&quot;,&quot;subName&quot;:&quot;짐바브웨&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W470&quot;,&quot;subName&quot;:&quot;차드&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W480&quot;,&quot;subName&quot;:&quot;카메룬&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W490&quot;,&quot;subName&quot;:&quot;카보베르데&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W500&quot;,&quot;subName&quot;:&quot;코모로&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W510&quot;,&quot;subName&quot;:&quot;코트디부아르&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W520&quot;,&quot;subName&quot;:&quot;콩고&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W530&quot;,&quot;subName&quot;:&quot;콩고민주공화국&quot;,&quot;giCnt&quot;:6,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W540&quot;,&quot;subName&quot;:&quot;토고&quot;,&quot;giCnt&quot;:0,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W150&quot;,&quot;subName&quot;:&quot;기타&quot;,&quot;giCnt&quot;:5,&quot;groupCode&quot;:&quot;W000&quot;},{&quot;subCode&quot;:&quot;W000_&quot;,&quot;subName&quot;:&quot;전지역&quot;,&quot;giCnt&quot;:15,&quot;groupCode&quot;:&quot;W000&quot;}]}">
                                                                <input type="checkbox" class="inp_chk" id="local_step1_W000" name="local" value="W000"/>
                                                                <label class="lb_tag" for="local_step1_W000">
                                                                    <span class="radiWrap">
                                                                        <span>아프리카<em class="num">(40)</em></span>
                                                                        <i class="ico close-ty1 ir">닫기</i>
                                                                    </span>
                                                                </label>
                                                            </li>
                                                    </ul>
                                                </div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                        <dl class="detail_sec circleType">
                                          
                                            <dt class="blind">
                                                <p class="btn_tit blind">2차메뉴</p>
                                            </dt>
                                            <dd class="empty">← 지역을 선택해주세요</dd>
                                            <dd class="nano has-scrollbar" style={{display:'none'}}>
                                              
                                                <div class="nano-content dev-sub" tabindex="0" style={{right:'-17'}} data-category="local">
                                                </div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="exp circleType dev-tab dev-career">
                              
                                <dt>
                                    <p class="btn_tit">경력</p>
                                </dt>
                                <dd class="nano has-scrollbar">
                                    <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                        <ul class="expSel">
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career1" name="career" value="1" data-name="신입"/>
                                                    <label class="lb_tag" for="career1">
                                                        <span class="radiWrap">
                                                            <span>신입</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career2" name="career" value="2" data-name="1~3년"/>
                                                    <label class="lb_tag" for="career2">
                                                        <span class="radiWrap">
                                                            <span>1~3년</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career3" name="career" value="3" data-name="4~6년"/>
                                                    <label class="lb_tag" for="career3">
                                                        <span class="radiWrap">
                                                            <span>4~6년</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career4" name="career" value="4" data-name="7~9년"/>
                                                    <label class="lb_tag" for="career4">
                                                        <span class="radiWrap">
                                                            <span>7~9년</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career5" name="career" value="5" data-name="10~15년"/>
                                                    <label class="lb_tag" for="career5">
                                                        <span class="radiWrap">
                                                            <span>10~15년</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career6" name="career" value="6" data-name="16~20년"/>
                                                    <label class="lb_tag" for="career6">
                                                        <span class="radiWrap">
                                                            <span>16~20년</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career7" name="career" value="7" data-name="21년 이상"/>
                                                    <label class="lb_tag" for="career7">
                                                        <span class="radiWrap">
                                                            <span>21년 이상</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="career8" name="career" value="8" data-name="경력무관"/>
                                                    <label class="lb_tag" for="career8">
                                                        <span class="radiWrap">
                                                            <span>경력무관</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                        </ul>

                                        <ul class="expInp">
                                            <li class="item">
                                                <input type="text" id="inp_exp-min" name="career_text" maxlength="2"/>
                                                <label class="lb_tag" for="inp_exp-min">최소경력</label> ~
                                                <input type="text" id="inp_exp-max" name="career_text" maxlength="2"/>
                                                <label class="lb_tag" for="inp_exp-max">최대경력</label> 년
                                            </li>
                                        </ul>

                                        
                                    <div class="nano-pane" style={{display:'block'}}><div class="nano-slider" style={{height: '140', transform: 'translate(0, 0)'}}></div></div>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="edu circleType dev-tab dev-edu">
                               
                                <dt>
                                    <p class="btn_tit">학력</p>
                                </dt>
                                <dd class="nano has-scrollbar">
                                    <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                        <ul>
                                                    <li class="item">
                                                        <input type="checkbox" class="inp_chk" id="edu5" name="edu" value="5" data-name="대학교졸업(4년)"/>
                                                        <label class="lb_tag" for="edu5">
                                                            <span class="radiWrap">
                                                                <span>대학교졸업(4년)</span>
                                                                <i class="ico close-ty1 ir">닫기</i>
                                                            </span>
                                                        </label>
                                                    </li>
                                                    <li class="item">
                                                        <input type="checkbox" class="inp_chk" id="edu4" name="edu" value="4" data-name="대학졸업(2,3년)"/>
                                                        <label class="lb_tag" for="edu4">
                                                            <span class="radiWrap">
                                                                <span>대학졸업(2,3년)</span>
                                                                <i class="ico close-ty1 ir">닫기</i>
                                                            </span>
                                                        </label>
                                                    </li>
                                                    <li class="item">
                                                        <input type="checkbox" class="inp_chk" id="edu6" name="edu" value="6" data-name="대학원 석사졸업"/>
                                                        <label class="lb_tag" for="edu6">
                                                            <span class="radiWrap">
                                                                <span>대학원 석사졸업</span>
                                                                <i class="ico close-ty1 ir">닫기</i>
                                                            </span>
                                                        </label>
                                                    </li>
                                                    <li class="item">
                                                        <input type="checkbox" class="inp_chk" id="edu7" name="edu" value="7" data-name="대학원 박사졸업"/>
                                                        <label class="lb_tag" for="edu7">
                                                            <span class="radiWrap">
                                                                <span>대학원 박사졸업</span>
                                                                <i class="ico close-ty1 ir">닫기</i>
                                                            </span>
                                                        </label>
                                                    </li>
                                                    <li class="item">
                                                        <input type="checkbox" class="inp_chk" id="edu3" name="edu" value="3" data-name="고등학교졸업"/>
                                                        <label class="lb_tag" for="edu3">
                                                            <span class="radiWrap">
                                                                <span>고등학교졸업</span>
                                                                <i class="ico close-ty1 ir">닫기</i>
                                                            </span>
                                                        </label>
                                                    </li>
                                                    <li class="item">
                                                        <input type="checkbox" class="inp_chk" id="edu0" name="edu" value="0" data-name="학력무관"/>
                                                        <label class="lb_tag" for="edu0">
                                                            <span class="radiWrap">
                                                                <span>학력무관</span>
                                                                <i class="ico close-ty1 ir">닫기</i>
                                                            </span>
                                                        </label>
                                                    </li>``

                                        </ul>
                                    </div>
                                    <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 194, transform: 'translate(0, 0)'}}></div></div>
                                </dd>
                            </dl>
                            <dl class="cty circleType dev-tab dev-cotype">
                            
                                <dt>
                                    <p class="btn_tit">기업형태</p>
                                </dt>
                                <dd class="nano has-scrollbar">
                                    <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                        <ul class="unlisted">
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype1" name="cotype" value="1" data-name="대기업"/>
                                                    <label class="lb_tag" for="cotype1">
                                                        <span class="radiWrap">
                                                            <span>대기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype2" name="cotype" value="2" data-name="30대그룹사"/>
                                                    <label class="lb_tag" for="cotype2">
                                                        <span class="radiWrap">
                                                            <span>30대그룹사</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype3" name="cotype" value="3" data-name="매출1000대기업"/>
                                                    <label class="lb_tag" for="cotype3">
                                                        <span class="radiWrap">
                                                            <span>매출1000대기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype4" name="cotype" value="4" data-name="중견기업"/>
                                                    <label class="lb_tag" for="cotype4">
                                                        <span class="radiWrap">
                                                            <span>중견기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype5" name="cotype" value="5" data-name="강소기업"/>
                                                    <label class="lb_tag" for="cotype5">
                                                        <span class="radiWrap">
                                                            <span>강소기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype6" name="cotype" value="6" data-name="외국계기업"/>
                                                    <label class="lb_tag" for="cotype6">
                                                        <span class="radiWrap">
                                                            <span>외국계기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype15" name="cotype" value="15" data-name="중소기업"/>
                                                    <label class="lb_tag" for="cotype15">
                                                        <span class="radiWrap">
                                                            <span>중소기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype7" name="cotype" value="7" data-name="벤처기업"/>
                                                    <label class="lb_tag" for="cotype7">
                                                        <span class="radiWrap">
                                                            <span>벤처기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype8" name="cotype" value="8" data-name="공공기관·공기업"/>
                                                    <label class="lb_tag" for="cotype8">
                                                        <span class="radiWrap">
                                                            <span>공공기관·공기업</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype9" name="cotype" value="9" data-name="비영리단체·협회재단"/>
                                                    <label class="lb_tag" for="cotype9">
                                                        <span class="radiWrap">
                                                            <span>비영리단체·협회재단</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype10" name="cotype" value="10" data-name="외국기관·단체"/>
                                                    <label class="lb_tag" for="cotype10">
                                                        <span class="radiWrap">
                                                            <span>외국기관·단체</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype11" name="cotype" value="11" data-name="주권상장"/>
                                                    <label class="lb_tag" for="cotype11">
                                                        <span class="radiWrap">
                                                            <span>주권상장</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype12" name="cotype" value="12" data-name="코스닥상장"/>
                                                    <label class="lb_tag" for="cotype12">
                                                        <span class="radiWrap">
                                                            <span>코스닥상장</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype13" name="cotype" value="13" data-name="코넥스상장"/>
                                                    <label class="lb_tag" for="cotype13">
                                                        <span class="radiWrap">
                                                            <span>코넥스상장</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="cotype14" name="cotype" value="14" data-name="해외상장"/>
                                                    <label class="lb_tag" for="cotype14">
                                                        <span class="radiWrap">
                                                            <span>해외상장</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                        </ul>
                                        
                                    </div>
                                    <div class="nano-pane" style={{display:'block'}}><div class="nano-slider" style={{height: '87', transform:' translate(0, 0)'}}></div></div>
                                </dd>
                                <dd class="ly_tip" style={{display:'none'}}>
                                    <p class="tit"><strong>강소기업</strong></p>
                                    <p class="txt">강소기업은 고용노동부가<br />신용평가등급, 고용유지율, 사업재해율등의 조건을<br />고려해 선정한 작지만 강한 기업입니다.</p>
                                    <button type="button" class="btn_tipClose">닫기</button>
                                </dd>
                            </dl>


                            <dl class="hty circleType dev-tab dev-jobtype">
                               
                                <dt>
                                    <p class="btn_tit">고용형태</p>
                                </dt>
                                <dd class="nano has-scrollbar">
                                    <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                        <ul>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype1" name="jobtype" value="1" data-name="정규직"/>
                                                    <label class="lb_tag" for="jobtype1">
                                                        <span class="radiWrap">
                                                            <span>정규직</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype2" name="jobtype" value="2" data-name="계약직"/>
                                                    <label class="lb_tag" for="jobtype2">
                                                        <span class="radiWrap">
                                                            <span>계약직</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype3" name="jobtype" value="3" data-name="인턴"/>
                                                    <label class="lb_tag" for="jobtype3">
                                                        <span class="radiWrap">
                                                            <span>인턴</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype4" name="jobtype" value="4" data-name="파견직"/>
                                                    <label class="lb_tag" for="jobtype4">
                                                        <span class="radiWrap">
                                                            <span>파견직</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype5" name="jobtype" value="5" data-name="도급"/>
                                                    <label class="lb_tag" for="jobtype5">
                                                        <span class="radiWrap">
                                                            <span>도급</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype6" name="jobtype" value="6" data-name="프리랜서"/>
                                                    <label class="lb_tag" for="jobtype6">
                                                        <span class="radiWrap">
                                                            <span>프리랜서</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype7" name="jobtype" value="7" data-name="아르바이트"/>
                                                    <label class="lb_tag" for="jobtype7">
                                                        <span class="radiWrap">
                                                            <span>아르바이트</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype8" name="jobtype" value="8" data-name="연수생/교육생"/>
                                                    <label class="lb_tag" for="jobtype8">
                                                        <span class="radiWrap">
                                                            <span>연수생/교육생</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype9" name="jobtype" value="9" data-name="병역특례"/>
                                                    <label class="lb_tag" for="jobtype9">
                                                        <span class="radiWrap">
                                                            <span>병역특례</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                                <li class="item">
                                                    <input type="checkbox" class="inp_chk" id="jobtype10" name="jobtype" value="10" data-name="위촉직/개인사업자"/>
                                                    <label class="lb_tag" for="jobtype10">
                                                        <span class="radiWrap">
                                                            <span>위촉직/개인사업자</span>
                                                            <i class="ico close-ty1 ir">닫기</i>
                                                        </span>
                                                    </label>
                                                </li>
                                        </ul>
                                    </div>
                                    <div class="nano-pane" style={{display:'block'}}><div class="nano-slider" style={{height: '127', transform:'translate(0, 0)'}}></div></div>
                                </dd>
                            </dl>
                        </div>


                        <div class="detail-search subOption clear">
                            <dl class="ids dev-industry dev-tab" data-category="industry">
                               
                                <dt>
                                    <button type="button" class="btn_tit">산업<span class="ico arrow">펴기</span></button>
                                </dt>
                                <dd class="ly_area"></dd>
                                <dd class="ly_sub">
                                    {/* <!-- 산업 상세 레이어 --> */}
                                    <div class="ly_sub_sch clear">
                                        <div class="sch_box">
                                            <input type="search" id="lb_job_sch" class="ty_sch lb_job_sch_inp" data-type="Industry"/>
                                            <label for="lb_job_sch" class="ty_lb lb_job_sch_label dev-ph-label">산업, 키워드 입력</label>
                                            <button type="button" class="btn_sch dev-search-ok">찾기</button>
                                            <div class="autoRecommand" style={{display:'none'}}>
                                                {/* <!-- 추천 검색어 / on 클래스 추가하면 검색결과 없음 노출--> */}
                                                <dl class="chkType">
                                                    <dd class="nano has-scrollbar">
                                                        <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                                            <ul class="list">
                                                                {/* <!-- 검색결과 영역 --> */}
                                                            </ul>
                                                        </div>
                                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                                    </dd>
                                                    <div class="ar_confirm">
                                                        <button type="button" class="btn_cancel dev-searched-terms-close">취소</button>
                                                        <button type="button" class="btn_okay dev-searched-terms-ok">선택</button>
                                                    </div>
                                                </dl>
                                                <p class="emptyResult">검색 결과가 없습니다.</p>
                                            </div>
                                        </div>
                                        <dl class="recentWord clear" style={{display:'none'}}>
                                            <dt class="tit">최근검색</dt>
                                            <dd class="list">
                                                <ul class="clear"></ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="ly_sub_cnt colm3-ty1 clear">
                                        <dl class="detail_sec barType">
                                           
                                            <dt class="blind">
                                                <p class="btn_tit">1차메뉴</p>
                                            </dt>
                                            <dd class="nano has-scrollbar">
                                                <div class="nano-content dev-main" tabindex="0" style={{right:'-17'}}>
                                                    <ul data-category="industry">
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10001,&quot;groupName&quot;:&quot;서비스업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000001,&quot;subName&quot;:&quot;호텔·여행·항공&quot;,&quot;giCnt&quot;:3607,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000003,&quot;subName&quot;:&quot;음식료·외식·프랜차이즈&quot;,&quot;giCnt&quot;:13270,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000002,&quot;subName&quot;:&quot;스포츠·여가·레저&quot;,&quot;giCnt&quot;:2378,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000004,&quot;subName&quot;:&quot;뷰티·미용&quot;,&quot;giCnt&quot;:917,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000005,&quot;subName&quot;:&quot;콜센터·아웃소싱·기타&quot;,&quot;giCnt&quot;:5699,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000006,&quot;subName&quot;:&quot;정비·A/S·카센터&quot;,&quot;giCnt&quot;:1195,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000007,&quot;subName&quot;:&quot;렌탈·임대·리스&quot;,&quot;giCnt&quot;:1088,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000008,&quot;subName&quot;:&quot;서치펌·헤드헌팅&quot;,&quot;giCnt&quot;:2902,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000009,&quot;subName&quot;:&quot;시설관리·보안·경비&quot;,&quot;giCnt&quot;:3743,&quot;groupCode&quot;:10001},{&quot;subCode&quot;:1000010,&quot;subName&quot;:&quot;웨딩·상조·이벤트&quot;,&quot;giCnt&quot;:830,&quot;groupCode&quot;:10001}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10001" name="industry" value="10001" data-name="서비스업"/>
                                                                    <label class="lb_tag" for="industry_step1_10001">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>서비스업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10002,&quot;groupName&quot;:&quot;금융·은행업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000011,&quot;subName&quot;:&quot;은행·금융&quot;,&quot;giCnt&quot;:1112,&quot;groupCode&quot;:10002},{&quot;subCode&quot;:1000012,&quot;subName&quot;:&quot;캐피탈·대출&quot;,&quot;giCnt&quot;:779,&quot;groupCode&quot;:10002},{&quot;subCode&quot;:1000013,&quot;subName&quot;:&quot;증권·보험·카드&quot;,&quot;giCnt&quot;:2540,&quot;groupCode&quot;:10002}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10002" name="industry" value="10002" data-name="금융·은행업"/>
                                                                    <label class="lb_tag" for="industry_step1_10002">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>금융·은행업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10007,&quot;groupName&quot;:&quot;IT·정보통신업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000038,&quot;subName&quot;:&quot;솔루션·SI·CRM·ERP&quot;,&quot;giCnt&quot;:9079,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000039,&quot;subName&quot;:&quot;웹에이전시&quot;,&quot;giCnt&quot;:961,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000040,&quot;subName&quot;:&quot;쇼핑몰·오픈마켓·소셜커머스&quot;,&quot;giCnt&quot;:6910,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000041,&quot;subName&quot;:&quot;포털·컨텐츠·커뮤니티&quot;,&quot;giCnt&quot;:2200,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000042,&quot;subName&quot;:&quot;네트워크·통신서비스&quot;,&quot;giCnt&quot;:2264,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000043,&quot;subName&quot;:&quot;정보보안&quot;,&quot;giCnt&quot;:824,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000044,&quot;subName&quot;:&quot;컴퓨터·하드웨어·장비&quot;,&quot;giCnt&quot;:2031,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000045,&quot;subName&quot;:&quot;게임·애니메이션&quot;,&quot;giCnt&quot;:5436,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000046,&quot;subName&quot;:&quot;모바일·APP&quot;,&quot;giCnt&quot;:1364,&quot;groupCode&quot;:10007},{&quot;subCode&quot;:1000047,&quot;subName&quot;:&quot;IT컨설팅&quot;,&quot;giCnt&quot;:817,&quot;groupCode&quot;:10007}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10007" name="industry" value="10007" data-name="IT·정보통신업"/>
                                                                    <label class="lb_tag" for="industry_step1_10007">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>IT·정보통신업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10010,&quot;groupName&quot;:&quot;판매·유통업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000016,&quot;subName&quot;:&quot;백화점·유통·도소매&quot;,&quot;giCnt&quot;:7776,&quot;groupCode&quot;:10010},{&quot;subCode&quot;:1000015,&quot;subName&quot;:&quot;무역·상사&quot;,&quot;giCnt&quot;:2381,&quot;groupCode&quot;:10010},{&quot;subCode&quot;:1000014,&quot;subName&quot;:&quot;물류·운송·배송&quot;,&quot;giCnt&quot;:5455,&quot;groupCode&quot;:10010}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10010" name="industry" value="10010" data-name="판매·유통업"/>
                                                                    <label class="lb_tag" for="industry_step1_10010">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>판매·유통업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10009,&quot;groupName&quot;:&quot;제조·생산·화학업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000052,&quot;subName&quot;:&quot;전기·전자·제어&quot;,&quot;giCnt&quot;:6443,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000053,&quot;subName&quot;:&quot;반도체·디스플레이·광학&quot;,&quot;giCnt&quot;:3258,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000054,&quot;subName&quot;:&quot;기계·기계설비&quot;,&quot;giCnt&quot;:5363,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000055,&quot;subName&quot;:&quot;자동차·조선·철강·항공&quot;,&quot;giCnt&quot;:5235,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000056,&quot;subName&quot;:&quot;금속·재료·자재&quot;,&quot;giCnt&quot;:2736,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000057,&quot;subName&quot;:&quot;화학·에너지·환경&quot;,&quot;giCnt&quot;:3693,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000058,&quot;subName&quot;:&quot;섬유·의류·패션&quot;,&quot;giCnt&quot;:4207,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000059,&quot;subName&quot;:&quot;생활화학·화장품&quot;,&quot;giCnt&quot;:2720,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000060,&quot;subName&quot;:&quot;생활용품·소비재·기타&quot;,&quot;giCnt&quot;:1844,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000061,&quot;subName&quot;:&quot;목재·제지·가구&quot;,&quot;giCnt&quot;:860,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000062,&quot;subName&quot;:&quot;식품가공&quot;,&quot;giCnt&quot;:3413,&quot;groupCode&quot;:10009},{&quot;subCode&quot;:1000063,&quot;subName&quot;:&quot;농축산·어업·임업&quot;,&quot;giCnt&quot;:417,&quot;groupCode&quot;:10009}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10009" name="industry" value="10009" data-name="제조·생산·화학업"/>
                                                                    <label class="lb_tag" for="industry_step1_10009">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>제조·생산·화학업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10011,&quot;groupName&quot;:&quot;교육업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000021,&quot;subName&quot;:&quot;학교(초·중·고·대학·특수)&quot;,&quot;giCnt&quot;:686,&quot;groupCode&quot;:10011},{&quot;subCode&quot;:1000022,&quot;subName&quot;:&quot;유아·유치원·어린이집&quot;,&quot;giCnt&quot;:254,&quot;groupCode&quot;:10011},{&quot;subCode&quot;:1000023,&quot;subName&quot;:&quot;학원·어학원·교육원&quot;,&quot;giCnt&quot;:6511,&quot;groupCode&quot;:10011},{&quot;subCode&quot;:1000024,&quot;subName&quot;:&quot;학습지·방문교육&quot;,&quot;giCnt&quot;:747,&quot;groupCode&quot;:10011}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10011" name="industry" value="10011" data-name="교육업"/>
                                                                    <label class="lb_tag" for="industry_step1_10011">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>교육업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10003,&quot;groupName&quot;:&quot;건설업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000018,&quot;subName&quot;:&quot;건축·설비·환경&quot;,&quot;giCnt&quot;:3242,&quot;groupCode&quot;:10003},{&quot;subCode&quot;:1000019,&quot;subName&quot;:&quot;건설·시공·토목·조경&quot;,&quot;giCnt&quot;:4581,&quot;groupCode&quot;:10003},{&quot;subCode&quot;:1000020,&quot;subName&quot;:&quot;인테리어·자재&quot;,&quot;giCnt&quot;:2175,&quot;groupCode&quot;:10003},{&quot;subCode&quot;:1000017,&quot;subName&quot;:&quot;부동산·중개·임대&quot;,&quot;giCnt&quot;:2089,&quot;groupCode&quot;:10003}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10003" name="industry" value="10003" data-name="건설업"/>
                                                                    <label class="lb_tag" for="industry_step1_10003">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>건설업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10004,&quot;groupName&quot;:&quot;의료·제약업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000026,&quot;subName&quot;:&quot;의료(병원분류별)&quot;,&quot;giCnt&quot;:1867,&quot;groupCode&quot;:10004},{&quot;subCode&quot;:1000027,&quot;subName&quot;:&quot;의료(진료과별)&quot;,&quot;giCnt&quot;:2861,&quot;groupCode&quot;:10004},{&quot;subCode&quot;:1000025,&quot;subName&quot;:&quot;의료(간호·원무·상담)&quot;,&quot;giCnt&quot;:727,&quot;groupCode&quot;:10004},{&quot;subCode&quot;:1000028,&quot;subName&quot;:&quot;제약·보건·바이오&quot;,&quot;giCnt&quot;:5418,&quot;groupCode&quot;:10004},{&quot;subCode&quot;:1000029,&quot;subName&quot;:&quot;사회복지·요양&quot;,&quot;giCnt&quot;:536,&quot;groupCode&quot;:10004}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10004" name="industry" value="10004" data-name="의료·제약업"/>
                                                                    <label class="lb_tag" for="industry_step1_10004">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>의료·제약업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10005,&quot;groupName&quot;:&quot;미디어·광고업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000030,&quot;subName&quot;:&quot;방송·케이블·프로덕션&quot;,&quot;giCnt&quot;:1163,&quot;groupCode&quot;:10005},{&quot;subCode&quot;:1000031,&quot;subName&quot;:&quot;신문·잡지·언론사&quot;,&quot;giCnt&quot;:373,&quot;groupCode&quot;:10005},{&quot;subCode&quot;:1000032,&quot;subName&quot;:&quot;광고·홍보·전시&quot;,&quot;giCnt&quot;:4449,&quot;groupCode&quot;:10005},{&quot;subCode&quot;:1000033,&quot;subName&quot;:&quot;영화·음반·배급&quot;,&quot;giCnt&quot;:257,&quot;groupCode&quot;:10005},{&quot;subCode&quot;:1000034,&quot;subName&quot;:&quot;연예·엔터테인먼트&quot;,&quot;giCnt&quot;:1011,&quot;groupCode&quot;:10005},{&quot;subCode&quot;:1000035,&quot;subName&quot;:&quot;출판·인쇄·사진&quot;,&quot;giCnt&quot;:1494,&quot;groupCode&quot;:10005}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10005" name="industry" value="10005" data-name="미디어·광고업"/>
                                                                    <label class="lb_tag" for="industry_step1_10005">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>미디어·광고업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10006,&quot;groupName&quot;:&quot;문화·예술·디자인업&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000036,&quot;subName&quot;:&quot;문화·공연·예술&quot;,&quot;giCnt&quot;:502,&quot;groupCode&quot;:10006},{&quot;subCode&quot;:1000037,&quot;subName&quot;:&quot;디자인·CAD&quot;,&quot;giCnt&quot;:1272,&quot;groupCode&quot;:10006}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10006" name="industry" value="10006" data-name="문화·예술·디자인업"/>
                                                                    <label class="lb_tag" for="industry_step1_10006">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>문화·예술·디자인업</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:10008,&quot;groupName&quot;:&quot;기관·협회&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1000048,&quot;subName&quot;:&quot;공기업·공공기관&quot;,&quot;giCnt&quot;:571,&quot;groupCode&quot;:10008},{&quot;subCode&quot;:1000049,&quot;subName&quot;:&quot;협회·단체&quot;,&quot;giCnt&quot;:947,&quot;groupCode&quot;:10008},{&quot;subCode&quot;:1000050,&quot;subName&quot;:&quot;컨설팅·연구·조사&quot;,&quot;giCnt&quot;:1370,&quot;groupCode&quot;:10008},{&quot;subCode&quot;:1000051,&quot;subName&quot;:&quot;회계·세무·법무&quot;,&quot;giCnt&quot;:1930,&quot;groupCode&quot;:10008}]}">
                                                                    <input type="checkbox" class="inp_chk" id="industry_step1_10008" name="industry" value="10008" data-name="기관·협회"/>
                                                                    <label class="lb_tag" for="industry_step1_10008">
                                                                        {/* <!-- 이전에 선택한 값이 있는 항목 checked 클래스 추가 --> */}
                                                                        <span class="radiWrap">
                                                                            <span>기관·협회</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>

                                                    </ul>
                                                </div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                        <dl class="detail_sec barType">
                                           
                                            <dt class="blind">
                                                <p class="btn_tit ">2차메뉴</p>
                                            </dt>
                                            <dd class="nano has-scrollbar">
                                                <div class="nano-content dev-sub" tabindex="0" style={{right:'-17'}} data-category="industry">
                                                    {/* <!-- 중분류 항목 -->s */}
                                                <ul id="industry_step2_10001_ly" data-value="10001" style={{display:'none'}}>
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000001" name="industry" value="1000001" data-name="호텔·여행·항공" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000001">
                                <span class="radiWrap">
                                    <span>호텔·여행·항공<em class="num">(3,607)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000003" name="industry" value="1000003" data-name="음식료·외식·프랜차이즈" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000003">
                                <span class="radiWrap">
                                    <span>음식료·외식·프랜차이즈<em class="num">(13,270)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000002" name="industry" value="1000002" data-name="스포츠·여가·레저" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000002">
                                <span class="radiWrap">
                                    <span>스포츠·여가·레저<em class="num">(2,378)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000004" name="industry" value="1000004" data-name="뷰티·미용" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000004">
                                <span class="radiWrap">
                                    <span>뷰티·미용<em class="num">(917)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000005" name="industry" value="1000005" data-name="콜센터·아웃소싱·기타" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000005">
                                <span class="radiWrap">
                                    <span>콜센터·아웃소싱·기타<em class="num">(5,699)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000006" name="industry" value="1000006" data-name="정비·A/S·카센터" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000006">
                                <span class="radiWrap">
                                    <span>정비·A/S·카센터<em class="num">(1,195)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000007" name="industry" value="1000007" data-name="렌탈·임대·리스" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000007">
                                <span class="radiWrap">
                                    <span>렌탈·임대·리스<em class="num">(1,088)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000008" name="industry" value="1000008" data-name="서치펌·헤드헌팅" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000008">
                                <span class="radiWrap">
                                    <span>서치펌·헤드헌팅<em class="num">(2,902)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000009" name="industry" value="1000009" data-name="시설관리·보안·경비" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000009">
                                <span class="radiWrap">
                                    <span>시설관리·보안·경비<em class="num">(3,743)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="industry_step2_1000010" name="industry" value="1000010" data-name="웨딩·상조·이벤트" data-type=""/>
                            <label class="lb_tag" for="industry_step2_1000010">
                                <span class="radiWrap">
                                    <span>웨딩·상조·이벤트<em class="num">(830)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    </ul></div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                        <dl class="detail_sec circleType">
                                           
                                            <dt class="blind">
                                                <p class="btn_tit blind">3차메뉴</p>
                                            </dt>
                                            <dd class="empty">← 산업을 선택해주세요</dd> 
                                            <dd class="nano has-scrollbar" style={{display:'none'}}>
                                                {/* <!-- 3뎁스 리스트 영역 --> */}
                                                <div class="nano-content dev-keyword" tabindex="0" style={{right:'-17'}}>

                                                </div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="ppp dev-tab dev-position">
                                
                                <dt>
                                    <button type="button" class="btn_tit">직급/직책/급여<span class="ico arrow">펴기</span></button>
                                </dt>
                                <dd class="ly_area"></dd>
                                <dd class="ly_sub">
                                    <div class="ly_sub_cnt colm3">
                                        <div class="ly_sub_wrap clear" tabindex="0">
                                            <dl class="detail_sec circleType">
                                              
                                                <dt>
                                                    <p class="tit">직급</p>
                                                </dt>
                                                <dd class="list">
                                                    <div class="nano-content">
                                                        <ul class="clear dev-position1">
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="position11" name="position1" value="1" data-name="사원급"/>
                                                                    <label class="lb_tag" for="position11">
                                                                        <span class="radiWrap">
                                                                            <span>사원급</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="position12" name="position1" value="2" data-name="주임~대리급"/>
                                                                    <label class="lb_tag" for="position12">
                                                                        <span class="radiWrap">
                                                                            <span>주임~대리급</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="position13" name="position1" value="3" data-name="과장~차장급"/>
                                                                    <label class="lb_tag" for="position13">
                                                                        <span class="radiWrap">
                                                                            <span>과장~차장급</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="position14" name="position1" value="4" data-name="부장급"/>
                                                                    <label class="lb_tag" for="position14">
                                                                        <span class="radiWrap">
                                                                            <span>부장급</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="position15" name="position1" value="5" data-name="임원~CEO"/>
                                                                    <label class="lb_tag" for="position15">
                                                                        <span class="radiWrap">
                                                                            <span>임원~CEO</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                        </ul>
                                                    </div>
                                                </dd>
                                            </dl>


                                            <dl class="detail_sec circleType clear">
                                                
                                                <dt>
                                                    <p class="tit">직책</p>
                                                </dt>
                                                <dd class="list">
                                                    {/* <!-- 2뎁스 리스트 영역 --> */}
                                                    <div class="nano-content">
                                                        <ul class="clear dev-position2">
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="position28" name="position2" value="8" data-name="팀장/매니저/실장"/>
                                                                        <label class="lb_tag" for="position28">
                                                                            <span class="radiWrap">
                                                                                <span>팀장/매니저/실장</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="position29" name="position2" value="9" data-name="파트장/그룹장"/>
                                                                        <label class="lb_tag" for="position29">
                                                                            <span class="radiWrap">
                                                                                <span>파트장/그룹장</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="position210" name="position2" value="10" data-name="본부장/센터장"/>
                                                                        <label class="lb_tag" for="position210">
                                                                            <span class="radiWrap">
                                                                                <span>본부장/센터장</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="position211" name="position2" value="11" data-name="지점장/지사장/원장/국장/공장장"/>
                                                                        <label class="lb_tag" for="position211">
                                                                            <span class="radiWrap">
                                                                                <span>지점장/지사장/원장/국장/공장장</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>

                                                        </ul>
                                                    </div>
                                                </dd>
                                                <dt class="ageTit">연령</dt>
                                                <dd class="ageTxt"><input type="text" id="lb_age" name="age" manlength="3"/><label for="lb_age">세</label></dd>
                                            </dl>
                                            <dl class="detail_sec circleType">
                                               
                                                <dt>
                                                    <p class="tit">연봉</p>
                                                </dt>
                                                <dd class="list">
                                                    {/* <!-- 2뎁스 리스트 영역 --> */}
                                                    <div class="nano-content">
                                                        <ul class="salaryList clear dev-pay">
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="pay1" name="pay" value="1" data-name="~ 2500만원"/>
                                                                    <label class="lb_tag" for="pay1">
                                                                     
                                                                        <span class="radiWrap">
                                                                            <span>~ 2500만원</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="pay2" name="pay" value="2" data-name="2500 ~ 3000만원"/>
                                                                    <label class="lb_tag" for="pay2">
                                                                        <span class="radiWrap">
                                                                            <span>2500 ~ 3000만원</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="pay3" name="pay" value="3" data-name="3000 ~ 3500만원"/>
                                                                    <label class="lb_tag" for="pay3">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>3000 ~ 3500만원</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="pay4" name="pay" value="4" data-name="3500 ~ 4000만원"/>
                                                                    <label class="lb_tag" for="pay4">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>3500 ~ 4000만원</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="pay5" name="pay" value="5" data-name="4000 ~ 5000만원"/>
                                                                    <label class="lb_tag" for="pay5">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>4000 ~ 5000만원</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item">
                                                                    <input type="checkbox" class="inp_chk" id="pay6" name="pay" value="6" data-name="5000만원 ~"/>
                                                                    <label class="lb_tag" for="pay6">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>5000만원 ~</span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                        </ul>
                                                        <div class="salaryInput clear">
                                                            <select name="paytype" id="selPayType" title="연봉선택">
                                                                <option value="1">연봉</option>
                                                                <option value="2">월급</option>
                                                                <option value="3">주급</option>
                                                                <option value="4">일급</option>
                                                                <option value="5">시급</option>
                                                                <option value="6">건별</option>
                                                            </select>
                                                            <div class="inp_salaryWrap">
                                                                <input type="text" id="lb_salary" name="payinput" maxlength="7"/>
                                                                <label for="lb_salary" class="dev-ph-label">숫자만 입력</label>
                                                            </div>
                                                            <p class="txt">만원 이상</p>
                                                        </div>
                                                        <dl class="genderInput clear">
                                                            <dt class="gdTit">성별</dt>
                                                            <dd class="gdSel clear">
                                                                <div class="man circleType">
                                                                    <input type="radio" id="lb_Man" name="sex" class="inp_rdi" value="0"/>
                                                                    <label for="lb_Man" class="lb_tag">
                                                                        <span class="radiWrap">
                                                                            <span class="genMan">남자</span>
                                                                        </span>
                                                                    </label>
                                                                </div>
                                                                <div class="woman circleType">
                                                                    <input type="radio" id="lb_Woman" name="sex" class="inp_rdi" value="1"/>
                                                                    <label for="lb_Woman" class="lb_tag">
                                                                        <span class="radiWrap">
                                                                            <span class="genWoman">여자</span>
                                                                        </span>
                                                                    </label>
                                                                </div>
                                                            </dd>
                                                        </dl>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="mjr dev-tab dev-major" data-category="major">
                               
                                <dt>
                                    <button type="button" class="btn_tit">우대전공<span class="ico arrow">펴기</span></button>
                                </dt>
                                <dd class="ly_area"></dd>
                                <dd class="ly_sub">
                                    <div class="ly_sub_sch clear">
                                        <div class="sch_box">
                                            <input type="search" id="lb_loc_sch" class="ty_sch lb_job_sch_inp" data-type="Major"/>
                                            <label for="lb_loc_sch" class="ty_lb lb_loc_sch_label dev-ph-label">우대전공 입력</label>
                                            <button type="button" class="btn_sch dev-search-ok">찾기</button>
                                            <div class="autoRecommand" style={{display:'none'}}>
                                                <dl class="chkType">
                                                    <dd class="nano has-scrollbar">
                                                        <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                                            <ul class="list"></ul>
                                                        </div>
                                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                                    </dd>
                                                    <div class="ar_confirm">
                                                        <button type="button" class="btn_cancel dev-searched-terms-close">취소</button>
                                                        <button type="button" class="btn_okay dev-searched-terms-ok">선택</button>
                                                    </div>
                                                </dl>
                                                <p class="emptyResult">검색 결과가 없습니다.</p>
                                            </div>
                                        </div>
                                        <dl class="recentWord clear" style={{display:'none'}}>
                                            <dt class="tit">최근검색</dt>
                                            <dd class="list">
                                                <ul class="clear"></ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="ly_sub_cnt colm2-ty1 clear">
                                        <dl class="detail_sec barType">
                                          
                                            <dt class="blind">
                                                <p class="btn_tit">1차메뉴</p>
                                            </dt>
                                            <dd class="nano has-scrollbar">
                                                <div class="nano-content dev-main" tabindex="0" style={{right:'-17'}}>
                                                    <ul class="clear" data-category="major">
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:1,&quot;groupName&quot;:&quot;공학계열&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:1,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:16229,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_1&quot;,&quot;subName&quot;:&quot;건축학&quot;,&quot;giCnt&quot;:1290,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_2&quot;,&quot;subName&quot;:&quot;토목공학&quot;,&quot;giCnt&quot;:718,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_3&quot;,&quot;subName&quot;:&quot;조경학&quot;,&quot;giCnt&quot;:167,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_4&quot;,&quot;subName&quot;:&quot;도시공학&quot;,&quot;giCnt&quot;:178,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_5&quot;,&quot;subName&quot;:&quot;지상교통공학&quot;,&quot;giCnt&quot;:16,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_6&quot;,&quot;subName&quot;:&quot;항공학&quot;,&quot;giCnt&quot;:56,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_7&quot;,&quot;subName&quot;:&quot;조선공학&quot;,&quot;giCnt&quot;:66,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_8&quot;,&quot;subName&quot;:&quot;바이오·유전공학&quot;,&quot;giCnt&quot;:175,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_9&quot;,&quot;subName&quot;:&quot;금속공학&quot;,&quot;giCnt&quot;:242,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_10&quot;,&quot;subName&quot;:&quot;기계·메카트로닉스·로봇&quot;,&quot;giCnt&quot;:1445,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_11&quot;,&quot;subName&quot;:&quot;자동차공학&quot;,&quot;giCnt&quot;:474,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_12&quot;,&quot;subName&quot;:&quot;산업공학&quot;,&quot;giCnt&quot;:452,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_13&quot;,&quot;subName&quot;:&quot;반도체·세라믹공학&quot;,&quot;giCnt&quot;:173,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_14&quot;,&quot;subName&quot;:&quot;섬유공학&quot;,&quot;giCnt&quot;:70,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_15&quot;,&quot;subName&quot;:&quot;신소재·재료공학&quot;,&quot;giCnt&quot;:269,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_16&quot;,&quot;subName&quot;:&quot;전기·전자공학&quot;,&quot;giCnt&quot;:2442,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_17&quot;,&quot;subName&quot;:&quot;제어계측공학&quot;,&quot;giCnt&quot;:331,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_18&quot;,&quot;subName&quot;:&quot;광학공학&quot;,&quot;giCnt&quot;:50,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_19&quot;,&quot;subName&quot;:&quot;에너지공학&quot;,&quot;giCnt&quot;:119,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_20&quot;,&quot;subName&quot;:&quot;화학공학&quot;,&quot;giCnt&quot;:627,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_21&quot;,&quot;subName&quot;:&quot;해양공학&quot;,&quot;giCnt&quot;:26,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_22&quot;,&quot;subName&quot;:&quot;소방방재학과&quot;,&quot;giCnt&quot;:159,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_23&quot;,&quot;subName&quot;:&quot;전산학·컴퓨터공학&quot;,&quot;giCnt&quot;:2630,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_24&quot;,&quot;subName&quot;:&quot;응용소프트웨어공학&quot;,&quot;giCnt&quot;:1587,&quot;groupCode&quot;:1},{&quot;subCode&quot;:&quot;1_25&quot;,&quot;subName&quot;:&quot;정보·통신공학&quot;,&quot;giCnt&quot;:1863,&quot;groupCode&quot;:1}]}">
                                                                    <input type="checkbox" class="inp_chk" id="major_step1_1" name="major" value="1" data-name="공학계열"/>
                                                                    <label class="lb_tag" for="major_step1_1">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>공학계열<em class="num">(16,229)</em></span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:2,&quot;groupName&quot;:&quot;자연계열&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:2,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:3320,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_26&quot;,&quot;subName&quot;:&quot;물리·과학&quot;,&quot;giCnt&quot;:113,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_27&quot;,&quot;subName&quot;:&quot;수학&quot;,&quot;giCnt&quot;:259,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_28&quot;,&quot;subName&quot;:&quot;지구·지리학&quot;,&quot;giCnt&quot;:30,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_29&quot;,&quot;subName&quot;:&quot;천문·기상학&quot;,&quot;giCnt&quot;:6,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_30&quot;,&quot;subName&quot;:&quot;통계학&quot;,&quot;giCnt&quot;:205,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_31&quot;,&quot;subName&quot;:&quot;동물·수의학&quot;,&quot;giCnt&quot;:54,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_32&quot;,&quot;subName&quot;:&quot;생명과학&quot;,&quot;giCnt&quot;:362,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_33&quot;,&quot;subName&quot;:&quot;생물학&quot;,&quot;giCnt&quot;:213,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_34&quot;,&quot;subName&quot;:&quot;자원학&quot;,&quot;giCnt&quot;:12,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_35&quot;,&quot;subName&quot;:&quot;화학&quot;,&quot;giCnt&quot;:519,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_36&quot;,&quot;subName&quot;:&quot;환경학&quot;,&quot;giCnt&quot;:244,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_37&quot;,&quot;subName&quot;:&quot;농업학&quot;,&quot;giCnt&quot;:69,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_38&quot;,&quot;subName&quot;:&quot;산림·원예학&quot;,&quot;giCnt&quot;:68,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_39&quot;,&quot;subName&quot;:&quot;수산학&quot;,&quot;giCnt&quot;:12,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_40&quot;,&quot;subName&quot;:&quot;가정관리학&quot;,&quot;giCnt&quot;:8,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_41&quot;,&quot;subName&quot;:&quot;식품영양·조리학&quot;,&quot;giCnt&quot;:908,&quot;groupCode&quot;:2},{&quot;subCode&quot;:&quot;2_42&quot;,&quot;subName&quot;:&quot;의류·의상학&quot;,&quot;giCnt&quot;:152,&quot;groupCode&quot;:2}]}">
                                                                    <input type="checkbox" class="inp_chk" id="major_step1_2" name="major" value="2" data-name="자연계열"/>
                                                                    <label class="lb_tag checked" for="major_step1_2">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>자연계열<em class="num">(3,320)</em></span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:3,&quot;groupName&quot;:&quot;사회계열&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:3,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:6476,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_43&quot;,&quot;subName&quot;:&quot;경영학&quot;,&quot;giCnt&quot;:1419,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_44&quot;,&quot;subName&quot;:&quot;경제학&quot;,&quot;giCnt&quot;:563,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_45&quot;,&quot;subName&quot;:&quot;호텔·관광경영학&quot;,&quot;giCnt&quot;:1030,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_46&quot;,&quot;subName&quot;:&quot;광고·홍보학&quot;,&quot;giCnt&quot;:752,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_47&quot;,&quot;subName&quot;:&quot;금융·회계·세무학&quot;,&quot;giCnt&quot;:1102,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_48&quot;,&quot;subName&quot;:&quot;무역·유통학&quot;,&quot;giCnt&quot;:558,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_49&quot;,&quot;subName&quot;:&quot;법학&quot;,&quot;giCnt&quot;:192,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_50&quot;,&quot;subName&quot;:&quot;가족·복지·아동·청소년학&quot;,&quot;giCnt&quot;:109,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_51&quot;,&quot;subName&quot;:&quot;국제학&quot;,&quot;giCnt&quot;:30,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_52&quot;,&quot;subName&quot;:&quot;도시·지역학&quot;,&quot;giCnt&quot;:23,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_53&quot;,&quot;subName&quot;:&quot;사회학&quot;,&quot;giCnt&quot;:26,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_54&quot;,&quot;subName&quot;:&quot;신문·방송·언론·미디어학&quot;,&quot;giCnt&quot;:317,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_55&quot;,&quot;subName&quot;:&quot;정치외교학&quot;,&quot;giCnt&quot;:9,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_56&quot;,&quot;subName&quot;:&quot;행정학·경찰·보건행정&quot;,&quot;giCnt&quot;:124,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_57&quot;,&quot;subName&quot;:&quot;비서학&quot;,&quot;giCnt&quot;:148,&quot;groupCode&quot;:3},{&quot;subCode&quot;:&quot;3_58&quot;,&quot;subName&quot;:&quot;지리학&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:3}]}">
                                                                    <input type="checkbox" class="inp_chk" id="major_step1_3" name="major" value="3" data-name="사회계열"/>
                                                                    <label class="lb_tag checked" for="major_step1_3">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>사회계열<em class="num">(6,476)</em></span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:4,&quot;groupName&quot;:&quot;인문계열&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:4,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:1579,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_59&quot;,&quot;subName&quot;:&quot;국어·국문학&quot;,&quot;giCnt&quot;:247,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_60&quot;,&quot;subName&quot;:&quot;영미어·문학&quot;,&quot;giCnt&quot;:682,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_61&quot;,&quot;subName&quot;:&quot;일본어·문학&quot;,&quot;giCnt&quot;:117,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_62&quot;,&quot;subName&quot;:&quot;중국어·문학&quot;,&quot;giCnt&quot;:133,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_63&quot;,&quot;subName&quot;:&quot;독일어·문학&quot;,&quot;giCnt&quot;:7,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_64&quot;,&quot;subName&quot;:&quot;러시아어·문학&quot;,&quot;giCnt&quot;:8,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_65&quot;,&quot;subName&quot;:&quot;스페인어·문학&quot;,&quot;giCnt&quot;:13,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_66&quot;,&quot;subName&quot;:&quot;프랑스어·문학&quot;,&quot;giCnt&quot;:11,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_67&quot;,&quot;subName&quot;:&quot;기타아시아어·문학&quot;,&quot;giCnt&quot;:9,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_68&quot;,&quot;subName&quot;:&quot;기타유럽어·문학&quot;,&quot;giCnt&quot;:10,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_69&quot;,&quot;subName&quot;:&quot;언어학&quot;,&quot;giCnt&quot;:89,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_70&quot;,&quot;subName&quot;:&quot;국제지역학&quot;,&quot;giCnt&quot;:2,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_71&quot;,&quot;subName&quot;:&quot;문헌정보학&quot;,&quot;giCnt&quot;:33,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_72&quot;,&quot;subName&quot;:&quot;문화·민속·미술사학&quot;,&quot;giCnt&quot;:18,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_73&quot;,&quot;subName&quot;:&quot;심리학&quot;,&quot;giCnt&quot;:91,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_74&quot;,&quot;subName&quot;:&quot;역사·고고학&quot;,&quot;giCnt&quot;:15,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_75&quot;,&quot;subName&quot;:&quot;철학·윤리학&quot;,&quot;giCnt&quot;:7,&quot;groupCode&quot;:4},{&quot;subCode&quot;:&quot;4_76&quot;,&quot;subName&quot;:&quot;종교학&quot;,&quot;giCnt&quot;:4,&quot;groupCode&quot;:4}]}">
                                                                    <input type="checkbox" class="inp_chk" id="major_step1_4" name="major" value="4" data-name="인문계열"/>
                                                                    <label class="lb_tag checked" for="major_step1_4">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>인문계열<em class="num">(1,579)</em></span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:5,&quot;groupName&quot;:&quot;예체능계열&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:5,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:5227,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_77&quot;,&quot;subName&quot;:&quot;산업디자인&quot;,&quot;giCnt&quot;:1068,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_78&quot;,&quot;subName&quot;:&quot;시각디자인&quot;,&quot;giCnt&quot;:1455,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_79&quot;,&quot;subName&quot;:&quot;패션디자인&quot;,&quot;giCnt&quot;:597,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_80&quot;,&quot;subName&quot;:&quot;무용&quot;,&quot;giCnt&quot;:32,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_81&quot;,&quot;subName&quot;:&quot;체육&quot;,&quot;giCnt&quot;:356,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_82&quot;,&quot;subName&quot;:&quot;미술·조형&quot;,&quot;giCnt&quot;:361,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_83&quot;,&quot;subName&quot;:&quot;연극·영화&quot;,&quot;giCnt&quot;:141,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_84&quot;,&quot;subName&quot;:&quot;음악&quot;,&quot;giCnt&quot;:124,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_85&quot;,&quot;subName&quot;:&quot;공예&quot;,&quot;giCnt&quot;:57,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_86&quot;,&quot;subName&quot;:&quot;사진&quot;,&quot;giCnt&quot;:149,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_87&quot;,&quot;subName&quot;:&quot;애니메이션학&quot;,&quot;giCnt&quot;:171,&quot;groupCode&quot;:5},{&quot;subCode&quot;:&quot;5_88&quot;,&quot;subName&quot;:&quot;영상·예술&quot;,&quot;giCnt&quot;:563,&quot;groupCode&quot;:5}]}">
                                                                    <input type="checkbox" class="inp_chk" id="major_step1_5" name="major" value="5" data-name="예체능계열"/>
                                                                    <label class="lb_tag checked" for="major_step1_5">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>예체능계열<em class="num">(5,227)</em></span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:6,&quot;groupName&quot;:&quot;교육계열&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:6,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:1491,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_89&quot;,&quot;subName&quot;:&quot;교육학&quot;,&quot;giCnt&quot;:437,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_90&quot;,&quot;subName&quot;:&quot;유아교육학&quot;,&quot;giCnt&quot;:376,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_91&quot;,&quot;subName&quot;:&quot;초등교육학&quot;,&quot;giCnt&quot;:112,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_92&quot;,&quot;subName&quot;:&quot;공학교육학&quot;,&quot;giCnt&quot;:12,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_93&quot;,&quot;subName&quot;:&quot;사회교육학&quot;,&quot;giCnt&quot;:13,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_94&quot;,&quot;subName&quot;:&quot;언어교육학&quot;,&quot;giCnt&quot;:193,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_95&quot;,&quot;subName&quot;:&quot;예체능교육학&quot;,&quot;giCnt&quot;:163,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_96&quot;,&quot;subName&quot;:&quot;인문교육학&quot;,&quot;giCnt&quot;:22,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_97&quot;,&quot;subName&quot;:&quot;자연계교육학&quot;,&quot;giCnt&quot;:41,&quot;groupCode&quot;:6},{&quot;subCode&quot;:&quot;6_98&quot;,&quot;subName&quot;:&quot;특수교육학&quot;,&quot;giCnt&quot;:16,&quot;groupCode&quot;:6}]}">
                                                                    <input type="checkbox" class="inp_chk" id="major_step1_6" name="major" value="6" data-name="교육계열"/>
                                                                    <label class="lb_tag checked" for="major_step1_6">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>교육계열<em class="num">(1,491)</em></span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>
                                                                <li class="item" data-value-json="{&quot;groupCode&quot;:7,&quot;groupName&quot;:&quot;의약계열&quot;,&quot;subList&quot;:[{&quot;subCode&quot;:7,&quot;subName&quot;:&quot;전체&quot;,&quot;giCnt&quot;:977,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_99&quot;,&quot;subName&quot;:&quot;간호&quot;,&quot;giCnt&quot;:230,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_100&quot;,&quot;subName&quot;:&quot;약학&quot;,&quot;giCnt&quot;:80,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_101&quot;,&quot;subName&quot;:&quot;의학&quot;,&quot;giCnt&quot;:48,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_102&quot;,&quot;subName&quot;:&quot;치의학&quot;,&quot;giCnt&quot;:9,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_103&quot;,&quot;subName&quot;:&quot;한의학&quot;,&quot;giCnt&quot;:3,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_104&quot;,&quot;subName&quot;:&quot;보건학&quot;,&quot;giCnt&quot;:114,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_105&quot;,&quot;subName&quot;:&quot;의료공학&quot;,&quot;giCnt&quot;:64,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_106&quot;,&quot;subName&quot;:&quot;치위생학&quot;,&quot;giCnt&quot;:46,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_107&quot;,&quot;subName&quot;:&quot;치기공학&quot;,&quot;giCnt&quot;:22,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_108&quot;,&quot;subName&quot;:&quot;임상병리학&quot;,&quot;giCnt&quot;:56,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_109&quot;,&quot;subName&quot;:&quot;방사선학과&quot;,&quot;giCnt&quot;:38,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_110&quot;,&quot;subName&quot;:&quot;응급구조학&quot;,&quot;giCnt&quot;:31,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_111&quot;,&quot;subName&quot;:&quot;재활/물리치료학&quot;,&quot;giCnt&quot;:86,&quot;groupCode&quot;:7},{&quot;subCode&quot;:&quot;7_113&quot;,&quot;subName&quot;:&quot;의무행정학&quot;,&quot;giCnt&quot;:78,&quot;groupCode&quot;:7}]}">
                                                                    <input type="checkbox" class="inp_chk" id="major_step1_7" name="major" value="7" data-name="의약계열"/>
                                                                    <label class="lb_tag checked" for="major_step1_7">
                                                                        
                                                                        <span class="radiWrap">
                                                                            <span>의약계열<em class="num">(977)</em></span>
                                                                            <i class="ico close-ty1 ir">닫기</i>
                                                                        </span>
                                                                    </label>
                                                                </li>

                                                    </ul>
                                                </div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                        <dl class="detail_sec circleType">
                                           
                                            <dt class="blind">
                                                <p class="btn_tit blind">2차메뉴</p>
                                            </dt>
                                            <dd class="nano has-scrollbar">
                                                {/* <!-- 2뎁스 리스트 영역 --> */}
                                                <div class="nano-content dev-sub" tabindex="0" style={{right:'-17'}} data-category="major">
                                                <ul id="major_step2_1_ly" data-value="1" style={{display:'none'}}>
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1" name="major" value="1" data-name="공학계열" data-type=""/>
                            <label class="lb_tag" for="major_step2_1">
                                <span class="radiWrap">
                                    <span>전체<em class="num">(16,229)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_1" name="major" value="1_1" data-name="건축학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_1">
                                <span class="radiWrap">
                                    <span>건축학<em class="num">(1,290)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_2" name="major" value="1_2" data-name="토목공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_2">
                                <span class="radiWrap">
                                    <span>토목공학<em class="num">(718)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_3" name="major" value="1_3" data-name="조경학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_3">
                                <span class="radiWrap">
                                    <span>조경학<em class="num">(167)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_4" name="major" value="1_4" data-name="도시공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_4">
                                <span class="radiWrap">
                                    <span>도시공학<em class="num">(178)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_5" name="major" value="1_5" data-name="지상교통공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_5">
                                <span class="radiWrap">
                                    <span>지상교통공학<em class="num">(16)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_6" name="major" value="1_6" data-name="항공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_6">
                                <span class="radiWrap">
                                    <span>항공학<em class="num">(56)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_7" name="major" value="1_7" data-name="조선공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_7">
                                <span class="radiWrap">
                                    <span>조선공학<em class="num">(66)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_8" name="major" value="1_8" data-name="바이오·유전공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_8">
                                <span class="radiWrap">
                                    <span>바이오·유전공학<em class="num">(175)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_9" name="major" value="1_9" data-name="금속공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_9">
                                <span class="radiWrap">
                                    <span>금속공학<em class="num">(242)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_10" name="major" value="1_10" data-name="기계·메카트로닉스·로봇" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_10">
                                <span class="radiWrap">
                                    <span>기계·메카트로닉스·로봇<em class="num">(1,445)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_11" name="major" value="1_11" data-name="자동차공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_11">
                                <span class="radiWrap">
                                    <span>자동차공학<em class="num">(474)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_12" name="major" value="1_12" data-name="산업공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_12">
                                <span class="radiWrap">
                                    <span>산업공학<em class="num">(452)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_13" name="major" value="1_13" data-name="반도체·세라믹공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_13">
                                <span class="radiWrap">
                                    <span>반도체·세라믹공학<em class="num">(173)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_14" name="major" value="1_14" data-name="섬유공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_14">
                                <span class="radiWrap">
                                    <span>섬유공학<em class="num">(70)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_15" name="major" value="1_15" data-name="신소재·재료공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_15">
                                <span class="radiWrap">
                                    <span>신소재·재료공학<em class="num">(269)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_16" name="major" value="1_16" data-name="전기·전자공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_16">
                                <span class="radiWrap">
                                    <span>전기·전자공학<em class="num">(2,442)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_17" name="major" value="1_17" data-name="제어계측공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_17">
                                <span class="radiWrap">
                                    <span>제어계측공학<em class="num">(331)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_18" name="major" value="1_18" data-name="광학공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_18">
                                <span class="radiWrap">
                                    <span>광학공학<em class="num">(50)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_19" name="major" value="1_19" data-name="에너지공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_19">
                                <span class="radiWrap">
                                    <span>에너지공학<em class="num">(119)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_20" name="major" value="1_20" data-name="화학공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_20">
                                <span class="radiWrap">
                                    <span>화학공학<em class="num">(627)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_21" name="major" value="1_21" data-name="해양공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_21">
                                <span class="radiWrap">
                                    <span>해양공학<em class="num">(26)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_22" name="major" value="1_22" data-name="소방방재학과" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_22">
                                <span class="radiWrap">
                                    <span>소방방재학과<em class="num">(159)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_23" name="major" value="1_23" data-name="전산학·컴퓨터공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_23">
                                <span class="radiWrap">
                                    <span>전산학·컴퓨터공학<em class="num">(2,630)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_24" name="major" value="1_24" data-name="응용소프트웨어공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_24">
                                <span class="radiWrap">
                                    <span>응용소프트웨어공학<em class="num">(1,587)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    
                        <li class="item">
                            <input type="checkbox" class="inp_chk" id="major_step2_1_25" name="major" value="1_25" data-name="정보·통신공학" data-type=""/>
                            <label class="lb_tag" for="major_step2_1_25">
                                <span class="radiWrap">
                                    <span>정보·통신공학<em class="num">(1,863)</em></span>
                                    <i class="ico close-ty1 ir">닫기</i>
                                </span>
                            </label>
                        </li>
                    </ul></div>
                                                <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: 20, transform: 'translate(0, 0)'}}></div></div>
                                            </dd>
                                        </dl>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="lic dev-tab dev-license">
                               
                                <dt>
                                    <button type="button" class="btn_tit">자격증<span class="ico arrow">펴기</span></button>
                                </dt>
                                <dd class="ly_area"></dd>
                                <dd class="ly_sub">
                                    <div class="ly_sub_sch clear">
                                        <div class="sch_box">
                                            <input type="search" id="lb_loc_sch" class="ty_sch lb_job_sch_inp" data-type="License"/>
                                            <label for="lb_loc_sch" class="ty_lb lb_loc_sch_label dev-ph-label">자격증명 입력</label>
                                            <button type="button" class="btn_sch dev-search-ok">찾기</button>
                                            <div class="autoRecommand" style={{display:'none'}}>
                                                <dl class="chkType">
                                                    <dd class="nano has-scrollbar">
                                                        <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                                            <ul class="list"></ul>
                                                        </div>
                                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                                    </dd>
                                                    <div class="ar_confirm">
                                                        <button type="button" class="btn_cancel dev-searched-terms-close">취소</button>
                                                        <button type="button" class="btn_okay dev-searched-terms-ok">선택</button>
                                                    </div>
                                                </dl>
                                                <p class="emptyResult">검색 결과가 없습니다.</p>
                                            </div>
                                        </div>
                                        <dl class="recentWord clear" style={{display:'none'}}>
                                            <dt class="tit">최근검색</dt>
                                            <dd class="list">
                                                <ul class="clear"></ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="ly_sub_cnt colm5 has-scrollbar">
                                        <div class="ly_sub_wrap clear nano-content" tabindex="0" style={{right:'-17'}}>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">건설·건축·토목</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1205020" name="license" value="1205020" data-name="건축기사"/>
                                                                            <label class="lb_tag" for="license1205020">
                                                                                <span class="radiWrap">
                                                                                    <span>건축기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1205058" name="license" value="1205058" data-name="토목기사"/>
                                                                            <label class="lb_tag" for="license1205058">
                                                                                <span class="radiWrap">
                                                                                    <span>토목기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1205073" name="license" value="1205073" data-name="조경기사"/>
                                                                            <label class="lb_tag" for="license1205073">
                                                                                <span class="radiWrap">
                                                                                    <span>조경기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1205023" name="license" value="1205023" data-name="전산응용건축제도기능사"/>
                                                                            <label class="lb_tag" for="license1205023">
                                                                                <span class="radiWrap">
                                                                                    <span>전산응용건축제도기능사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1205052" name="license" value="1205052" data-name="측량및지형공간정보기사"/>
                                                                            <label class="lb_tag" for="license1205052">
                                                                                <span class="radiWrap">
                                                                                    <span>측량및지형공간정보기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">경제·경영·금융·무역</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1303041" name="license" value="1303041" data-name="AFPK"/>
                                                                            <label class="lb_tag" for="license1303041">
                                                                                <span class="radiWrap">
                                                                                    <span>AFPK</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1303048" name="license" value="1303048" data-name="증권투자상담사"/>
                                                                            <label class="lb_tag" for="license1303048">
                                                                                <span class="radiWrap">
                                                                                    <span>증권투자상담사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1303056" name="license" value="1303056" data-name="CFP"/>
                                                                            <label class="lb_tag" for="license1303056">
                                                                                <span class="radiWrap">
                                                                                    <span>CFP</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1303010" name="license" value="1303010" data-name="전산회계"/>
                                                                            <label class="lb_tag" for="license1303010">
                                                                                <span class="radiWrap">
                                                                                    <span>전산회계</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1303009" name="license" value="1303009" data-name="전산세무"/>
                                                                            <label class="lb_tag" for="license1303009">
                                                                                <span class="radiWrap">
                                                                                    <span>전산세무</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">산업·안전·환경</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1209049" name="license" value="1209049" data-name="산업안전기사"/>
                                                                            <label class="lb_tag" for="license1209049">
                                                                                <span class="radiWrap">
                                                                                    <span>산업안전기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1209041" name="license" value="1209041" data-name="건설안전기사"/>
                                                                            <label class="lb_tag" for="license1209041">
                                                                                <span class="radiWrap">
                                                                                    <span>건설안전기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1209055" name="license" value="1209055" data-name="가스기능사"/>
                                                                            <label class="lb_tag" for="license1209055">
                                                                                <span class="radiWrap">
                                                                                    <span>가스기능사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1207027" name="license" value="1207027" data-name="대기환경기사"/>
                                                                            <label class="lb_tag" for="license1207027">
                                                                                <span class="radiWrap">
                                                                                    <span>대기환경기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1209058" name="license" value="1209058" data-name="소방설비기사"/>
                                                                            <label class="lb_tag" for="license1209058">
                                                                                <span class="radiWrap">
                                                                                    <span>소방설비기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">IT·정보통신</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1201008" name="license" value="1201008" data-name="정보처리기사"/>
                                                                            <label class="lb_tag" for="license1201008">
                                                                                <span class="radiWrap">
                                                                                    <span>정보처리기사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1203062" name="license" value="1203062" data-name="웹디자인기능사"/>
                                                                            <label class="lb_tag" for="license1203062">
                                                                                <span class="radiWrap">
                                                                                    <span>웹디자인기능사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1402004" name="license" value="1402004" data-name="CCNA"/>
                                                                            <label class="lb_tag" for="license1402004">
                                                                                <span class="radiWrap">
                                                                                    <span>CCNA</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1203060" name="license" value="1203060" data-name="컴퓨터그래픽스운용기능사"/>
                                                                            <label class="lb_tag" for="license1203060">
                                                                                <span class="radiWrap">
                                                                                    <span>컴퓨터그래픽스운용기능사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1301005" name="license" value="1301005" data-name="정보기술자격(ITQ)"/>
                                                                            <label class="lb_tag" for="license1301005">
                                                                                <span class="radiWrap">
                                                                                    <span>정보기술자격(ITQ)</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">보건·복지·위생</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1005006" name="license" value="1005006" data-name="간호사"/>
                                                                            <label class="lb_tag" for="license1005006">
                                                                                <span class="radiWrap">
                                                                                    <span>간호사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1006002" name="license" value="1006002" data-name="영양사"/>
                                                                            <label class="lb_tag" for="license1006002">
                                                                                <span class="radiWrap">
                                                                                    <span>영양사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1004016" name="license" value="1004016" data-name="사회복지사"/>
                                                                            <label class="lb_tag" for="license1004016">
                                                                                <span class="radiWrap">
                                                                                    <span>사회복지사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1212004" name="license" value="1212004" data-name="직업상담사"/>
                                                                            <label class="lb_tag" for="license1212004">
                                                                                <span class="radiWrap">
                                                                                    <span>직업상담사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="license1005018" name="license" value="1005018" data-name="치과위생사"/>
                                                                            <label class="lb_tag" for="license1005018">
                                                                                <span class="radiWrap">
                                                                                    <span>치과위생사</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>

                                        </div>
                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="prf dev-tab dev-pref">
                              
                                <dt>
                                    <button type="button" class="btn_tit">우대조건<span class="ico arrow">펴기</span></button>
                                </dt>
                                <dd class="ly_area"></dd>
                                <dd class="ly_sub">
                                    <div class="ly_sub_sch clear">
                                        <div class="sch_box">
                                            <input type="search" id="lb_loc_sch" class="ty_sch lb_job_sch_inp" data-type="Preference"/>
                                            <label for="lb_loc_sch" class="ty_lb lb_loc_sch_label dev-ph-label">우대조건 입력</label>
                                            <button type="button" class="btn_sch dev-search-ok">찾기</button>
                                            <div class="autoRecommand" style={{display:'none'}}>
                                                <dl class="chkType">
                                                    <dd class="nano has-scrollbar">
                                                        <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                                            <ul class="list"></ul>
                                                        </div>
                                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                                    </dd>
                                                    <div class="ar_confirm">
                                                        <button type="button" class="btn_cancel dev-searched-terms-close">취소</button>
                                                        <button type="button" class="btn_okay dev-searched-terms-ok">선택</button>
                                                    </div>
                                                </dl>
                                                <p class="emptyResult">검색 결과가 없습니다.</p>
                                            </div>
                                        </div>
                                        <dl class="recentWord clear" style={{display:'none'}}>
                                            <dt class="tit">최근검색</dt>
                                            <dd class="list">
                                                <ul class="clear"></ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="ly_sub_cnt colm5 has-scrollbar">
                                        <div class="ly_sub_wrap clear nano-content" tabindex="0" style={{right:'-17'}}>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">취업보호·장려</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref1" name="pref" value="1" data-name="국가유공자"/>
                                                                            <label class="lb_tag" for="pref1">
                                                                                <span class="radiWrap">
                                                                                    <span>국가유공자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref32" name="pref" value="32" data-name="보훈대상자"/>
                                                                            <label class="lb_tag" for="pref32">
                                                                                <span class="radiWrap">
                                                                                    <span>보훈대상자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref18" name="pref" value="18" data-name="고용촉진지원금 대상자"/>
                                                                            <label class="lb_tag" for="pref18">
                                                                                <span class="radiWrap">
                                                                                    <span>고용촉진지원금 대상자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref24" name="pref" value="24" data-name="취업보호대상자"/>
                                                                            <label class="lb_tag" for="pref24">
                                                                                <span class="radiWrap">
                                                                                    <span>취업보호대상자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref7" name="pref" value="7" data-name="병역특례"/>
                                                                            <label class="lb_tag" for="pref7">
                                                                                <span class="radiWrap">
                                                                                    <span>병역특례</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">자격·능력</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref19" name="pref" value="19" data-name="컴퓨터활용능력 우수자"/>
                                                                            <label class="lb_tag" for="pref19">
                                                                                <span class="radiWrap">
                                                                                    <span>컴퓨터활용능력 우수자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref21" name="pref" value="21" data-name="운전가능자"/>
                                                                            <label class="lb_tag" for="pref21">
                                                                                <span class="radiWrap">
                                                                                    <span>운전가능자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref33" name="pref" value="33" data-name="엑셀 고급능력 보유자"/>
                                                                            <label class="lb_tag" for="pref33">
                                                                                <span class="radiWrap">
                                                                                    <span>엑셀 고급능력 보유자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref34" name="pref" value="34" data-name="CAD/CAM 프로그램 능숙자"/>
                                                                            <label class="lb_tag" for="pref34">
                                                                                <span class="radiWrap">
                                                                                    <span>CAD/CAM 프로그램 능숙자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref47" name="pref" value="47" data-name="회계프로그램 능숙자"/>
                                                                            <label class="lb_tag" for="pref47">
                                                                                <span class="radiWrap">
                                                                                    <span>회계프로그램 능숙자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">자격·능력</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref48" name="pref" value="48" data-name="포토샵 능숙자"/>
                                                                            <label class="lb_tag" for="pref48">
                                                                                <span class="radiWrap">
                                                                                    <span>포토샵 능숙자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref12" name="pref" value="12" data-name="영어가능자"/>
                                                                            <label class="lb_tag" for="pref12">
                                                                                <span class="radiWrap">
                                                                                    <span>영어가능자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref13" name="pref" value="13" data-name="일본어가능자"/>
                                                                            <label class="lb_tag" for="pref13">
                                                                                <span class="radiWrap">
                                                                                    <span>일본어가능자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref14" name="pref" value="14" data-name="중국어가능자"/>
                                                                            <label class="lb_tag" for="pref14">
                                                                                <span class="radiWrap">
                                                                                    <span>중국어가능자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref22" name="pref" value="22" data-name="영어능통자(원어민수준)"/>
                                                                            <label class="lb_tag" for="pref22">
                                                                                <span class="radiWrap">
                                                                                    <span>영어능통자(원어민수준)</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">활동·경험</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref3" name="pref" value="3" data-name="군전역간부(장교·부사관)"/>
                                                                            <label class="lb_tag" for="pref3">
                                                                                <span class="radiWrap">
                                                                                    <span>군전역간부(장교·부사관)</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref4" name="pref" value="4" data-name="공모전 입상자"/>
                                                                            <label class="lb_tag" for="pref4">
                                                                                <span class="radiWrap">
                                                                                    <span>공모전 입상자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref31" name="pref" value="31" data-name="유관업무 인턴·알바 경험자"/>
                                                                            <label class="lb_tag" for="pref31">
                                                                                <span class="radiWrap">
                                                                                    <span>유관업무 인턴·알바 경험자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref55" name="pref" value="55" data-name="유관업무 경력자"/>
                                                                            <label class="lb_tag" for="pref55">
                                                                                <span class="radiWrap">
                                                                                    <span>유관업무 경력자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref56" name="pref" value="56" data-name="대기업 근무 경험자"/>
                                                                            <label class="lb_tag" for="pref56">
                                                                                <span class="radiWrap">
                                                                                    <span>대기업 근무 경험자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <dl class="detail_sec circleType">
                                                        <dt class="">
                                                            <p class="tit">근무조건</p>
                                                        </dt>
                                                        <dd class="certify">
                                                            <div class="certifyWrap">
                                                                <ul>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref16" name="pref" value="16" data-name="인근거주자"/>
                                                                            <label class="lb_tag" for="pref16">
                                                                                <span class="radiWrap">
                                                                                    <span>인근거주자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref20" name="pref" value="20" data-name="차량소지자"/>
                                                                            <label class="lb_tag" for="pref20">
                                                                                <span class="radiWrap">
                                                                                    <span>차량소지자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref37" name="pref" value="37" data-name="2교대 근무 가능자"/>
                                                                            <label class="lb_tag" for="pref37">
                                                                                <span class="radiWrap">
                                                                                    <span>2교대 근무 가능자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref40" name="pref" value="40" data-name="지방근무 가능자"/>
                                                                            <label class="lb_tag" for="pref40">
                                                                                <span class="radiWrap">
                                                                                    <span>지방근무 가능자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="item">
                                                                            <input type="checkbox" class="inp_chk" id="pref42" name="pref" value="42" data-name="해외근무 가능자"/>
                                                                            <label class="lb_tag" for="pref42">
                                                                                <span class="radiWrap">
                                                                                    <span>해외근무 가능자</span>
                                                                                    <i class="ico close-ty1 ir">닫기</i>
                                                                                </span>
                                                                            </label>
                                                                        </li>
                                                                </ul>
                                                            </div>
                                                        </dd>
                                                    </dl>

                                        </div>
                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="bnf dev-tab dev-wel">
                               
                                <dt>
                                    <button type="button" class="btn_tit">복리후생<span class="ico arrow">펴기</span></button>
                                </dt>
                                <dd class="ly_area"></dd>
                                <dd class="ly_sub">
                                    <div class="ly_sub_sch clear">
                                        <div class="sch_box">
                                            <input type="search" id="lb_loc_sch" class="ty_sch lb_job_sch_inp" data-type="Welfare"/>
                                            <label for="lb_loc_sch" class="ty_lb lb_loc_sch_label dev-ph-label">복리후생 입력</label>
                                            <button type="button" class="btn_sch dev-search-ok">찾기</button>
                                            <div class="autoRecommand" style={{display:'none'}}>
                                                <dl class="chkType">
                                                    <dd class="nano has-scrollbar">
                                                        <div class="nano-content" tabindex="0" style={{right:'-17'}}>
                                                            <ul class="list"></ul>
                                                        </div>
                                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                                    </dd>
                                                    <div class="ar_confirm">
                                                        <button type="button" class="btn_cancel dev-searched-terms-close">취소</button>
                                                        <button type="button" class="btn_okay dev-searched-terms-ok">선택</button>
                                                    </div>
                                                </dl>
                                                <p class="emptyResult">검색 결과가 없습니다.</p>
                                            </div>
                                        </div>
                                        <dl class="recentWord clear" style={{display:'none'}}>
                                            <dt class="tit">최근검색</dt>
                                            <dd class="list">
                                                <ul class="clear"></ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="ly_sub_cnt colm5 has-scrollbar">
                                        <div class="ly_sub_wrap clear nano-content" tabindex="0" style={{right:'-17'}}>
                                                <dl class="detail_sec circleType">
                                                    <dt class="">
                                                        <p class="tit">기본우대</p>
                                                    </dt>
                                                    <dd class="certify">
                                                        <div class="certifyWrap">
                                                            <ul>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel10" name="wel" value="10" data-name="인센티브"/>
                                                                        <label class="lb_tag" for="wel10">
                                                                            <span class="radiWrap">
                                                                                <span>인센티브</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel18" name="wel" value="18" data-name="우수사원 포상제도"/>
                                                                        <label class="lb_tag" for="wel18">
                                                                            <span class="radiWrap">
                                                                                <span>우수사원 포상제도</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel17" name="wel" value="17" data-name="장기근속 포상"/>
                                                                        <label class="lb_tag" for="wel17">
                                                                            <span class="radiWrap">
                                                                                <span>장기근속 포상</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel38" name="wel" value="38" data-name="야간근로수당"/>
                                                                        <label class="lb_tag" for="wel38">
                                                                            <span class="radiWrap">
                                                                                <span>야간근로수당</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel84" name="wel" value="84" data-name="보육수당"/>
                                                                        <label class="lb_tag" for="wel84">
                                                                            <span class="radiWrap">
                                                                                <span>보육수당</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel11" name="wel" value="11" data-name="정기보너스"/>
                                                                        <label class="lb_tag" for="wel11">
                                                                            <span class="radiWrap">
                                                                                <span>정기보너스</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                            </ul>
                                                        </div>
                                                    </dd>
                                                </dl>
                                                <dl class="detail_sec circleType">
                                                    <dt class="">
                                                        <p class="tit">기본우대</p>
                                                    </dt>
                                                    <dd class="certify">
                                                        <div class="certifyWrap">
                                                            <ul>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel9" name="wel" value="9" data-name="경조금"/>
                                                                        <label class="lb_tag" for="wel9">
                                                                            <span class="radiWrap">
                                                                                <span>경조금</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel59" name="wel" value="59" data-name="휴가비"/>
                                                                        <label class="lb_tag" for="wel59">
                                                                            <span class="radiWrap">
                                                                                <span>휴가비</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel12" name="wel" value="12" data-name="자녀교육비"/>
                                                                        <label class="lb_tag" for="wel12">
                                                                            <span class="radiWrap">
                                                                                <span>자녀교육비</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel25" name="wel" value="25" data-name="임직원 교육비"/>
                                                                        <label class="lb_tag" for="wel25">
                                                                            <span class="radiWrap">
                                                                                <span>임직원 교육비</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel24" name="wel" value="24" data-name="가족 의료비 지원"/>
                                                                        <label class="lb_tag" for="wel24">
                                                                            <span class="radiWrap">
                                                                                <span>가족 의료비 지원</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel13" name="wel" value="13" data-name="사내대출"/>
                                                                        <label class="lb_tag" for="wel13">
                                                                            <span class="radiWrap">
                                                                                <span>사내대출</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                            </ul>
                                                        </div>
                                                    </dd>
                                                </dl>
                                                <dl class="detail_sec circleType">
                                                    <dt class="">
                                                        <p class="tit">기본우대</p>
                                                    </dt>
                                                    <dd class="certify">
                                                        <div class="certifyWrap">
                                                            <ul>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel49" name="wel" value="49" data-name="휴식공간"/>
                                                                        <label class="lb_tag" for="wel49">
                                                                            <span class="radiWrap">
                                                                                <span>휴식공간</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel106" name="wel" value="106,107,108,110,111,590" data-name="장애인 편의시설"/>
                                                                        <label class="lb_tag" for="wel106">
                                                                            <span class="radiWrap">
                                                                                <span>장애인 편의시설</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel20" name="wel" value="20" data-name="기숙사 지원"/>
                                                                        <label class="lb_tag" for="wel20">
                                                                            <span class="radiWrap">
                                                                                <span>기숙사 지원</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel66" name="wel" value="66" data-name="사내 어린이집"/>
                                                                        <label class="lb_tag" for="wel66">
                                                                            <span class="radiWrap">
                                                                                <span>사내 어린이집</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel61" name="wel" value="61" data-name="헬스시설"/>
                                                                        <label class="lb_tag" for="wel61">
                                                                            <span class="radiWrap">
                                                                                <span>헬스시설</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel46" name="wel" value="46" data-name="숙소 지원"/>
                                                                        <label class="lb_tag" for="wel46">
                                                                            <span class="radiWrap">
                                                                                <span>숙소 지원</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                            </ul>
                                                        </div>
                                                    </dd>
                                                </dl>
                                                <dl class="detail_sec circleType">
                                                    <dt class="">
                                                        <p class="tit">기본우대</p>
                                                    </dt>
                                                    <dd class="certify">
                                                        <div class="certifyWrap">
                                                            <ul>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel22" name="wel" value="22" data-name="출퇴근 셔틀버스"/>
                                                                        <label class="lb_tag" for="wel22">
                                                                            <span class="radiWrap">
                                                                                <span>출퇴근 셔틀버스</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel51" name="wel" value="51" data-name="야간교통비 지급"/>
                                                                        <label class="lb_tag" for="wel51">
                                                                            <span class="radiWrap">
                                                                                <span>야간교통비 지급</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel14" name="wel" value="14" data-name="차량유류비"/>
                                                                        <label class="lb_tag" for="wel14">
                                                                            <span class="radiWrap">
                                                                                <span>차량유류비</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel50" name="wel" value="50" data-name="주차 지원"/>
                                                                        <label class="lb_tag" for="wel50">
                                                                            <span class="radiWrap">
                                                                                <span>주차 지원</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel70" name="wel" value="70" data-name="리프레시 휴가"/>
                                                                        <label class="lb_tag" for="wel70">
                                                                            <span class="radiWrap">
                                                                                <span>리프레시 휴가</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel6" name="wel" value="6" data-name="경조 휴가"/>
                                                                        <label class="lb_tag" for="wel6">
                                                                            <span class="radiWrap">
                                                                                <span>경조 휴가</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                            </ul>
                                                        </div>
                                                    </dd>
                                                </dl>
                                                <dl class="detail_sec circleType">
                                                    <dt class="">
                                                        <p class="tit">기본우대</p>
                                                    </dt>
                                                    <dd class="certify">
                                                        <div class="certifyWrap">
                                                            <ul>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel15" name="wel" value="15" data-name="사내 동호회"/>
                                                                        <label class="lb_tag" for="wel15">
                                                                            <span class="radiWrap">
                                                                                <span>사내 동호회</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel32" name="wel" value="32" data-name="점심 식사 지원"/>
                                                                        <label class="lb_tag" for="wel32">
                                                                            <span class="radiWrap">
                                                                                <span>점심 식사 지원</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel88" name="wel" value="88" data-name="임직원 할인"/>
                                                                        <label class="lb_tag" for="wel88">
                                                                            <span class="radiWrap">
                                                                                <span>임직원 할인</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel57" name="wel" value="57" data-name="휴양시설"/>
                                                                        <label class="lb_tag" for="wel57">
                                                                            <span class="radiWrap">
                                                                                <span>휴양시설</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel92" name="wel" value="92" data-name="해외연수"/>
                                                                        <label class="lb_tag" for="wel92">
                                                                            <span class="radiWrap">
                                                                                <span>해외연수</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="item">
                                                                        <input type="checkbox" class="inp_chk" id="wel7" name="wel" value="7" data-name="스톡옵션"/>
                                                                        <label class="lb_tag" for="wel7">
                                                                            <span class="radiWrap">
                                                                                <span>스톡옵션</span>
                                                                                <i class="ico close-ty1 ir">닫기</i>
                                                                            </span>
                                                                        </label>
                                                                    </li>
                                                            </ul>
                                                        </div>
                                                    </dd>
                                                </dl>
                                        </div>
                                        <div class="nano-pane" style={{display:'none'}}><div class="nano-slider" style={{height: '20', transform: 'translate(0, 0)'}}></div></div>
                                    </div>
                                </dd>
                            </dl>
                        </div>



                        <div id="devCndtDispArea" class="resultSetWrap">
                            <div class="resultSet" style={{display:'none'}}>
                                
                                <dl class="listWrap clear">
                                    <dt class="blind">선택한 조건 값</dt>
                                    <dd class="resultList">
                                        <ul id="toolitems" class="items clear"></ul>
                                        <div class="funBtn clear">
                                            
                                            <div class="item_more"><button type="button">+<em>13</em> 더보기<span class="ico"></span></button></div> 
                                            <div class="item_reset"><button type="reset"><span class="ico"></span>초기화</button></div>
                                            <div class="item_setSave">
                                                <button type="button"><span class="ico"></span>조건저장</button>
                                            </div>
                                        </div>
                                    </dd>
                                    <dd class="btnSet">
                                        <button type="button" class="btn_sch" id="dev-btn-search">
                                            <span>선택된 조건 검색하기</span>
                                        </button>
                                    </dd>
                                    <dd class="openSet">
                                        
                                        <button type="button" class="btn_open"><p>펼침</p><span class="ico"></span></button>
                                    </dd>
                                </dl>
                                <dl class="resultSch" style={{display:'none'}}>
                                    <dt>검색결과</dt>
                                    <dd id="dev-presearch-cnt"><em>155,555</em>건</dd>
                                </dl>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            </div>


</body>
</html>