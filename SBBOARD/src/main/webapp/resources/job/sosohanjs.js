import $ from"jquery";

// 자바스크립트 주석 템플릿 ie8에서 오류나서 replace로 변경
String.prototype.getTemplate = function () {
    var rtnStr = this;

    var version = JK5Cript.Agent.version();
    if (!JK5Cript.Agent.isIE || version > 8) {
        //rtnStr = rtnStr.match(/[^]*\/\*([^]*)\*\/\}$/)[1];
        rtnStr = rtnStr.replace("function () {/*", "").replace("*/}", "");
    } else {
        rtnStr = rtnStr.replace("(function () {/*", "").replace("*/})", "");
    }
    return rtnStr;
};

String.prototype.isNumber = function () {
    var s = this;
    s += ''; // 문자열로 변환
    s = s.replace(/^\s*|\s*$/g, ''); // 좌우 공백 제거
    if (s == '' || isNaN(s)) return false;
    return true;
}


app.SearchForm = JK5Cript.View.extend({
    el: '#bbArea',

    curPage: "",
    refPage: "",

    //검색조건저장 객체
    dataMap: {},

    //공고 기본 정보
    agiBaseInfo: {
        gNo: 0,
        giNo: 0,
        memId: undefined,
        memTypeCode: undefined,
        pageCode: undefined,
        positionCode: undefined,
        setBaseInfo: function (data) {
            if (!_.isUndefined(data) && data.indexOf('|') > -1) {
                var dataArr = data.split("|");
                this.gNo = Number(dataArr[0]);
                this.giNo = Number(dataArr[1]);
                this.memId = String(dataArr[2]);
                this.memTypeCode = String(dataArr[3]);
                //this.pageCode = String(dataArr[4]);
                this.positionCode = String(dataArr[5]);
                this.memSysNo = Number(dataArr[6]);
            }
        }
    },

    //클릭지연시간
    clickDelay: 1000,

    //저장지연시간
    saveDelay: 500,

    events: {
        // ================================== [시작] 기타 이벤트 ================================== //
        // Tab 선택
        'click .dev-tab > dt > .btn_tit': 'onTabToggle',
        // 하단 검색 조건 선택
        'click #toolitems li.item': 'onToolItemSelect',
        // 하단 초기화 선택
        'click .resultList div.item_reset button': 'onToolItemReset',
        // 하단 조건저장 선택
        'click .item_setSave button': 'onToolItemSave',
        // 검색
        'click #dev-btn-search': 'onSearch',
        // ================================== [종료] 기타 이벤트 ================================== //


        // ================================== [시작] 최근 검색한 조건 영역 관련 이벤트 ================================== //
        // 레이어 Toggle
        'click #devSearchedTerms, .devLyBtnClose_P': 'onRecentSearchedTermsToggle',
        // 레이어 닫기
        'click .devLyBtnClose_P': 'onRecentSearchedTermsClose',
        // 보관
        'click .dev-searched-keep': 'onRecentSearchedTermsKeep',
        // 삭제
        'click .dev-searched-delete': 'onRecentSearchedTermsDelete',
        // 선택
        'click .dev-condition-select': 'onRecentSearchedTermsSelect',
        // 페이징
        'click .dev-searched-page': 'onRecentSearchedPageSelect',
        // ================================== [종료] 최근 검색한 조건 영역 관련 이벤트 ================================== //

        // ================================== [시작] 탭 내부 검색 영역 관련 이벤트 ================================== //
        // 검색영역 닫기
        'click .dev-searched-terms-close': 'onSearchedTermsClose',
        // 검색영역 Focus
        'click input[type=search],.dev-ph-label,#lb_salary,#lb_exceptWord': 'onSearchFocus',
        // 검색영역 Blur
        'blur input[type=search],#lb_salary,#lb_exceptWord': 'onSearchBlur',
        // 검색어 입력
        'keyup input[type=search]': 'onSearchEnter',    // Enter Input
        'click .dev-search-ok': 'onSearchOk',           // Click Button
        // 검색항목 확인
        'click .dev-searched-terms-ok': 'onSearchedTermsOk',
        // 최근검색 항목 선택
        'click .dev-recent-searched-terms': 'onRecnetSearchedTermsSelect',
        // 검색결과 항목 선택(중분류 선택 시 키워드 disabled 처리)
        'click input[name=searched]': 'onSearchedItemSelect',
        // ================================== [종료] 탭 내부 검색 영역 관련 이벤트 ================================== //

        // ================================== [시작] 검색조건 관련 이벤트 ================================== //
        // 직무
        'click input[name=duty]': 'onDutyItemSelect',
        // 지역
        'click input[name=local]': 'onLocalItemSelect',
        // 경력
        'click input[name=career]': 'onCareerItemSelect',
        'blur input[name=career_text]': 'onCareerItemBlur',     // 시작 ~ 종료값 유효 확인
        // 학력
        'click input[name=edu]': 'onEduItemSelect',
        // 기업형태
        'click input[name=cotype]': 'onCoTypeItemSelect',
        // 고용형태
        'click input[name=jobtype]': 'onJobTypeItemSelect',
        // 산업
        'click input[name=industry]': 'onIndustryItemSelect',
        // 직급
        'click input[name=position1]': 'onPosition1ItemSelect',
        // 연령
        'blur input[name=age]': 'onAgeItemBlur',
        // 직책
        'click input[name=position2]': 'onPosition2ItemSelect',
        // 연봉
        'click input[name=pay]': 'onPayItemSelect',
        'blur input[name=payinput]': 'onPayItemBlur',
        'change select[name=paytype]': 'onPayItemChange',
        // 성별
        'click input[name=sex]': 'onSexItemSelect',
        // 우대전공
        'click input[name=major]': 'onMajorItemSelect',
        // 자격증
        'click input[name=license]': 'onLicenseSelect',
        // 우대조건
        'click input[name=pref]': 'onPrefItemSelect',
        // 복리후생
        'click input[name=wel]': 'onWelItemSelect',
        // 포함,미포함 구분 선택
        'change select[name=sortTab]': 'onIncludeChange',
        'keyup input[name=includeText]': 'onIncludeKeyUp',
        //'blur  input[name=includeText]': 'onIncludeBlur',
        'click #dev-gi-search': 'onGISearchSelect',
        //기업 형태 탭 선택
        'click ul[id^=anchorGICnt] li': 'onCoTypeTabSelect',
        // ================================== [종료] 검색조건 관련 이벤트 ================================== //
        'change #toolGI select[name=orderTab]': 'onGISortChange',   // 일반공고 정렬 변경
        'change #toolGI select[name=psTab]': 'onGIPageSizeChange', // 페이지 사이즈 변경

        'change #toolHR select[name=orderTab]': 'onHRSortChange',   // 파견대행 공고 정렬 변경
        'change #toolHR select[name=psTab]': 'onHRPageSizeChange', // 파견대행 페이지 사이즈 변경

        'change #toolHH select[name=orderTab]': 'onHHSortChange',   // 헤드헌팅 정렬 변경
        'change #toolHH select[name=psTab]': 'onHHPageSizeChange', // 헤드헌팅 페이지 사이즈 변경

        'click #lb_imtApply': 'onDirectApplySelect',     // 즉시지원 여부
        'click #lb_imtOnePick': 'onOnePickSelect',     // 합격축하금 여부
        'click #lb_imtConfirm': 'onConfirmSelect',       // 확인한공고제외 여부
        // 공고 리스트 페이징
        'click #dvGIPaging .tplPagination a': 'onGIListPageSelect',
        // 파견대행 공고 리스트 페이징
        'click #dvHRPaging .tplPagination a': 'onHRGIListPageSelect',
        // 헤드헌팅 공고 리스트 페이징
        'click #dvHHPaging .tplPagination a': 'onHHGIListPageSelect',
        // 즉시지원
        'click .btnChkApply': 'onMultiOnlinePassSelect', // 멀티
        'click .dev-btn-apply,  .dev-apply-span, .devOnlinePassm .lgiBtnDirect_2': 'onSingleOnlinePassSelect',   // 싱글
        'click  .lgiBtnDirect_2': 'onSingleOnlinePassSelectPlus',

        'click .dev-btn-apply-hr': 'onLinePassHR',   // 파견대행 즉시지원
        'click .dev-btn-email-hr': 'onEmailPassHR',   // 파견대행 이메일 지원

        "click .devHHOnPass": "onDirectHHPassClick", //HRP 즉시지원
        "click .devListCounseling": "onListCounselingClick",   //채용상담
        // 미리보기
        "click .devReadPreview": "onReadPreviewClick",
        // 스크랩
        'click .tplBtnScr': 'onMultiScrapSelect',  // 멀티
        'click .dev-scrap, .dev-btn-scrap': 'onSingleScrapSelect', // 싱글
        'click .dev-scrapplus': 'onSingleScrapSelectPlus',
        // 관심기업
        //'click .tplBtnFav': 'onMultiFavorSelect',  // 멀티(미사용)
        'click .dev-favor, .dev-btn-favor': 'onSingleFavorSelect', // 싱글
        //'click .dev-favorplus': 'onSingleFavorSelectPlus', // 미사용

        // 상품 개별 페이징
        'click p.paging a': 'onPaidPageSelect',
        // 공고 목록 체크 박스 선택
        'click #dev-gi-span-all': 'onGIListCheckAllSelect',
        'click span.dev-apply-check': 'onGIListApplySpanSelect',

        // 상품안내
        'click .dev-btn-paid-guide': 'onPaidGuideSelect',
        'click .dev-btn-paid-guide-close': 'onPaidGuideClose',
        'click .dev-btn-paid-guide-popup': 'onPadiGuidePopup',
        // 안심지원예약 선택
        'click .dev-safe-booking-span': 'onSafeBookingSelect',

        "click span.devZoom > a": "onShowGlassView",
        "click span.devIfrmZoom > a": "onShowIfrmGlassView",
        "click button.devHHAgiOpen": "onShowHHAgi",
        "mouseover .moreLayer": "onShowAddInfo",
        "mouseout .moreLayer": "onHideAddInfo",

        "click a.effectLog": "onCllickEffectLog",   //상품 효과
        "click a.optLog": "onCllickOptLog", //상품 로그
        "click #dev-gi-list a.normalLog": "onCllickLog", //클릭 로그
        "click .devApplyEtc": "onClickApplyEtc",   //기타 입사지원 클릭

        "click #dev-hr-gi-list a.normalLog": "onHHRecruitCllick", // 파견대행 공고 클릭

        "click .devLink": "onClickLink",
        "click .devPrdtGuideLyOpen": "onClickPrdtGuideLyOpen",
        "click .devPrdtGuideLyClose": "onClickPrdtGuideLyClose",

        "change input[name=devAdminMemTypeFilter]": "onSearch"
    },
    // 초기화(생성자 같은 역할)
    initialize: function (option) {

        // 대분류
        this.objCheckBoxMain = {
            dutyCtgrSelect: '',
            IndustryCtgrSelect: '',
            localCtgrSelect: '',
            majorCtgrSelect: ''
        }
        // 키워드
        this.objKeyword = {
            ikwrd: '',
            dkwrd: ''
        }
        // 일반 선택형
        this.objCheckBox = {
            dutySelect: '',
            localSelect: '',
            IndustrySelect: '',
            majorSelect: '',

            duty: '',
            local: '',
            industry: '',
            major: '',

            career: '',
            pay: '',
            edu: '',
            cotype: '',
            jobtype: '',
            position: '',
            license: '',
            pref: '',
            wel: ''
        };

        // 텍스트 형
        this.objText = {
            age: '',
            payinput: '',
            paytype: '',
            textinclude: '',
            textexclude: '',
            careerStart: '',
            careerEnd: ''
        };
        // 특수형(지하철)
        this.objEtc = {
            subwayUpp: '',
            subway: '',
            sex: ''
        }
        // 상품 나타냄 여부
        this.stopProduct = false;
        // 쿠키저장 여부
        this.isSave = true;
        // 최근 검색한 조건 페이징
        this.page = 1;
        // 초기 페이지 여부
        this.isStart = true;
        this.tabindex = 0;
        this.splitWord = '_';
        this.classWord = '.';
        this.idWord = '#';
        this.layerWord = 'ly'
        this.emptyWord = ' ';
        this.isAnchor = true;
        this.isOpenTab = false;
        // ajax 바쁜지
        this.isBusy = false;
        this.isBusy2 = false;
        // 초기화 여부
        this.isInit = false;
        // 검색 유형
        this.searchType = 'a';
        // 이전 성별 값
        this.prevSexValue = '';
        this.setObj = {};
        //검색조건 데이터맵 이전 값 저장용
        this.prevDataMap = {};
        // 검색조건 데이터맵 조건저장용
        this.savedDataMap = {};
        //아이템 selector
        this.items = $("#toolitems");
        this.templete_item = (function () {/*
            <li class="item">
                <input type="checkbox" class="inp_chk" id="{1}" name="{0}" value="{2}" data-name='{3}' data-type="{5}" />
                <label class="lb_tag" for="{1}">
                    <span class="radiWrap">
                        <span>{4}</span>
                        <i class="ico close-ty1 ir">닫기</i>
                    </span>
                </label>
            </li>
        */}).toString().getTemplate();

        this.templete_searched_item = (function () {/*
            <li class="item">
                <input type="checkbox" class="inp_chk" id="{0}" data-category="{1}" value="{2}" data-group="{3}" data-type="{4}" data-name="{5}" name="searched" />
                <label class="lb_tag" for="{0}">
                    <span class="radiWrap">
                        <span>{6}</span>
                        <i class="ico close-ty1 ir">닫기</i>
                    </span>
                </label>
            </li>
        */}).toString().getTemplate();

        this.templete_tool_item = (function () {/*
            <li class="{0} item" data-value="{1}" data-group="{3}" data-type="{4}">
                <button type="button">{2}<span class="ico">삭제</span></button>
            </li>
        */}).toString().getTemplate();

        _.bindAll(this, '_getListCnt');

        // 탭 내부 검색 영역 쿠키 데이터 설정
        this._initSearchedTerms();
        // 최초 데이터 설정
        this._bindBodyEvent();
        // 키보드 입력 숫자만
        this._keyOnlyNumber();

        var that = this;
        setTimeout(function () {
            var data = $("#content").attr('data-value-json'); //상세데이터
            var searchConditionJsonObj = JSON.parse(data);
            that._setData(searchConditionJsonObj, true);
            that.isStart = false;

            //that._getGIList({ isDefault: true });
        }, 1);

        that.agiBaseInfo.pageCode = option.pageCode;

        //해시가 현재 주소와 맞지 않으면 호출
        if (("onhashchange" in window)) {
            window.onhashchange = function () {
                if (window.location.hash == "") {
                    that._getGIList();
                } else if ($(window.location.hash).length == 0) {
                    that._hashChange(window.location.hash);
                } else {
                    window.location.href = window.location.hash;
                }
            }
        }
        else {
            var prevHash = window.location.hash;
            window.setInterval(function () {
                if (window.location.hash != prevHash) {
                    prevHash = window.location.hash;
                    if (window.location.hash == "") {
                        that._getGIList();
                    } else if ($(window.location.hash).length == 0) {
                        that._hashChange(window.location.hash).bind(that);
                    } else {
                        window.location.href = window.location.hash;
                    }
                }
            }, 100);
        }

        this._visitList();
    },
    _hashChange: function (hashStr) {
        var hashArray = hashStr.split('_');
        switch (hashArray[0]) {
            case "#anchorGICnt": this._getGIList({ page: hashArray[1] }); break;
            case "#anchorHHCnt": this._getHHGIList({ page: hashArray[1] }); break;
            case "#anchorHRCnt": this._getHRGIList({ page: hashArray[1] }); break;
        }
    },
    _keyOnlyNumber: function () {
        //숫자만 입력
        this.$el.on('keydown', 'input[name=career_text],input[name=age],input[name=payinput]', function (e) {
            var $target = $(e.target);
            if (!e.shiftKey && ((e.keyCode >= 48 && e.keyCode <= 57) ||   //숫자열 0 ~ 9 : 48 ~ 57
                (e.keyCode >= 96 && e.keyCode <= 105) ||   //키패드 0 ~ 9 : 96 ~ 105
                e.keyCode == 8 ||    //BackSpace
                e.keyCode == 46 ||    //Delete
                e.keyCode == 37 ||    //좌 화살표
                e.keyCode == 39 ||    //우 화살표
                e.keyCode == 35 ||    //End 키
                e.keyCode == 36 ||    //Home 키
                e.keyCode == 9       //Tab 키
            )) {
            } else {
                e.preventDefault();
                return false;
            }
        });
        // 숫자 유효성 확인
        this.$el.on('keyup keypress blur', 'input[name=career_text],input[name=age],input[name=payinput]', function (e) {
            e.target.value = e.target.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
        });
    },
    _getMainItemSetting: function (category) {
        var obj = {};

        if (category === 'local') {
            obj = {
                limit: 15,
                entire: true,
                alert_limit: '근무지역은',
                step: 2
            };
        } else if (category === 'duty') {
            obj = {
                limit: 20,
                entire: false,
                alert_limit: '직무는',
                step: 2,
                data_type: 'dkwrd'
            }
        } else if (category === 'industry') {
            obj = {
                limit: 20,
                entire: false,
                alert_limit: '산업은',
                step: 2,
                data_type: 'ikwrd'
            }
        } else if (category === 'major') {
            obj = {
                limit: 10,
                entire: true,
                alert_limit: '우대전공은',
                step: 2
            }
        }
        return obj;
    },
    _bindBodyEvent: function () {
        $('body').bind('click', this.onBodySelect);
    },
    // Body 관련 되서는 el 범위의 함수를 사용 못함
    onBodySelect: function (e) {
        // 최근 검색한 조건 레이어 영역이 아니면 닫기
        if ($(e.target).attr('id') !== 'devSearchedTerms' && $(e.target).closest('.recentSetting').length === 0 && $('#devSearchedTermsLayer').css('display') === 'block') {
            $('#devSearchedTerms').removeClass('on');
            $('#devSearchedTermsLayer').hide();
        }
        // 검색 영역 다른데 클릭 시 닫기
        if ($(e.target).closest('div.autoRecommand').length === 0) {
            $('div.autoRecommand').hide();
        }
    },
    // 카테고리별 노드 추적하여 데이터 없는 탭은 활성화 종료
    _nodeTracking: function (options) {
        options = _.isUndefined(options) ? {} : options;
        var opts = {
            category: '',   // 카테고리
            isSelect: false, // 직접 선택인지 비선택인지
            depth: 1        // 대분류인지 중분류인지
        };
        opts = _.defaults(options, opts);

        var arrCate = ['duty', 'industry', 'local', 'major'];

        if (!_.isUndefined(opts.category) && opts.category !== '') {
            arrCate = [opts.category];
        }
        for (var i = 0; i < arrCate.length; i++) {
            this._nodeTracking_exec(arrCate[i], opts);
        }
    },
    _nodeTracking_exec: function (category, opts) {
        var that = this;
        var $root = $(this.classWord + 'dev-' + category);
        var $main = $root.find(this.classWord + 'dev-main');
        var isOn = $root.hasClass('on');
        var isDelete = opts.depth === 1 && ((isOn && opts.isSelect) || (!isOn && !opts.isSelect));

        // 2~3 depth가 없는 항목(경력,학력,기업형태,고용형태,직급,자격증,우대조건,복리후생)
        if ($main.length === 0) {

        }
        // 직무, 근무지역, 산업, 우대전공
        else if ($main.length > 0) {
            var $ckb_main = $main.last().find('input:checked');
            if ($ckb_main.length === 0) {
                $main.find(this.classWord + 'nano').nanoScroller({ scrollTop: 0 });
            } else {
                // 1 depth
                $.each($ckb_main, function (i, e) {
                    var value = $(e).val();
                    var subLayerId = that._makeKey(category, value, 2, that.layerWord);
                    var $sly = $(that.idWord + subLayerId);
                    var $ckb_sub = $sly.find('input:checked');
                    // keyword 있는 탭만 실행
                    if (category === 'duty' || category === 'industry') {
                        $.each($ckb_sub, function (j, s) {
                            var keyLayerId = that._makeKey(category, $(s).val(), 3, that.layerWord);
                            var $kly = $(that.idWord + keyLayerId);
                            var $lb = $(s).siblings('label');

                            // keyword 선택 항목 없으면 2dpeth 활성화 종료
                            if ($kly.find('input:checked').length === 0) {
                                $(s).prop('checked', false);
                                if ($lb.hasClass('checked')) {
                                    $lb.removeClass('checked');
                                }
                                // 상위 탭에서 이벤트 발생시 2depth on 도 삭제
                                if (opts.depth === 1 && $lb.hasClass('on')) {
                                    $lb.removeClass('on');
                                    //$kly.hide();
                                }
                            }
                        });
                    }

                    $ckb_sub = $sly.find('input:checked');
                    // 2depth 선택 데이터가 없으면 => 1depth 선택 해제
                    if ($ckb_sub.length === 0) {
                        if (isDelete) {
                            $.each($root.find('input[value=' + value + ']'), function (i, e) {
                                var className = $(e).closest('div').attr('class');
                                if (typeof className === 'string' && className.match(/dev-main/)) {
                                    $(e).prop('checked', false).siblings('label').removeClass('on').removeClass('checked');
                                }
                            });
                        }

                        // 2depth hide
                        var ckbId = that._makeKey(category, $sly.attr('data-value'), 1);
                        var $ckb = $(that.idWord + ckbId);
                        if ($ckb.length === 1) {
                            if (!$ckb.siblings('label').hasClass('on')) {
                                $sly.hide();
                            }
                        }

                    }
                });

                $ckb_main = $main.last().find('input:checked')
                // sub, keyword 영역 show/hide 처리
                if ($ckb_main.length === 0) {
                    $root.find('dd' + that.classWord + 'empty').show();
                    //} else if ($ckb_main.length > 0) {                    
                } else if ($main.last().find('label.on').length === 0) {
                    $ckb_main.eq(0).siblings('label').removeClass('checked').addClass('on');
                    var subLayerId = that._makeKey(category, $ckb_main.eq(0).val(), 2, that.layerWord);
                    var $sly = $(that.idWord + subLayerId);
                    $sly.show();

                    var $ckb_sub = $sly.find('input:checked');
                    if ($ckb_sub.length > 0) {
                        var $ckb = that._get_on_ckb($ckb_sub);
                        var keyLayerId = that._makeKey(category, $ckb.val(), 3, that.layerWord);
                        var $kly = $(that.idWord + keyLayerId);
                        $('.dev-keyword').find('ul').hide();
                        $kly.show();
                        $root.find('dd' + that.classWord + 'empty').hide();
                    } else {
                        $root.find('dd' + that.classWord + 'empty').show();
                    }
                }
            }
        }
    },
    onSearch: function (e) {
        this.isSave = true;
        this._preventDefault(e);
        this._bindData();
        this.tabindex = 0;
        this._listOrderChange();
        // 검색 레이어 유지
        //this._tabOpen($(this.classWord + 'dev-tab'), true, false, true);
        this._changeBtnSearchUI(false);
        chkLeziBnnr();

        brazeSearchCondition();
    },
    _changeBtnSearchUI: function (stat) {
        if (stat) {
            var btnSearch = this.$el.find("#dev-btn-search");
            btnSearch.removeAttr("disabled");
            btnSearch.html("<span>선택된 조건 검색하기</span>");
        } else {
            var btnSearch = this.$el.find("#dev-btn-search");
            btnSearch.attr("disabled", "disabled");
            btnSearch.html("<span>검색완료</span>");
        }
    },

    _listOrderChange: function () {
        var that = this;
        var targetDuty = [1000196, 1000390, 1000313, 1000284, 1000287, 1000286, 1000288, 1000338, 1000341];
        var result = _.filter(targetDuty, function (dutyCode) {
            return that.$el.find("#toolitems li[data-group='duty" + dutyCode + "']").length > 0;
        });

        if (result.length > 0) {
            $("#dev-hh-gi-list").insertAfter("#dev-hr-gi-list");
        } else {
            $("#dev-hr-gi-list").insertAfter("#dev-hh-gi-list");
        }
    },
    _listCnt: function () {
        clearTimeout(this.setObj);
        this.setObj = setTimeout(this._getListCnt, 500);
    },
    _getListCnt: function () {
        var that = this;
        this._createData();

        var adminParam = this._getAdminMemTypeParams('?');

        var options = {
            url: "/Recruit/Home/_SearchCount/" + adminParam,
            data: { condition: that.dataMap },
            method: "post",
            cache: false,
            async: true
        };
        JK5Cript.Loader.async(options, function (response, succstat) {
            if (succstat) {
                if (!isNaN(response)) {
                    var cnt = Number(response);
                    $(that.idWord + 'dev-presearch-cnt').find('em').html(cnt.currency(3));
                }
            }
        });
    },
    _getAdminMemTypeParams: function (prefix) {
        var devMemTypeCodeArr = [];
        var devMemTypeCodes = $('input[name=devAdminMemTypeFilter]');
        $.each(devMemTypeCodes, function (i, v) {
            var me = $(this);
            if (me.is(':checked')) {
                devMemTypeCodeArr.push(me.attr('data-type'));
            }
        });

        var params = '';

        if (devMemTypeCodeArr.length > 0) {
            if (prefix) {
                params += prefix;
            }
            params += 'Mem_Type_Code=';
            params += devMemTypeCodeArr.join('&Mem_Type_Code=');
        }

        return params;
    },
    _getCodeText: function (groupCode, codeText) {
        var that = this;
        var rtnObj = {};
        var arrName = [], arrCode = [];
        if (this._isEmpty(groupCode) || this._isEmpty(codeText)) {

        }
        else {
            var options = {
                url: "/Recruit/Home/_searchNameList",
                data: { category: groupCode, keyword: codeText },
                method: "get",
                cache: true,
                async: false
            };
            JK5Cript.Loader.async(options, function (response, succstat) {
                if (succstat) {
                    var text = response;
                    arrCode = codeText.split(',');
                    if (!that._isEmpty(text)) {
                        arrName = text.split(',');
                    }
                    for (var i = 0; i < arrCode.length; i++) {
                        if (arrName.length > i) {
                            rtnObj[arrCode[i].trim()] = arrName[i].trim();
                        }
                    }
                }
            });
        }
        return rtnObj;
    },
    _searchTypeSetting: function (isEmpty) {
        var that = this;
        if (this.isStart) {
            var groupCode = this._getGroupCode(this.menuCode);
            if (this.searchType === 'b') {
                // 해외 지역
                if (this.menuCode == 'detail1') {
                    var local = $('ul.local').clone();
                    $('ul.local').eq(0).remove();
                    $('dl.loc div.dev-main').first().append(local);
                }
            }
            this._tabOpen($('dl' + this.classWord + 'dev-' + groupCode), isEmpty);
            $('.nano').nanoScroller();
        }
    },
    _getGroupCode: function (menuCode) {
        var groupCode = menuCode;
        if (_.isUndefined(menuCode)) {
            return false;
        }
        switch (menuCode) {
            case 'detail1': groupCode = 'local'; break;
            case 'detail2': groupCode = 'position'; break;
            case 'detail3': groupCode = 'major'; break;
            case 'detail4': groupCode = 'pref'; break;
            case 'detail5': groupCode = 'license'; break;
            case 'detail6': groupCode = 'wel'; break;
        }
        return groupCode;
    },
    _toolItemToggle: function () {
        var liCnt = this.items.find('li').length;

        if (liCnt === 0) {
            $('.resultSetWrap .resultSet').hide();
        } else {
            $('.resultSetWrap .resultSet').show();
        }
    },
    _getPropertyEmpty: function (obj, notCtgr) {
        var isEmpty = false;
        for (var property in obj) {
            if (_.isUndefined(property) || property === null) {
                continue;
            } else {
                var value = obj[property];
                if (_.isUndefined(value) || value === null || property === '') {
                    isEmpty = true;
                }
                // 대분류는 데이터 값 조회에서 제외
                else if ((notCtgr === true) && (property === 'dutyCtgrSelect' || property === 'IndustryCtgrSelect' || property === 'localCtgrSelect' || property === 'majorCtgrSelect')) {
                    isEmpty = true;
                }
                else {
                    isEmpty = false;
                    break;
                }
            }
        }
        return isEmpty;
    },
    _setData: function (searchJson, isDefault) {
        var that = this;
        this.searchType = this.isStart && searchJson['searchtype'] ? searchJson['searchtype'].toLowerCase() : this.searchType;
        this.menuCode = searchJson['menucode'];
        var objCheckBoxMain = JK5Cript.Objects.intersect(this.objCheckBoxMain, searchJson); // 대분류
        var objCheckBox = JK5Cript.Objects.intersect(this.objCheckBox, searchJson); // 중분류
        var objKeyword = JK5Cript.Objects.intersect(this.objKeyword, searchJson); // 키워드
        var objTextBox = JK5Cript.Objects.intersect(this.objText, searchJson); // 텍스트 박스
        var objEtc = JK5Cript.Objects.intersect(this.objEtc, searchJson); // 지하철,호선
        // 검색조건
        var obj = {};
        var isEmpty;
        JK5Cript.Objects.adds(obj, objCheckBoxMain, objCheckBox, objTextBox, objEtc, objKeyword);
        isEmpty = this._getPropertyEmpty(obj);

        that._searchTypeSetting(isEmpty);

        if (isEmpty) {
            // detail2 ~ detail6 까지는 GNB 앵커(제거 2017-08-28)
            // if(!_.isUndefined(this.menuCode) && this.menuCode !== null && this.menuCode.match(/detail/)){
            //     var dNum = Number(this.menuCode.replace('detail', ''));
            //     if(dNum > 1 && dNum < 7) window.location.href = '#dev-gnb-skip';
            // }
        }
        else {
            // 대분류만 들어왔을 경우 (ex => ...ctgr) 빈 값 처리에서 제외
            if (this._getPropertyEmpty(obj, true)) {
                // 이 경우에선 쿠키 저장 안함
                that.isSave = false;
            }
            // window.location.href = '#dev-gnb-skip';
            //$('.resultSetWrap .resultSet').show();
            // 대분류 처리
            for (var property in objCheckBoxMain) {
                if (!that._isEmpty(property)) {
                    var codes = objCheckBoxMain[property];
                    var name = property.replace(/CtgrSelect/gi, '').toLowerCase();
                    var opts = {
                        category: name,  // 분류
                        entire: false,   // 전체
                        tabOpen: true,   // 탭 열기 여부
                        scrollTop: true, // 스크롤이동 여부
                        isNodeTracking: false,
                        value: '',
                        isFirst: false
                    };
                    if (_.isArray(codes)) {
                        for (var i = 0; i < codes.length; i++) {
                            opts.entire = name === 'local' || name === 'major';
                            opts.isFirst = name === 'major' && (that.isStart);

                            opts.value = codes[i];
                            that._mainItemSelect(opts);
                        }
                    }
                }
            }

            // 전공 전체 선택 처리
            var majorCtgr = objCheckBoxMain['majorCtgrSelect'];
            if (!_.isUndefined(majorCtgr) && _.isArray(majorCtgr)) {
                for (var i = 0; i < majorCtgr.length; i++) {
                    id = that.idWord + that._makeKey('major', majorCtgr[i], 2);
                    $(id).trigger('click');
                }
                // 우대전공은 코드의 특이성 때문에
                // 현재의 예외처리에선 쿠키 저장
                that.isSave = true;
                id = '';
            }

            // 중분류 처리
            for (var property in objCheckBox) {
                if (!that._isEmpty(property)) {// && property !== 'local'){
                    var codes = objCheckBox[property];

                    if (property === 'dutySelect' || property === 'IndustrySelect' || property === 'localSelect' || property === 'majorSelect') {
                        property = property.replace('Select', '').toLowerCase();
                    }

                    if (!_.isUndefined(codes) && codes !== null) {
                        var arr = typeof codes === 'object' ? codes : codes.split(',');
                        for (var i = 0; i < arr.length; i++) {
                            var id = that.idWord + property + arr[i];
                            if (property === 'duty' || property === 'industry' || property === 'local') {
                                id = that.idWord + that._makeKey(property, arr[i], 2);
                            } else if (property === 'major') {
                                for (var j = 1; j < 8; j++) {
                                    id = that.idWord + property + that.splitWord + 'step2' + that.splitWord + j + that.splitWord + arr[i];
                                    if ($(id).length === 1) break;
                                }
                            }

                            if (property === 'position') {
                                id = that.idWord + property + '1' + arr[i] + ',' + that.idWord + property + '2' + arr[i];
                            }
                            // 대분류에서 지역 처리 함
                            if ($(id).length === 0) {
                                ////
                                var groupCode = property;
                                if (property === 'pref') {
                                    groupCode = 'Preference';
                                }
                                else if (property === 'wel') {
                                    groupCode = 'Welfare';
                                }
                                var names = that._getCodeText(groupCode, arr[i]);
                                if (!_.isEmpty(names)) {
                                    that._addItem(property, arr[i], names[arr[i]]);
                                }

                            } else {
                                $(id).trigger('click');
                            }
                        }
                    }
                }
            }
            // keyword 처리
            for (var property in objKeyword) {
                if (typeof property !== 'undefined' && property !== 'null') {
                    var codes = objKeyword[property];
                    var bizjobtype = '';
                    if (!_.isUndefined(codes) && codes !== null) {
                        var arr = codes.split(',');
                        for (var i = 0; i < arr.length; i++) {
                            if (property === 'dkwrd') {
                                property = 'duty';
                                bizjobtype = objCheckBox.duty;
                            } else if (property === 'ikwrd') {
                                property = 'industry';
                                bizjobtype = objCheckBox.industry;
                            }

                            id = that.idWord + that._makeKey(property, arr[i], 3);
                            $(id).trigger('click');
                        }
                    }
                }
            }
            // Text 처리
            for (var property in objTextBox) {
                if (typeof property !== 'undefined' && property !== 'null') {
                    var text = objTextBox[property];
                    // 연령
                    if (property === 'age' && text !== null) {
                        that._bindAgeItem(text);
                    }
                    // 연봉
                    else if (property === 'payinput' && text !== null) {
                        that._bindPayItem(undefined, text, searchJson['paytype'])
                    }
                    // 경력
                    else if ((property === 'careerStart' || property === 'careerEnd') && (searchJson['careerStart'] !== null || searchJson['careerEnd'] != null)) {
                        that._bindCareerItem(undefined, searchJson['careerStart'], searchJson['careerEnd']);
                    }
                    // 포함/제외 단어
                    else if (property.match(/clude/) && text && text !== null && text !== '') {
                        var selector = 'input[name=includeText]';
                        that._bindIncludeItem(selector, text, property.toLowerCase() === 'textinclude' ? true : false);
                    }
                }
            }
            // etc 처리(지하철, 성별)
            for (var property in objEtc) {
                if (property) {
                    var code = objEtc[property];
                    if (!_.isUndefined(code) && code !== null && code !== '') {
                        if (property === 'sex') {
                            that.prevSexValue = code;
                            that.onSexItemSelect(undefined, code);
                        } else if (property === 'subway' || property === 'subwayUpp') {
                            // 카테고리별 키워드 분류
                            var codeName = property === 'subway' ? 'Subway' : 'SubwayCtgr';
                            // 코드별 이름 가져오기
                            var objName = that._getCodeText(codeName, code);
                            if (code.indexOf(',') > -1) {
                                var arrCode = code.split(',');
                                $.each(arrCode, function (i, e) {
                                    var code = arrCode[i];
                                    var text = objName[code];
                                    that._addItem(property, code, text);
                                });
                            } else {
                                that._addItem(property, code, objName[code]);
                            }
                        }
                    }
                }
            }
            if (_.isUndefined(isDefault)) {
                that._bindData();
            }
        }

        chkLeziBnnr();
    },
    onToolItemSelect: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);
        var category = $selector.attr('class').replace('item', '').trim();
        var group = $selector.attr('data-group');
        var value = $selector.attr('data-value');
        var groupCode = group.replace(category, '');
        groupCode = groupCode.split('|').length === 2 ? groupCode.split('|')[1] : groupCode;
        var step = category === 'duty' || category === 'industry' ? 3 : 2;
        var layerId = this.idWord + this._makeKey(category, groupCode, step, this.layerWord);
        var id = this.idWord + this._makeKey(category, value, step);
        var isSelect = false;

        // 포함,제외
        if (category.indexOf('clude') > -1) {
            this._removeItem(category);
            return false;
        }
        // 일반
        if (category + value === group) {
            if ($(layerId).length === 0) {
                id = this.idWord + category + value;
                // 지하철역 및 기타 사항
                if (id.indexOf('sex') > -1) {
                    this.onSexItemSelect(undefined, value);
                } else if ($(id).length === 0) {
                    this._removeItem(category, value);
                }
                else {
                    $(id).trigger('click');
                }
            }
            else {
                // 1~3 depth 구조
                $(layerId).find(id).prop('checked', true).trigger('click');
                isSelect = $('#local_step1_' + value).siblings('label').hasClass('on') ? false : true;
            }
        }
        // keyword
        else {
            $(layerId).find(id).prop('checked', false).siblings('label').removeClass('on');

            var $ul = $(id).closest('ul');
            var checkedLength = $ul.find('input[name=' + category + ']:checked').length;
            // 모든 아이템 해제
            if (checkedLength === 0) {
                var groupId = this.idWord + this._makeKey(category, groupCode, step - 1);
            }
            this._removeItem(category, value);
            $selector.prop('checked', false).blur();
        }
        // 노드 이벤트 타기
        that._nodeTracking({ isSelect: isSelect, depth: 1 });
    },
    _toolItemReset: function () {
        var that = this;
        this._removeItem();
        var $tab = $(this.classWord + 'dev-tab');
        $tab.removeClass('on').find('input[type=text]').val('');
        $tab.find('input[type=search]').val('').siblings('label').show();
        $tab.find('input[type=checkbox],input[type=radio]').prop('checked', false)
            .siblings('label').removeClass('on');
        $tab.find('dd' + this.classWord + 'empty').show().siblings(this.classWord + 'nano').hide();
        $(this.idWord + 'lb_imtApply').prop('checked', false).siblings('label').removeClass('on');
        $(this.idWord + 'lb_imtOnePick').prop('checked', false).siblings('label').removeClass('on');
        $(this.idWord + 'lb_imtConfirm').prop('checked', false).siblings('label').removeClass('on');
        // 데이터 초기화
        this.prevDataMap = {};
        $(this.classWord + 'item_setSave button').removeClass('on')
        // 스크롤 리셋
        this._scrollReset();
    },
    onToolItemReset: function (e) {
        this.isInit = true;
        $(e.currentTarget).blur();
        this._toolItemReset();
        this._createData();
        this._getGIList({ isDefault: true });
        this._getThemeBannerList({ isDefault: true });
        this._getHHGIList({ isDefault: true });
        this._getHRGIList({ isDefault: true });
        this._allProductList();
        this._listOrderChange();
        chkLeziBnnr();
    },
    onToolItemSave: function (e) {
        var $btn = $(e.currentTarget);
        $btn.blur();

        var that = this;
        var option = {
            condition: that.dataMap,
            isKeep: true
        };

        if (!this.isBusy) {
            this.isBusy = true;
            that._createData();
            if (that._getPropertyEmpty(that.dataMap)) {
                alert('검색조건을 선택해주세요.');
            } else if (JK5Cript.Objects.compare(that.savedDataMap, that.dataMap)) {
                alert('이미 저장한 조건 입니다.');
            }
            else {
                that._ajaxSave('/Recruit/Home/setSearchConditionSave', option, function (response) {
                    var code = that._getRecentSearchedErrorMessage(response);
                    // 성공
                    if (code > 0) {
                        // 성공
                        that.page = 1;
                        alert('조건을 저장했습니다.');
                        $btn.addClass('on');
                        that.savedDataMap = that.dataMap;

                        that._getConditionListCount();
                    } else if (code === 0) {
                        // error
                        alert('저장 실패했습니다 : 관리자에게 문의주세요.');
                    }
                });
            }
            that.isBusy = false;
        } else {
            alert('저장중 입니다. 잠시만 기다려주세요.');
        }
    },
    _getConditionListCount: function () {
        var that = this;
        var ajaxOption = {
            url: '/recruit/home/getRecentSearchConditionCount',
            method: 'post',
            cache: false,
            async: false
        };

        $.ajax(ajaxOption).done(function (res) {
            var cnt = 0;
            if (!_.isUndefined(res) && !isNaN(res)) {
                cnt = Number(res);
                if (cnt >= 0) {
                    // 성공
                    $(that.idWord + 'devSearchedTerms strong').text(cnt + '건');
                }
            }
        });
    },
    onIndustryItemSelect: function (e) {
        var $selector = $(e.currentTarget);
        var $div = $selector.closest('div');
        var value = $selector.val();
        var typeClass = $div.attr('class');
        var obj = {
            selector: e.currentTarget,
            limit: 20,
            category: 'industry',
            entire: true,
            alert_limit: '산업은',
            step: 2,
            scrollTop: false,
            value: value,
            data_type: 'ikwrd',
            ga_action: '상세검색_산업'
        };

        if (typeof typeClass === undefined) {
            return;
        } else {
            // 대분류
            if (typeClass.match(/dev-main/)) {
                obj.entire = false;
                this._mainItemSelect(obj);
            }
            // 중분류
            else if (typeClass.match(/dev-sub/) && this._bindItem(obj)) {
                // UI 및 데이터 이벤트
                this._subItemSelect(obj.category, value);
                // 검색조건 관리
                $selector.blur().prop('checked', true);
            }
            // 키워드
            else if (typeClass.match(/dev-keyword/)) {
                obj.step = 3;
                // 검색조건 관리
                $selector.siblings('label').addClass('on');
                this._bindKeyword(obj);
            }
        }
    },
    onDutyItemSelect: function (e) {
        var $selector = $(e.currentTarget);
        var $div = $selector.closest('div');
        var typeClass = $div.attr('class');
        var obj = {
            selector: e.currentTarget,
            limit: 20,
            category: 'duty',
            entire: true,
            tabOpen: true,
            scrollTop: false,
            alert_limit: '직무는',
            step: 2,
            value: $selector.val(),
            data_type: 'dkwrd',
            ga_action: '상세검색_직무'
        };

        if (e.originalEvent.isTrusted == false) {
            // 최근 검색한 조건을 통해서 들어왔을 때 개수 제한 해제
            delete obj['limit'];
        }

        if (typeof typeClass === undefined) {
            return;
        } else {
            // 대분류
            if (typeClass.match(/dev-main/)) {
                obj.entire = false;
                this._mainItemSelect(obj);
            }
            // 중분류
            else if (typeClass.match(/dev-sub/) && this._bindItem(obj)) {
                // UI 및 데이터 이벤트
                this._subItemSelect(obj.category, obj.value);
                // 검색조건 관리
                $selector.blur().prop('checked', true);
            }
            // 키워드
            else if (typeClass.match(/dev-keyword/)) {
                obj.step = 3;
                // 검색조건 관리
                $selector.siblings('label').addClass('on');
                this._bindKeyword(obj);
            }
        }
    },
    onLocalItemSelect: function (e) {
        var $selector = $(e.currentTarget);
        var $div = $selector.closest('div');
        var value = $selector.val();
        var typeClass = $div.attr('class');
        var obj = {
            selector: e.currentTarget,
            limit: 15,
            category: 'local',
            entire: true,
            tabOpen: true,
            isFirst: true,
            scrollTop: false,
            alert_limit: '근무지역은',
            step: 2,
            value: value,
            ga_action: '상세검색_지역'
        };

        if (typeof typeClass === undefined) {
            return;
        } else {
            // 대분류
            if (typeClass.match(/dev-main/)) {
                this._mainItemSelect(obj);
            }
            // 중분류
            else if (typeClass.match(/dev-sub/)) {
                // 검색조건 관리
                this._bindKeyword(obj);
            }
        }
    },
    onCareerItemSelect: function (e) {
        // 신입과 경력무관 외의 항목 선택 시 직접입력 값 삭제
        var career = $(e.currentTarget).val();
        if (career !== '1' && career !== '8') {
            this._removeItem('career_text');
            $('input[name=careerText]').val('');
        }
        this._bindSingleItem({
            selector: e.currentTarget, limit: 5, category: 'career', alert_limit: '경력은', ga_action: '상세검색_경력'
        });
    },
    onCareerItemBlur: function (e) {
        this._bindCareerItem(e);
    },
    _bindCareerItem: function (e, careerStart, careerEnd) {
        var $selector;
        var $input = $('input[name=career_text]');
        var start = $input.eq(0).val(), end = $input.eq(1).val();
        var priodChar = '~', priodWord = '년', priodName = '';

        if (careerStart === undefined && careerEnd === undefined) {
            $selector = $(e.currentTarget);
        } else {
            $selector = $input.eq(0);
            start = careerStart;
            end = careerEnd;
        }

        if (start !== '' || end !== '') {

            start = _.isUndefined(start) || start == null || isNaN(start) || start === '' ? 0 : Number(start);
            end = _.isUndefined(end) || end == null || isNaN(end) || end === '' ? 0 : Number(end);

            // 경력 범위 문자열 생성
            if (start === 0 && end !== 0) {
                priodName = priodChar + end + priodWord;
            } else if (start !== 0 && end === 0) {
                priodName = start + priodWord + priodChar;
            } else if (start !== 0 && end !== 0) {
                // From ~ To 확인
                if (start > end) {
                    this._preventDefault(e);
                    alert('시작경력이 종료경력보다 큽니다.');
                    $selector.val('');
                    return false;
                }
                priodName = start + priodChar + end + priodWord;
            }
            priodName = '경력' + priodName
            // 신입, 경력을 제외한 나머지 항목 비선택 처리
            $.each($('input[name=career]:checked'), function (i, e) {
                if ($(e).val() !== '1' && $(e).val() !== '8') {
                    $(e).trigger('click');
                }
            });
            // 하단 검색 영역 추가
            this._removeItem('career_text');
            this._addItem('career_text', start + this.splitWord + end, priodName);

            //Google Tag Manager
            GA_Event('상세검색_PC', '상세검색_경력', (start > 0 ? start + "년" : "") + "~" + (end > 0 ? end + "년" : ""));
        } else {
            this._removeItem('career_text');
        }
    },
    onEduItemSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 6, category: 'edu', alert_limit: '학력은', ga_action: '상세검색_학력'
        });
    },
    onCoTypeItemSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 10, category: 'cotype', alert_limit: '기업형태는', ga_action: '상세검색_기업형태'
        });
    },
    onJobTypeItemSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 5, category: 'jobtype', alert_limit: '고용형태는', ga_action: '상세검색_고용형태'
        });
    },
    onPosition1ItemSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 5, category: 'position1', alert_limit: '직급은', ga_action: '상세검색_직급'
        });
    },
    onAgeItemBlur: function (e) {
        var value = $(e.currentTarget).val();
        this._bindAgeItem(value);
        GA_Event('상세검색_PC', '상세검색_연령', value)
    },
    _bindAgeItem: function (value) {
        if (value === undefined || value === '') {
            this._removeItem('age');
        } else {
            $('input[name=age]').val(value);
            var name = value + '세';
            this._removeItem('age');
            this._addItem('age', value, name);
        }
    },
    onPosition2ItemSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 4, category: 'position2', alert_limit: '직책은', ga_action: '상세검색_직책'
        });
    },
    onPayItemSelect: function (e) {
        // 직접입력 내용 삭제
        this._removeItem('payinput');
        $('#lb_salary').val('').siblings('label').show();
        this._bindSingleItem({
            selector: e.currentTarget, limit: 6, category: 'pay', alert_limit: '연봉은', ga_action: '상세검색_연봉'
        });
    },
    onPayItemBlur: function (e) {
        this._bindPayItem(true);
    },
    onPayItemChange: function (e) {
        this._bindPayItem(false);
    },
    _bindPayItem: function (isInput, payinput, paytype) {
        var pay, typeCode, typeName, totalCode, totalName, guideName;
        var $txb = $('input[name=payinput]');
        var $sel = $('select[name=paytype]');


        if (_.isUndefined(isInput) && !_.isUndefined(payinput) && payinput !== '') {
            $txb.siblings('label').hide();
        }

        if (payinput === undefined || paytype === undefined) {
            pay = $txb.val();
            typeCode = $sel.val();
        } else {
            pay = payinput;
            typeCode = paytype;
            isInput = true;
            $txb.val(pay);
            $sel.val(typeCode);
        }
        typeName = $('select[name=paytype] option[value=' + typeCode + ']').text();
        guideName = typeCode < 3 ? '만원 이상' : '원 이상';
        totalCode = typeCode + this.splitWord + pay;
        totalName = typeName + this.emptyWord + pay + guideName;

        if (!isInput) {
            $sel.siblings('p').text(guideName);
        }

        if (pay !== '') {
            $('input[name=pay]:checked').prop('checked', false).siblings('label').removeClass('on');
            this._removeItem('pay');
            this._removeItem('payinput');
            this._addItem('payinput', totalCode, totalName);

            //Google Tag Manager
            GA_Event('상세검색_PC', '상세검색_연봉', totalName);
        }
    },
    onSexItemSelect: function (e, code) {
        var $selector, isChecked, code;
        if (!_.isUndefined(code)) {
            $selector = $('input[name=sex][value=' + code + ']');
            isChecked = true;
            code = code;
        } else {
            $selector = $(e.currentTarget);
            isChecked = $selector.is(':checked');
            code = $selector.val();
        }
        this._removeItem('sex');
        if (isChecked) {
            // 선택 항목을 다시 선택 시 모두 비선택 처리
            if (code == this.prevSexValue && $selector.siblings('label').hasClass('on')) {
                $('input[name=sex]').prop('checked', false).siblings('label').removeClass('on');
                $selector.blur();
            } else {
                $('input[name=sex]').siblings('label').removeClass('on');
                $selector.prop('checked', true).siblings('label').addClass('on');
                this._addItem('sex', $selector.val(), $selector.siblings('label').text());
                GA_Event('상세검색_PC', '상세검색_성별', $selector.siblings('label').text().trim())
            }
        }
        else {
            $('input[name=sex]').siblings('label').removeClass('on');
            $selector.prop('checked', false);
        }
        this.prevSexValue = code;
    },
    onMajorItemSelect: function (e) {
        var $selector = $(e.currentTarget);
        var $div = $selector.closest('div');
        var value = $selector.val();
        var typeClass = $div.attr('class');
        var isFirst = true;
        if (this.isOpenTab) {
            isFirst = false;
            this.isOpenTab = false;
        }

        var obj = {
            selector: e.currentTarget,
            limit: 10,
            category: 'major',
            entire: true,
            scrollTop: false,
            alert_limit: '우대전공은',
            step: 2,
            value: value,
            isFirst: isFirst,
            ga_action: '상세검색_우대전공'
        };

        if (typeof typeClass === undefined) {
            return;
        } else {
            // 대분류
            if (typeClass.match(/dev-main/)) {
                this._mainItemSelect(obj);
            }
            // 중분류
            else if (typeClass.match(/dev-sub/)) {
                $selector.blur();
                // 검색조건 관리
                this._bindKeyword(obj);
            }
        }
    },
    onLicenseSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 10, category: 'license', alert_limit: '자격증은', ga_action: '상세검색_자격증'
        });
    },
    onPrefItemSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 10, category: 'pref', alert_limit: '우대조건은', ga_action: '상세검색_우대조건'
        });
    },
    onWelItemSelect: function (e) {
        this._bindSingleItem({
            selector: e.currentTarget, limit: 10, category: 'wel', alert_limit: '복리후생은', ga_action: '상세검색_복리후생'
        });
    },
    onIncludeChange: function (e) {
        // var $txb = $(e.currentTarget).closest('div.exceptSec').find('input[name=includeText]')
        // this._bindIncludeItem($txb.selector);
        var $selector = $(e.currentTarget);
        var text = $selector.val() == 1 ? '포함단어' : '제외단어';
        $selector.siblings('label').text(text);
    },
    onIncludeKeyUp: function (e) {
        if (e.keyCode === 13) {
            this._bindIncludeItem(e.currentTarget);
            this.isSave = true;
            this._bindData();
            this._tabOpen($(this.classWord + 'dev-tab'), true, false, true);
        }
    },
    onIncludeBlur: function (e) {
        this._bindIncludeItem(e.currentTarget);
    },
    onGISearchSelect: function (e) {
        this._bindIncludeItem($(this.idWord + 'lb_exceptWord'));
        this._getGIList();
        this._getHRGIList();
        this._getHHGIList();
    },
    onCoTypeTabSelect: function (e) {
        this.tabindex = $(e.currentTarget).data("tab-index");
        this._getGIList();
        if (Number(this.tabindex) == 0) {
            this._setAgiListClickLog("10");
        }
        else if (Number(this.tabindex) < 5) {
            this._setAgiListClickLog(this.tabindex);
        }
    },
    // 포함/미포함 처리
    _bindIncludeItem: function (selector, text, isInclude) {
        var $txb = $(selector);
        var $sel = $txb.closest('div.exceptSec').find('select');
        var name = '(포함)', type = 'textinclude';
        var value = !_.isUndefined(text) && text != null && text !== '' ? text : $txb.val();
        value = value.replaceAll("\"|\'", "").replaceAll("<", "&lt;").replaceAll(">", "&gt;");

        var ga_label = "포함단어_" + value;

        if (value !== '') {
            if ($sel.val() === '2' || (!_.isUndefined(isInclude) && !isInclude)) {
                name = '(제외)';
                type = 'textexclude';
                ga_label = "제외단어_" + value;
            }

            this._removeItem(type, undefined, false);
            this._addItem(type, value, name + value);

            GA_Event('상세검색_PC', '채용공고', ga_label)
            //검색 완료
            this._changeBtnSearchUI(false);

            var inText = this.items.find('.textinclude').attr('data-value');
            var exText = this.items.find('.textexclude').attr('data-value');
            inText = _.isUndefined(inText) ? '' : inText;
            exText = _.isUndefined(exText) ? '' : exText;
            if (inText !== '' && exText !== '' && inText === exText) {
                alert('포함단어와 미포함 단어가 같을 수 없습니다.');
                this._removeItem(type, undefined, false);
                return false;
            }
        }
    },
    _ajaxSave: function (url, sendData, context, delay) {
        if (_.isUndefined(sendData)) {
            sendData = this.dataMap;
        }
        if (_.isUndefined(delay)) {
            delay = this.saveDelay;
        }
        JK5Cript.Common.stopDelay();
        JK5Cript.Common.delay(function () {
            var ajaxOption = {
                url: url,
                data: sendData,
                method: 'post',
                cache: false
            };

            $.ajax(ajaxOption).done(function (res) {
                (context)(res);
            });

            //JK5Cript.Loader.async(ajaxOption, context);
        }.bind(this), delay);
    },
    _createData: function () {
        var that = this;
        var dataMap = {};
        $.each(this.items.find('li.item'), function (i, e) {
            var cls = $(e).attr('class').replace('item', '').trim();
            var code = $(e).attr('data-value');
            var dataType = $(e).attr('data-type');

            // 특수 career_text, payinput, position1~2, subwayctgr, major
            switch (cls) {
                case 'career_text':
                    var arr = code.split('_');
                    if (arr.length === 2) {
                        dataMap['careerEnd'] = arr[1];
                        cls = 'careerStart';
                        code = arr[0];
                    }
                    break;
                case 'payinput':
                    var arr = code.split('_');
                    if (arr.length === 2) {
                        dataMap['paytype'] = arr[0];
                        code = arr[1];
                    }
                    break;
                case 'position1':  // 직급
                case 'position2':
                    cls = 'position';
                    break; // 직책
                case 'subwayctgr': cls = 'subwayUpp'; break; // 호선
                case 'major':
                    if (code.indexOf('_') < 0) {
                        cls = 'majorCtgr';
                    } else {
                        code = code.split('_')[1];
                    }
                    break;
            }

            if (!_.isUndefined(dataType) && dataType !== '') {
                cls = dataType;
            }

            dataMap[cls] = dataMap[cls] ? dataMap[cls] + ',' + code : code;
        });

        dataMap["menucode"] = that.menuCode;

        this.dataMap = dataMap;
    },
    _bindData: function (reload) {

        reload = typeof reload === 'undefined' ? true : false;

        var that = this;

        JK5Cript.Common.stopDelay();
        var delay = JK5Cript.Common.delay(function () {
            var isEmpty = that._getPropertyEmpty(that.dataMap);

            if (!that.isSave) {
                that.isSave = true;
            } else {

                if (that.isStart) {
                    that.isStart = false;
                } else {
                    // 데이터 생성
                    that._createData();
                    if (!isEmpty) {
                        that._ajaxSave('/Recruit/Home/setSearchConditionSave', { condition: that.dataMap }, function (response) {
                            if (response) {
                                if (response.indexOf('html') > -1) {
                                    alert(response);
                                }
                                else if (response.isNumber()) {
                                    // 성공
                                    that.page = 1;
                                    var cnt = Number(response);
                                    that._getConditionListCount();
                                } else {
                                    // 실패
                                }
                            }
                        });
                    }
                }
            }
            if (reload) {
                that._getGIList({ isDefault: true });
                that._getThemeBannerList({ isDefault: true });
                that._getHHGIList({ isDefault: true });
                that._getHRGIList({ isDefault: true });
                that._allProductList();
            }

            // 현재데이터를 이전데이터에 저장
            that.prevDataMap = that.dataMap;
        }.bind(this), this.clickDelay);
    },
    _bindSingleItem: function (options) {
        var opts = {
            selector: '',   // 셀렉터
            limit: 100,     // 제한
            category: '',   // 분류
            alert_limit: '',// 제한 개수 문구
            scrollTop: this.isStart,
            ga_action: ''
        };
        opts = _.defaults(options, opts);

        var $selector = $(opts.selector);
        var $ul = $selector.closest('ul');
        var value = $selector.val();
        var name = $selector.attr('data-name');
        var isChecked = $selector.is(':checked');

        if (isChecked) {
            // 제한 개수 방지
            if (this.items.find(this.classWord + opts.category).length >= opts.limit && isChecked) {
                alert(opts.alert_limit + ' 최대 ' + opts.limit + '개 까지 선택 가능합니다.');
                $selector.prop('checked', false);
                $selector.siblings('label').removeClass('on');
                $selector.blur();
                return;
            }
            this._addItem(opts.category, value, name);
            GA_Event('상세검색_PC', opts.ga_action, name);
            if ($ul.find('input:checked').length > 0) {
                var scrollTop = opts.scrollTop ? { scrollTo: $ul.find('input:checked').eq(0).closest('li') } : {};
                $ul.closest('.nano').nanoScroller(scrollTop);
            }

            this._tabOpen($ul.closest(this.classWord + 'dev-tab'), false, true);
        } else {
            this._removeItem(opts.category, value);
        }
        $selector.blur();
    },
    _bindItem: function (options) {
        var opts = {
            selector: '',    // 셀렉터
            limit: 100,        // 제한
            category: '',    // 분류
            alert_limit: '', // 제한 개수 문구
            step: 3,
            entire: false    // 전체
        };
        opts = _.defaults(options, opts);

        var isContinue = true;
        var $selector = $(opts.selector);
        var $ul = $selector.closest('ul');
        var $checkbox = $ul.find('input[type=checkbox]');
        var value = $selector.val();
        var name = $selector.attr('data-name');
        var isChecked = $selector.is(':checked');
        var cls = this.classWord + opts.category;

        if (typeof value === 'undefined' || value.isEmpty()) {
            isContinue = false;
        }

        // 제한 개수 방지
        if (this.items.find(cls).length >= opts.limit && isChecked) {
            alert(opts.alert_limit + ' 최대 ' + opts.limit + '개 까지 선택 가능합니다.');
            $selector.prop('checked', false);
            $selector.siblings('label').removeClass('on');
            $selector.blur();
            isContinue = false;
        }

        return isContinue;

        // 중복 기능 제거 => LMJ 2018-02-03
        //if (isChecked) {
        //    this._addItem(opts.category, value, name);
        //}
        //else {

        //}
    },
    // 1. 검색 제한 개수 확인 후 아이템 추가
    _bindKeyword: function (options) {
        var opts = {
            selector: '',    // 셀렉터
            limit: 100,      // 제한
            category: '',    // 분류
            alert_limit: '', // 제한 개수 문구
            step: 3,
            entire: false,   // 전체
            data_type: undefined,
            ga_action: ''
        };
        opts = _.defaults(options, opts);

        var $selector = $(opts.selector);
        var $ul = $selector.closest('ul');
        var $root = $ul.closest('dl.dev-tab');
        var $checkbox = $ul.find('input[type=checkbox]');
        var category = opts.category;
        var value = $selector.val();
        var name = $selector.attr('data-name');
        var isChecked = $selector.is(':checked');
        var cls = this.classWord + category;
        var id = this.idWord + this._makeKey(category, value, opts.step);
        var groupCode = $ul.attr('data-value');

        opts.data_type = $selector.attr('data-type');

        // 제한 개수 방지
        if (this.items.find(cls).length >= opts.limit && isChecked) {
            alert(opts.alert_limit + ' 최대 ' + opts.limit + '개 까지 선택 가능합니다.');
            $selector.prop('checked', false);
            $selector.siblings('label').removeClass('on');
            $selector.blur();
            return;
        }

        var all = '', allId = '';
        if (opts.entire) {
            all = $checkbox.eq(0).val();
            allId = this.idWord + this._makeKey(category, all, opts.step);
        }
        var checkedLength = $ul.find('input[name=' + category + ']:checked').not(allId).length;

        var bizjobtypeCode = $(allId).closest("ul").data("value");
        var BctgrCode = $("#" + category + "_step2_" + bizjobtypeCode).closest("ul").data("value");
        var BctgrName = "";
        if (category == "major") {
            BctgrName = $selector.closest("ul").find("input[value=" + $selector.closest("ul").data("value") + "]").data("name");
        } else {
            BctgrName = $(".ly_sub").find("input[value=" + BctgrCode + "]").siblings("label").find(".radiWrap").find("span").text();
        }

        if (isChecked) {
            var isAllSelect = $checkbox.length - 1 === checkedLength;
            // 전체 선택 or 전체를 제외한 모두를 선택 시
            if (opts.entire && value === all || isAllSelect) {
                $.each(this.items.find(cls), function (i, e) {
                    if ($(e).attr('data-value') !== all && $(e).attr('data-group') === (category + all)) {
                        $(e).remove();
                    }
                });
                $checkbox.prop('checked', false).siblings('label').removeClass('on');
                var allName = $(allId).prop('checked', true).attr('data-name');
                this._addItem(category, all, allName, undefined, opts.data_type, true);

                GA_Event('상세검색_PC', opts.ga_action, (category == "duty" || category == "industry" ? (BctgrName + " > ") : ("")) + allName + " > 전체");
                if (isAllSelect) $selector.blur();
            }
            else {
                $.each(this.items.find(cls), function (i, e) {
                    if ($(e).attr('data-value') === all) {
                        $(e).remove();
                    }
                });
                if (opts.entire) $(allId).prop('checked', false).siblings('label').removeClass('on');
                this._addItem(category, value, name, groupCode, opts.data_type, true);

                if (category == "duty" || category == "industry" || category == "major") {
                    GA_Event('상세검색_PC', opts.ga_action, BctgrName + " > " + name);
                } else {
                    GA_Event('상세검색_PC', opts.ga_action, name);
                }
            }
            // 상위 아이템 checked 안되 있으면 checked 처리
            $(this.idWord + this._makeKey(category, groupCode, opts.step - 1)).prop('checked', true).siblings('label').addClass('on');
        }
        else {
            // 아이템 해제
            this._removeItem(category, value);
            $selector.prop('checked', false).blur().siblings('label').removeClass('on');

            var groupId = this.idWord + this._makeKey(category, groupCode, opts.step - 1);
            var $groupUl = $(groupId).closest('ul');
            if (value === all) {
                var className = '', step = 0;
                if (category === 'local' || category === 'major') {
                    className = '/dev-main/';
                    step = 2;
                }
                if (category === 'duty' || category === 'industry') {
                    className = '/dev-sub/';
                    step = 3;
                }
                if (className !== '') {
                    // step2 비활성화
                    // $.each($root.find('input[value=' + value + ']'), function(i, e){
                    //     var className = $(e).closest('div').attr('class');
                    //     if(typeof className === 'string' && className.match(className)){
                    //         $(e).prop('checked', false).siblings('label').removeClass('on').removeClass('checked');
                    //     }
                    // });
                }
                // 선택 step2가 없다면
                if ($groupUl.find('input:checked').length === 0) {
                    // 직무 선택 가이드 영역 표시(데이터 영역 감춤)
                    if (category === 'duty') {
                        // $ul.hide().closest('.has-scrollbar').hide().siblings('.empty').show();
                    }
                } else {
                    // 현재 레이어 비활성이면 다른 화성화 레이어 보여줌
                    // if(step !== 0){
                    //     var $groupCkb = $groupUl.find('input:checked').eq(0);
                    //     var lyId = this.idWord + this._makeKey(category, $groupCkb.val(), step, this.layerWord);
                    //     $(lyId).siblings().hide();
                    //     $(lyId).show();
                    // }
                }
            } else {
                // 전체 항목이 있고 선택 항목이 없다면 전체 항목을 다시 선택
                // if(checkedLength === 0 && opts.entire){
                //     $checkbox.eq(0).trigger('click');
                // }
            }
        }
    },
    _mainItemSelect: function (options) {
        var opts = {
            category: '',     // 분류
            entire: false,    // 전체
            tabOpen: false,   // 탭 열기 여부
            scrollTop: true, // 스크롤이동 여부
            isFirst: this.isStart,
            isNodeTracking: !this.isStart,
            value: ''
        };
        opts = _.defaults(options, opts);

        var category = opts.category;
        var value = opts.value;
        if (!_.isUndefined(opts.selector) && !$(opts.selector).attr('id').match(/step1/)) {
            opts.scrollTop = true;
        }

        var that = this;
        // $태그 - 모든 $태그는 input에서 역추적
        var $ckb = $(this.idWord + this._makeKey(category, value, 1)) // 선택 checkbox
            , $li = $ckb.closest('li.item')    // 선택 li
            , $ul = $li.closest('ul')
            , $root = $li.closest('dl.dev-tab')  // 최상위 Tab
            , $step2 = $root.find('.dev-sub');    // 중분류 항목 상위 div

        // 상단 탭 선택 => 대분류 선택
        if (opts.tabOpen && !$root.hasClass('on')) {
            this._tabOpen($root, false, true, opts.isNodeTracking);
        }
        // 대분류 중분류 키워드 정리 함수
        if (opts.isNodeTracking) {
            this._nodeTracking({ category: category, isSelect: true, depth: 1 });
        }

        $root.find(this.classWord + 'dev-main input[type=checkbox]:checked').siblings('label').addClass('checked').removeClass('on');

        $.each($root.find('input[value=' + value + ']'), function (i, e) {
            var className = $(e).closest('div').attr('class');
            if (typeof className === 'string' && className.match(/dev-main/)) {
                $(e).prop('checked', true).siblings('label').addClass('on').removeClass('checked');
            }
        });

        // nanoScroller 위치 조정
        this._nanoScroll($ul, opts.scrollTop);

        // 하위 항목 데이터 처리
        var data = $li.attr('data-value-json');
        var cls = this.classWord + 'dev-' + category;
        if (data !== undefined && data !== '') {
            var jsonObj = JSON.parse(data);
            var list = jsonObj['subList'];
            var id = this._makeKey(category, jsonObj['groupCode'], 2, this.layerWord);
            var length = list === undefined ? 0 : list.length;
            var groupName = jsonObj['groupName'];
            var sort = jsonObj['groupOrder'];
            var $ul = $('<ul />');

            if ($step2.find(this.idWord + id).length === 0) {
                var code, name, cntName, giCnt, cnt, isAdd;
                for (var i = 0; i < length; i++) {
                    giCnt = list[i].giCnt;
                    code = list[i].subCode;
                    name = list[i].subName;
                    cnt = '';
                    isAdd = !(category === 'local' && giCnt == 0);
                    if (giCnt !== '' && giCnt !== undefined) {
                        if (giCnt > 0) {
                            cnt = '<em class="num">(' + giCnt.currency() + ')</em>';
                        } else {
                            cnt = '<em class="num">(0)</em>';
                        }
                    }
                    cntName = name + cnt;
                    // 전체를 사용하는 영역은 첫 번째 항목을 전체로 바꿈
                    if (i === 0 && opts.entire) {
                        code = list[i].groupCode;
                        name = groupName;
                    }
                    // 근무지역일 때 해외 지역은 상위 지역명 안 붙임
                    else if (category === 'local' && sort < 19) {
                        name = groupName + '>' + name;
                    }

                    if (isAdd || i === 0) $ul.append(that.templete_item.format(category, this._makeKey(category, code, 2), code, name, cntName, ''));
                }
                $ul.attr({ 'id': id, 'data-value': value });
                $step2.append($ul);
            }
            // 근무지역 기본 영역 삭제
            if (category === 'local') {
                $step2.closest('.has-scrollbar').show().siblings('.empty').hide();
            }

            $step2.find('ul').hide();
            $ul = $step2.find(this.idWord + id);
            $ul.show();
            $ul.closest('.nano').nanoScroller();
            //scrollTop = {};
            scrollTop = { scrollTop: 0 };
            if ($ul.find('input:checked').length === 0) {
                //scrollTop = { scrollTop: 0 };
            } else if ($ul.find('input:checked').length > 0) {
                var $step2_ckb = $ul.find('input:checked').eq(0);
                if ($step2_ckb.closest('li').index() > 0) {
                    scrollTop = { scrollTo: $step2_ckb.closest('li') };
                }
                // 여기서 해당 아이템 다시 선택?
                if (category === 'duty' || category === 'industry') $step2_ckb.trigger('click');
            }
            $ul.closest('.nano').nanoScroller(scrollTop);

            // 근무지역은 대분류 선택 시 선택 데이터가 없다면 중분류 전체 선택
            if (opts.isFirst) {
                if (category === 'local' || category === 'major') {
                    setTimeout(function () {
                        if ($ul.find('input:checked').length === 0) {
                            $ul.find('input').eq(0).trigger('click');
                        }
                    }, 1);
                }
            }

            // 대분류 선택시 키워드 영역 보임 여부 설정
            if (category === 'duty' || category === 'industry') {

                var $lis = $root.find('.dev-sub').find('ul:visible').find('li')
                var keywordValue = $root.find('.dev-keyword ul:visible').attr('data-value');
                var arrPartCode = $.map($lis, function (n, i) {
                    return $(n).find('input').val()
                });
                var isHere = false

                for (var i in arrPartCode) {
                    if (arrPartCode[i] === keywordValue) {
                        isHere = true;
                        break;
                    }
                }

                // 키워드 영역 삭제
                if (typeof keywordValue !== 'undefined' && !isHere) {
                    $root.find('.dev-keyword ul').hide().end().find('.empty').show()
                }
            }

            // if(opts.isFirst && $ul.find('input:checked').length === 0){
            //     if(category === 'major' && window.location.href.toLowerCase().indexOf('majorctgr') > -1){
            //         setTimeout(function () { $ul.find('input').eq(0).trigger('click'); }, 1);
            //     }
            // }
        } else {

        }
    },
    _nanoScroll: function ($ul, isScroll) {
        // nanoScroller 위치 조정
        var scrollTop = { scrollTop: 0 }
        $ul.closest('.nano').nanoScroller();
        if (isScroll && $ul.find('input:checked').length > 0) {
            if ($ul.find('input:checked').eq(0).closest('li').index() > 0) {
                scrollTop = { scrollTo: $ul.find('input:checked').eq(0).closest('li') };
            } else {
                scrollTop = { scrollTop: 0 }
            }
            $ul.closest('.nano').nanoScroller(scrollTop);
        }
    },
    _subItemSelect: function (category, value, isScroll) {
        var that = this;
        var opts = {
            category: category,                       // 분류
            entire: false,                            // 전체 여부
            scrollTop: this.isStart ? true : isScroll, // 스크롤이동 여부, 최초 페이지 로드시에는 데이터 있는 위치로 스크롤 이동 시킴
            //isFirst: this.isStart,                    // 하위 레이어 첫번째 데이터 선택 여부
            isFirst: true,
            value: value                              // 선택 값
        };

        var ga_action = "상세검색_" + (category == "duty" ? "직무" : category == "industry" ? "산업" : "");

        //opts = _.defaults(options, opts);
        // $태그 - 모든 $태그는 input에서 역추적
        var $ckb = $(this.idWord + this._makeKey(category, value, 2)) // 선택 checkbox
            , $li = $ckb.closest('li.item')      // 선택 li
            , $root = $li.closest('dl.dev-tab')    // 최상위 Tab
            , $step3 = $root.find('.dev-keyword');  // 키워드 항목 상위 div
        var isChecked = $ckb.is(':checked');

        $root.find(this.classWord + 'dev-sub input[type=checkbox]:checked').siblings('label').addClass('checked').removeClass('on');

        if (!this.isStart) {
            this._nodeTracking({ category: category, isSelect: true, depth: 2 });
        }

        // 중분류 선택 처리
        $ckb.prop('checked', true).siblings('label').addClass('on').removeClass('checked');

        // 하위 항목 데이터 처리
        //검색 조건 리스트 가져오기
        var options = {
            url: "/Recruit/Home/_GetKeywordList",
            data: { partcode: value },
            method: "get",
            cache: true,
            async: false
        };
        var cls = this.classWord + 'dev-' + category;
        var id = this._makeKey(category, value, 3, this.layerWord);
        var highName = $ckb.attr('data-name');

        // 가이드 P Hide, Layer Show
        $step3.closest('.has-scrollbar').show().siblings('.empty').hide();
        $step3.find('ul').hide();
        $step3.find(this.idWord + id).show();

        // nanoScroller 위치 조정
        this._nanoScroll($li.closest('ul'), opts.scrollTop);

        // $li.closest('.nano').nanoScroller();
        // if(opts.scrollTop){
        //     var $ckb_step3 = $li.closest('ul').find('input:checked');
        //     if($ckb_step3.length > 0){
        //         if($ckb_step3.eq(0).closest('li').index() > 0){
        //             $li.closest('.nano').nanoScroller({scrollTo : $ckb_step3.eq(0).closest('li')});
        //         }
        //     }
        // }

        //if ($step3.find(this.idWord + id).length === 0 && !that.isBusy) {
        if ($step3.find(this.idWord + id).length === 0) {
            that.isBusy = true;
            JK5Cript.Loader.async(options, function (response, succstat) {
                that.isBusy = false;
                if (succstat) {
                    var list = JSON.parse(response);
                    var length = list === undefined ? 0 : list.length;
                    var $ul = $('<ul />');
                    var code, name, giCnt, cntName, dataType, dataName;
                    for (var i = 0; i < length; i++) {
                        giCnt = list[i].KeyCnt;
                        code = list[i].Key_No;
                        name = list[i].Keyword;
                        cnt = '';

                        // 전체 일 때
                        if (code === '0') {
                            code = list[i].Part_Code;
                            name = '전체';
                            dataType = '';
                            dataName = highName;
                        } else {
                            dataType = category === 'duty' ? 'dkwrd' : 'ikwrd';
                            dataName = highName + ' > ' + name;
                        }

                        cnt = '<em class="num">(' + giCnt.currency() + ')</em>';
                        //if (giCnt !== '' && giCnt !== undefined) {
                        //    if (giCnt > 0) {
                        //        cnt = '<em class="num">(' + giCnt.currency() + ')</em>';
                        //    } else {
                        //        continue;
                        //    }
                        //} 직무산업 테스트용
                        cntName = name + cnt;

                        if (name == "전체") {
                            $ul.append(that.templete_item.format(category, that._makeKey(category, code, 3), code, dataName, cntName, dataType));
                        } else {
                            $ul.append(that.templete_item.format(category, that._makeKey(category, list[i].Part_Code + code, 3), list[i].Part_Code + code, dataName, cntName, dataType));
                        }
                        //$ul.append(that.templete_item.format(category, that._makeKey(category, code, 3), code, dataName, cntName, dataType));
                    }
                    if ($ul.find('li').length === 0) {
                        $ul.append(that.templete_item.format(category, that._makeKey(category, value, 3), value, highName, '전체<em class="num">(0)</em>', ''));
                    }
                    // 정보 입력
                    $ul.attr({ 'id': id, 'data-value': value, 'data-name': highName }).addClass('clear');
                    // 신규 ul 생성 후 모든 ul 안보임
                    $step3.append($ul).find('ul').hide();
                    // 첫 번째 아이템 선택
                    if (opts.isFirst) {
                        var $first = $step3.find(that.idWord + id).find('input[type=checkbox]').eq(0);
                        $first.prop('checked', true).siblings('label').addClass('on');
                        that._addItem(category, $first.val(), $first.attr('data-name'), undefined, undefined, true);

                        var BctgrCode = $("#" + category + "_step2_" + $first.val()).closest("ul").data("value");
                        var BctgrName = $(".ly_sub").find("input[value=" + BctgrCode + "]").siblings("label").find(".radiWrap").find("span").text();
                        GA_Event('상세검색_PC', ga_action, BctgrName + " > " + $first.attr('data-name') + " > 전체");
                    }
                    // 신규 생성 ul 보임
                    $step3.find(that.idWord + id).show();
                    $step3.closest(that.classWord + 'nano').nanoScroller();
                }
            });
        } else {
            // 기존에 데이터 존재
            // 선택 값이 없으면 첫 번째 아이템 선택
            if (opts.isFirst && $step3.find(this.idWord + id).find('input:checked').length === 0) {
                var $first = $step3.find(that.idWord + id).find('input[type=checkbox]').eq(0);
                $first.prop('checked', true).siblings('label').addClass('on');
                that._addItem(category, $first.val(), $first.attr('data-name'), undefined, undefined, true);
            }
        }
    },
    // 검색조건저장 데이터와 현재 데이터 비교
    _compareSaveData: function () {
        this._createData();
        if (!_.isEmpty(this.dataMap)) {
            if (JK5Cript.Objects.compare(this.savedDataMap, this.dataMap)) {
                $(this.classWord + 'item_setSave button').addClass('on')
            } else {
                $(this.classWord + 'item_setSave button').removeClass('on')
            }
        }
    },
    _addItem: function (category, value, name, groupCode, dataType, notTap) {
        var exists = false;
        $.each(this.items.find(this.classWord + category), function (i, e) {
            if ($(e).attr('data-value') === value) {
                exists = true;
            }
        });
        if (_.isUndefined(groupCode)) {
            groupCode = category + value;
        } else {
            groupCode = category + groupCode;
        }

        dataType = _.isUndefined(dataType) ? '' : dataType;

        if (!exists && typeof value !== 'undefined') {
            var liHtml = this.templete_tool_item.format(category, value, name, groupCode, dataType);
            if (this.items.find(this.classWord + category).length === 0) {
                this.items.append(liHtml);
            } else {
                this.items.find(this.classWord + category).last().after(liHtml);
            }
        }

        this._toolItemToggle();
        // 리스트 개수 가져오기
        this._listCnt();
        // 조건저장 데이터 비교
        this._compareSaveData();
        // 버튼 위치 변경
        this._toolItemSizeToggle();
        // 탭 오픈
        if (!_.isUndefined(category) && _.isUndefined(notTap)) {
            switch (category) {
                case 'position1': ;
                case 'positoin2': ;
                case 'age': ;
                case 'pay': ;
                case 'payinput': ;
                case 'sex': category = 'position'; break;
            }
            if ($(this.classWord + 'dev-' + category).length > 0) {
                this._tabOpen($(this.classWord + 'dev-' + category), false, true);
            }
        }
        //검색버튼 활성화
        this._changeBtnSearchUI(true);
    },
    _removeItem: function (category, value, isReload) {
        var that = this;

        var removeItemIndex = -1;
        var $removeLi;

        if (_.isUndefined(isReload)) {
            isReload = true;
        }

        if (_.isUndefined(category)) {
            this.items.find('li').remove();
        }
        else if (_.isUndefined(value)) {
            $.each(this.items.find('li'), function (i, e) {
                if ($(e).hasClass(category)) {
                    $(e).remove();
                }
            });
        } else {
            $.each(this.items.find('li'), function (i, e) {
                if ($(e).attr('data-value') === value && $(e).hasClass(category)) {
                    $removeLi = $(e);
                }
            });

            if (typeof $removeLi !== 'undefined') {
                $removeLi.remove();
            }
        }

        this._toolItemToggle();
        // 리스트 개수 가져오기
        this._listCnt();
        // 조건저장 데이터 비교
        this._compareSaveData();
        if (this.items.find('li').length == 0 && isReload == true) {
            this.isSave = false;
            this._bindData(false);
            this._getGIList({ isDefault: true });
            this._getThemeBannerList({ isDefault: true });
            this._getHHGIList({ isDefault: true });
            this._getHRGIList({ isDefault: true });
            this._allProductList();
            this._listOrderChange();
        }
        this._toolItemSizeToggle();
        //검색버튼 활성화
        this._changeBtnSearchUI(true);
    },
    _toolItemSizeToggle: function () {
        var height = Number(this.items.css('height').replace(/px/gi, ''));
        if (height >= 50) {
            $('dd.btnSet').addClass('on');
        } else {
            $('dd.btnSet').removeClass('on');
        }
    },
    _makeKey: function (category, value, step, etc) {
        var id = '';
        if (typeof step === 'undefined') {
            id = category + this.splitWord + value;
        } else {
            id = category + this.splitWord + 'step' + step + this.splitWord + value;
        }
        // 기타 문자열 추가
        if (typeof etc === 'string' || typeof etc === 'number') {
            id += this.splitWord + etc;
        }
        return id;
    },
    onRecentSearchedTermsToggle: function (e) {
        var $layer = $('#devSearchedTermsLayer');
        var display = $layer.css('display')
        // 목록 불러오기
        if (display === 'none') {
            $(this.idWord + 'devSearchedTerms').addClass('on');
            this._getRecentSearchedTermsList(1);
        } else {
            this._closeRecentSearchedLayer();
        }
    },
    onRecentSearchedTermsClose: function (e) {
        this._closeRecentSearchedLayer();
    },
    _closeRecentSearchedLayer: function () {
        $(this.idWord + 'devSearchedTerms').removeClass('on');
        $('#devSearchedTermsLayer').hide();
    },
    _toggleRecentSearchedLayer: function () {
        $('#devSearchedTermsLayer').toggle();
    },
    _getRecentSearchedTermsList: function (page) {
        var that = this;
        if (!that.isBusy) {
            that.isBusy = true;
            this._ajaxSave('/Recruit/Home/GetSearchConditionList', { page: page }, function (response) {
                that.isBusy = false;
                $('#devSearchedTermsLayer').html(response).show();
            }, 0);
        }
    },
    // 검색조건 보관/취소
    onRecentSearchedTermsKeep: function (e) {
        this._preventDefault(e);
        var that = this;
        var $btn = $(e.currentTarget);
        var $ckb = $btn.find('input[type=checkbox]');
        var isChecked = $ckb.is(':checked');
        var url, msg;
        var index = $ckb.attr('data-value');
        var cookieIndex = 0, searchNo = 0;
        if (index.length > 0 && index.split('|').length === 2) {
            cookieIndex = index.split('|')[0];
            searchNo = index.split('|')[1];
        }

        if (isChecked) {
            msg = '취소를';
            url = '/Recruit/Home/SetSearchConditionCancel';
        } else {
            msg = '보관을';
            url = '/Recruit/Home/SetSearchConditionKeep';
        }

        this._ajaxSave(url, { 'cookieIndex': cookieIndex, 'searchNo': searchNo }, function (response) {
            var code = that._getRecentSearchedErrorMessage(response);
            // 성공
            if (code > 0) {
                // label class add/remove
                that._classChangeToggle($ckb.siblings('label'), !isChecked, 'chk');
                code = isChecked ? code + '|' : '|' + code;
                $ckb.prop('checked', !isChecked).attr('data-value', code);
                $ckb.closest('td').find('.dev-searched-delete').attr('data-value', code);
            } else if (code === 0) {
                // error
                alert(msg + ' 실패했습니다 : 관리자에게 문의주세요.');
            }
        }, 0);
    },
    _classChangeToggle: function ($target, isAdd, className) {
        if (isAdd) {
            $target.addClass(className);
        } else {
            $target.removeClass(className);
        }
    },
    // 최근 검색조건 에러 메시지 반환
    _getRecentSearchedErrorMessage: function (code) {
        var rtnNum = 0;
        if (_.isUndefined(code) || isNaN(code)) {

        }
        else {
            code = Number(code);
            rtnNum = code;
            if (code > 0) {
                rtnNum = code;
            } else if (code === -1) {
                if (confirm('개인회원 로그인 후 이용해주세요.\r\n로그인 페이지로 이동하시겠습니까? ')) {
                    var loc = document.location;
                    window.location.href = '/Login/Login_TOT.asp?re_url=' + encodeURIComponent(loc.pathname + loc.search + loc.hash);
                }
            } else if (code === -2) {
                alert('"조건저장" 은 개인회원 로그인 후 사용 가능합니다.');
            } else if (code === -3) {
                alert('최대 저장가능 개수는 5개 입니다.\r\n최근 검색한 조건을 확인하세요.');
            } else if (code === -4) {
                rtnNum = 999;
            }
        }
        return rtnNum;
    },
    // 검색조건 삭제
    onRecentSearchedTermsDelete: function (e) {
        if (confirm('삭제하시겠습니까?')) {
            var that = this;
            var index = $(e.currentTarget).attr('data-value');
            var cookieIndex = 0, searchNo = 0;
            if (index.length > 0 && index.split('|').length === 2) {
                cookieIndex = index.split('|')[0];
                searchNo = index.split('|')[1];
            }
            this._ajaxSave('/Recruit/Home/SetSearchConditionRemove', { 'cookieIndex': cookieIndex, 'searchNo': searchNo }, function (response) {
                var code = that._getRecentSearchedErrorMessage(response);
                // 성공
                if (code >= 0) {
                    // 뭐 리스트 다시 불러와
                    alert('삭제했습니다.');
                    // 리스트 카운트
                    that._getConditionListCount();
                    that._getRecentSearchedTermsList(1);
                } else {
                    // error
                    alert('삭제를 실패했습니다 : 관리자에게 문의주세요.');
                }
            }, 0);
        }
    },
    onRecentSearchedTermsSelect: function (e) {
        this._toolItemReset();
        this.isStart = true;
        this.isSave = false;

        var $td = $(e.currentTarget);
        var data = $td.attr('data-value-json');
        var searchConditionJsonObj = JSON.parse(data);

        this._setData(searchConditionJsonObj);
        this.isStart = false;
        this._closeRecentSearchedLayer();
    },
    onRecentSearchedPageSelect: function (e) {
        var $page = $(e.currentTarget);
        var page = $page.attr('data-page');
        this.page = page;
        this._getRecentSearchedTermsList(page);
        this._preventDefault(e);
    },
    onTabToggle: function (e) {
        this._tabOpen($(e.currentTarget).closest('dl.dev-tab'), true, undefined, true);
    },
    onSearchFocus: function (e) {
        // input 일 때 label 숨김
        if (e.currentTarget.tagName.toLowerCase() === "input") {
            $(e.currentTarget).siblings('label').hide();
        } else {
            // label일 때 자신 숨기고 input에 포커스
            $(e.currentTarget).hide().siblings('input[type=search],input[type=text]').focus();
        }
    },
    onSearchBlur: function (e) {
        var _$txb = $(e.currentTarget);
        var value = _$txb.val();
        if (value === undefined || value === '') {
            _$txb.siblings('label.dev-ph-label').show();
        }
    },
    onSearchOk: function (e) {
        this._searchOk($(e.currentTarget).siblings('input[type=search]'));
    },
    onSearchEnter: function (e) {
        var $txb = $(e.currentTarget);
        if ($(e.currentTarget).val() !== '') {
            this._searchOk($txb, $txb.val());
        } else {
            $txb.siblings('div.autoRecommand').addClass('on').find('dl').hide();
        }
    },
    _searchOk: function (_$txb, keyword) {
        var that = this;
        var keyword = keyword;
        JK5Cript.Common.stopDelay();
        JK5Cript.Common.delay(function () {
            var _$div = _$txb.siblings('div.autoRecommand'); // 검색 결과 layer
            var _$list = _$div.find('ul.list');              // 검색 결과 list
            var category = _$txb.attr('data-type');          // 카테고리
            keyword = _.isUndefined(keyword) ? _$txb.val() : keyword;                       // 검색어
            // 검색어 확인
            if (keyword === undefined || keyword === '') {
                alert('검색어를 입력해주세요.');
                _$txb.siblings('label.dev-ph-label').show();
                return false;
            }
            //검색 조건 리스트 가져오기
            var options = {
                url: "/Recruit/Home/_searchList",
                data: { category: category, keyword: keyword },
                method: "get",
                cache: true
            };
            that.isBusy = true; // ajax 통신 중이면 미처리
            JK5Cript.Loader.async(options, function (response, succstat) {

                if (succstat) {
                    var jsonData = JSON.parse(response);

                    _$div.show();
                    if (jsonData.length === 0) {
                        // 검색결과 없음 표시
                        _$div.addClass('on').find('dl').hide();
                    } else {
                        _$list.html('');
                        for (var i in jsonData) {
                            // 검색 데이터
                            var obj = jsonData[i];
                            var totalName = '',
                                code = obj.KeyValue,
                                name = obj.KeySearchColunm,
                                groupCode = obj.KeyExcludeValue,
                                groupName = obj.KeySearchExcludeText,
                                matchedKeyword = obj.MatchingKeyword,
                                type = obj.KeyName;

                            if (code !== undefined && code !== '') {
                                category = category.toLowerCase();
                                // 데이터 처리
                                var ckbId = that._makeKey(category, code, 4);

                                replaceKeyword = name.replace(matchedKeyword, '<em>' + matchedKeyword + '</em>')
                                if (groupName === undefined || groupName === '' || groupName === null) {
                                    totalName = replaceKeyword;
                                } else if (category === 'license') {
                                    totalName = replaceKeyword + ' | ' + groupName;
                                } else {
                                    totalName = groupName + ' > ' + replaceKeyword;
                                }
                                name = category.toLowerCase() === 'local' ? totalName : name;
                                // id, name, value, data-group, span text
                                if (type == "Keyword") {
                                    var bizJobtype = groupCode.split('|')[1];
                                    _$list.append(that.templete_searched_item.format(bizJobtype + ckbId, category, bizJobtype + code, groupCode, type, name, totalName));
                                } else {
                                    _$list.append(that.templete_searched_item.format(ckbId, category, code, groupCode, type, name, totalName));
                                }
                            }
                        }
                        // 검색결과 영역 표시
                        _$div.removeClass('on').find('dl').show();
                        _$list.closest('.nano').nanoScroller();
                        _$list.closest('.nano').nanoScroller({ scrollTop: 0 });
                    }
                }
                that.isBusy = false;
            });
        }.bind(this), 100);
    },
    onSearchedTermsClose: function (e) {
        this._closeSearchedTermsLayer(e);
    },
    _closeSearchedTermsLayer: function (e) {
        $(e.currentTarget).closest('div.autoRecommand').hide().siblings('input[type=search]').val('');
    },
    onSearchedTermsOk: function (e) {
        var that = this;
        var $btnOk = $(e.currentTarget);
        var $txb = $btnOk.closest('div.autoRecommand').siblings('input[type=search]');
        // 검색 결과 중 선택 항목 추출
        var $list = $btnOk.closest('dl').find('ul.list li.item input[type=checkbox]:checked');
        if ($list.length > 0) {
            $.each($list, function (i, e) {
                var $e = $(e);
                var code = $e.val(),                                   // 코드
                    id = '', step = 2,
                    name = $e.attr('data-name'),
                    value = $e.attr('data-value'),
                    category = $e.attr('data-category').toLowerCase(), // 탭 구분
                    groupCode = $e.attr('data-group'),                 // 상위코드 대분류|중분류 또는 대분류
                    type = $e.attr('data-type');                       // 키워드 또는 대/중분류

                if (type === 'Preference' || type === 'License' || type === 'Welfare') {
                    switch (type) {
                        case 'Preference': type = 'pref'; break;
                        case 'License': type = 'license'; break;
                        case 'Welfare': type = 'wel'; break;
                    }
                    var selector = that.idWord + type + code;
                    if ($(selector).length === 0) {
                        that._addItem(type, code, name);
                    } else {
                        $(selector).trigger('click');
                    }
                }
                // 검색결과에는 있지만 실제로 선택 할 수 없는 데이터들(지하철역 등)
                else if (typeof groupCode === 'undefined' || groupCode === '') {
                    // 자격증, 우대조건, 복리후생 선택 효과 on 처리
                    that._addItem(type.toLowerCase(), code, name);
                }
                // 2Depth Or keyword
                else {
                    var arr = [];
                    var isKeyword = false;
                    if (_.isUndefined(groupCode) || groupCode === 'null') {
                        arr = code.split('_');
                    } else {
                        arr = groupCode.split('|');
                    }

                    var obj = {
                        category: category,
                        value: arr[0],
                        isNodeTracking: true,
                        selector: e.currentTarget,
                        scrollTop: true,
                        tabOpen: false,
                    };

                    var options = that._getMainItemSetting(category);
                    obj = _.defaults(options, obj);

                    that._mainItemSelect(obj);
                    // 키워드
                    if (category === 'duty' || category === 'industry') {
                        if (arr.length === 2) {
                            that._subItemSelect(category, arr[1]);
                            isKeyword = true;
                            // that._addItem(category, code, name, groupCode, type);
                        } else {
                            that._subItemSelect(category, code);
                            that._addItem(category, code, name);
                        }
                        step = 3;
                    } else {
                        step = 2
                    }
                    id = that.idWord + that._makeKey(category, code, step);
                    // 우대전공은 코드 값이 중복하여 존재하기 때문에 상위코드를 물고 감
                    if (category === 'major') {
                        id = that.idWord + category + that.splitWord + 'step2' + that.splitWord + groupCode + that.splitWord + code;
                    }

                    if (isKeyword) {
                        $(id).prop('checked', false).siblings('label').removeClass('on');
                        $(id).trigger('click');
                    } else {
                        if (!$(id).is(':checked')) {
                            $(id).trigger('click');
                        }
                    }
                }
            });
            that._searchedTermsSetCookie($txb.attr('data-type').toLowerCase(), $txb.val(), ''); // 검색어 쿠키 저장
            that._searchedTermsGetCookie($txb.attr('data-type').toLowerCase(), $txb.closest('div').siblings('dl.recentWord').find('ul.clear')); // 쿠키 반영
            that._closeSearchedTermsLayer(e);
        } else {
            alert('검색 항목을 선택해주세요.');
        }
    },
    onRecnetSearchedTermsSelect: function (e) {
        this._preventDefault(e);
        // 검색창 찾아가기
        var _$txb = $(e.currentTarget).closest('dl.recentWord').siblings('div').find('input[type=search]');
        _$txb.val($(e.currentTarget).text());
        this._searchOk(_$txb); // 검색 실행
        setTimeout(function () { _$txb.click(); }, 1); // blur 이벤트 발생 후 실행
    },
    onSearchedItemSelect: function (e) {
        var that = this;
        var $ckb = $(e.currentTarget);
        var type = $ckb.attr('data-type').toLowerCase();
        $ckb.blur();
        if (type !== 'keyword') {
            var $ul = $ckb.closest('ul.list');
            var val = $ckb.val();
            var category = $ckb.attr('data-category');
            var arr = [], $arr;
            $.each($ul.find('input[type=checkbox]'), function (i, e) {
                if ($(e).attr('data-type').toLowerCase() === 'keyword'
                    && $(e).attr('data-category') === category
                    && $(e).attr('data-group').indexOf(val) > -1) {
                    arr.push(that.idWord + $(e).attr('id'));
                }
            });
            $arr = $(arr.join(','));
            // 키워드 비활성화
            if ($ckb.is(':checked')) {
                // disabled
                $arr.prop('disabled', true);
                // color 변경
                $arr.closest('li.item').find('span').css('color', '#bbb');
            }
            // 키워드 활성화
            else {
                // disabled
                $arr.prop('disabled', false);
                // color 변경
                $arr.closest('li.item').find('span').css('color', 'inherit');
            }
        }
    },
    onGIListPageSelect: function (e) {
        this._preventDefault(e);
        var page = $(e.currentTarget).attr('data-page');
        this._getGIList({ page: page });
        this._allProductList();
    },
    onHRGIListPageSelect: function (e) {
        this._preventDefault(e);
        var page = $(e.currentTarget).attr('data-page');
        this._getHRGIList({ page: page });
    },
    onHHGIListPageSelect: function (e) {
        this._preventDefault(e);
        var page = $(e.currentTarget).attr('data-page');
        this._getHHGIList({ page: page });
    },
    _tabOpen: function ($dl, isFirst, isOpen, isTracking) {
        // 토글 형식 호출 일 때
        if (_.isUndefined(isOpen)) {
            if ($dl.hasClass('on')) {
                $dl.removeClass('on')
            } else {
                $('.dev-tab').removeClass('on');
                $dl.addClass('on');
                // 산업 쪽 Tab 제외 하고 하위 레이어가 존재 할 경우만 열림
                if ($dl.find('dd.ly_sub').length == 1) {
                    var category = $dl.attr('data-category');
                    if (category === 'major') {
                        this.isOpenTab = true;
                    }
                    // 직무,산업,우대전공은 최초 선택 시 첫 번째 항목 선택 처리
                    if (isFirst && category !== 'local' && typeof category !== 'undefined') {
                        var $main = $dl.find(this.classWord + 'dev-main');
                        if ($main.find('input:checked').length === 0) {
                            $main.last().find('input[type=checkbox]').eq(0).trigger('click');
                        }
                    }
                }
                // Tab Open에서 해주는 이유는 display:block이 되야 nano scroll이 인식하기 때문
                // 하아................
                // this._scrollReset();
            }
        }
        // 강력한 의지를 가진 호출 일 때
        else {
            if (isOpen) {
                $('.dev-tab').removeClass('on');
                $dl.addClass('on');
            } else {
                $dl.removeClass('on');
            }
        }
        // 열 때 1~3 depth on/off 정리
        if (isTracking) {
            this._nodeTracking();
        }
        this._scrollReset();
    },
    _scrollReset: function (category) {
        var that = this;
        // 인자가 없으면 전체 카테고리로 잡음
        var $root = _.isUndefined(category) ? $(this.classWord + 'dev-tab') : $(this.classWord + 'dev-' + category);

        var scrollTo = {};
        // 카테고리별 초기화(선택 항목 있으면 그 위치 없으면 초기화)
        $.each($root, function (i, e) {
            $root = $(e);
            var isOn = $root.hasClass('on');
            var $mains = $root.find(that.classWord + 'dev-main');
            // 그 외 일반은
            if ($mains.length === 0) {
                // 선택 값이 있고
                if ($root.find('input:checked').length > 0) {
                    //  현재 Open 창이 아닐 때 스크롤 영역 처리
                    if (!isOn) {
                        var ckbIndex = $root.find('input:checked').eq(0).closest('li').index();
                        scrollTo = { scrollTop: ckbIndex * 32 };
                        $root.find(that.classWord + 'nano').nanoScroller(scrollTo);
                    }
                } else {
                    scrollTo = { scrollTop: 0 };
                    $root.find(that.classWord + 'nano').nanoScroller(scrollTo);
                }
            }
            // 직무,지역,산업,전공
            else if ($mains.length > 0) {
                $root.find(that.classWord + 'nano').nanoScroller().nanoScroller({ scrollTop: 0 });

                that._move_nano($root, 1); // main scroll
                that._move_nano($root, 2); // sub  scroll    
            }
        });
    },
    _get_on_ckb: function ($ckbs) {
        var $ckb = $ckbs.eq(0);
        $.each($ckbs, function (i, e) {
            $ckb = $(e).siblings('label').hasClass('on') ? $(e) : $ckb;
        });
        return $ckb;
    },
    _move_nano: function ($root, depth) {
        var that = this;
        var isOn = $root.hasClass('on');
        var $mains = $root.find(that.classWord + 'dev-main');
        var $main = isOn ? $mains.last() : $mains.eq(0);
        var $ckbs = $main.find('input:checked');
        var $ckb = that._get_on_ckb($ckbs);
        // sub
        if (depth === 2) {
            var category = $root.attr('data-category');
            var subLayerId = that._makeKey(category, $ckb.val(), 2, that.layerWord);
            var $sly = $(that.idWord + subLayerId);
            $ckbs = $sly.find('input:checked');
        }
        $ckb = that._get_on_ckb($ckbs);

        var $nano = $ckb.closest(that.classWord + 'nano');
        var index = $ckb.closest('li').index();
        if (index > 0) {
            if (isOn) {
                scrollTo = { scrollTo: $ckb.closest('li') };
            } else {
                // 근무지역 같은 경우는 두 개의 ul로 구성되어 인자를 객체로 주면 인지를 못함
                index = $ckb.closest('ul').hasClass('global') ? 18 + index : index;
                scrollTo = { scrollTop: index * 32 };
            }
            $nano.nanoScroller(scrollTo);
            $nano.nanoScroller();
        }
    },
    // 최초 페이지 실행 시 최근 검색 단어 설정
    _initSearchedTerms: function () {
        var that = this;
        $.each($('.dev-tab input[type=search]'), function (i, e) {
            var category = $(e).attr('data-type');
            that._searchedTermsGetCookie(category.toLowerCase(), $(e).closest('div').siblings('dl.recentWord').find('ul.clear'));
        });
    },
    _getGIList: function (obj) {
        var that = this;
        if (!that.isBusy) {
            var opts = {
                condition: this.dataMap, // 검색조건
                page: 1,                  // 페이지
                direct: $('#lb_imtApply').is(':checked') ? 1 : 0,                // 즉시지원만 보기
                order: $('#toolGI select[name=orderTab]').val(),                 // 정렬
                pagesize: $('#toolGI select[name=psTab]').val(),              // 페이지 사이즈
                tabindex: this.tabindex,
                onePick: $('#lb_imtOnePick').is(':checked') ? 1 : 0,
                confirm: $('#lb_imtConfirm').is(':checked') ? 1 : 0
            };
            this.isAnchor = !_.isUndefined(obj) && !_.isUndefined(obj.page) ? true : false;
            opts = obj ? _.defaults(obj, opts) : opts;
            // 신규 검색일 때 리스트 검색조건 초기화
            if (!_.isUndefined(obj) && obj.isDefault) {
                opts.direct = 0;
                opts.pagesize = 40;
                opts.order = 20; // 기본 추천순으로 고정됨
                opts.tabindex = "0";
                opts.onePick = 0;
                opts.confirm = 0;
            }

            if (opts.page > 1) {
                that.stopProduct = true;
                that._stopProduct();
            } else {
                that.stopProduct = false;
            }

            var params = "";
            var title = "";
            $.each(opts.condition, function (key, value) {
                if (key != 'menucode') {
                    params = params + "&" + key + "=" + value
                }
            });

            if (opts.condition.menucode != undefined) {
                if (opts.condition.menucode.indexOf("edu") > 0) {
                    that.curPage = document.location.href;
                    that.refPage = document.referrer;
                }
                else {
                    that.curPage = document.location.href + params;
                }

            } else {
                that.curPage = document.location.href;
                that.refPage = document.referrer;
            }

            if (that.curPage.indexOf('/recruit/home') > 0 || that.curPage.indexOf('menucode=search') > 0) {
                title = "홈"
            } else if (that.curPage.indexOf('menucode=local&localorder=1') > 0) {
                title = "지역별"
            } else if (that.curPage.indexOf('menucode=duty') > 0) {
                title = "직무별"
            } else if (that.curPage.indexOf('menucode=industry') > 0) {
                title = "산업별"
            } else if (that.curPage.indexOf('menucode=cotype1&cotype=1,2,3') > 0) {
                title = "기업별_대기업"
            } else if (that.curPage.indexOf('menucode=cotype2&cotype=4,5') > 0) {
                title = "기업별_중견·강소기업"
            } else if (that.curPage.indexOf('menucode=cotype3&cotype=6') > 0) {
                title = "기업별_외국계기업"
            } else if (that.curPage.indexOf('menucode=cotype4&cotype=8') > 0) {
                title = "기업별_공기업·공사"
            } else if (that.curPage.indexOf('menucode=cotype5&cotype=11,12,13,14') > 0) {
                title = "기업별_상장기업"
            } else if (that.curPage.indexOf('menucode=edu1&edu=3') > 0) {
                title = "학력별_고졸 "
            } else if (that.curPage.indexOf('menucode=edu2&edu=4') > 0) {
                title = "학력별_2년제"
            } else if (that.curPage.indexOf('menucode=edu3&edu=5') > 0) {
                title = "학력별_4년제"
            } else if (that.curPage.indexOf('menucode=edu4&edu=6,7') > 0) {
                title = "학력별_석박사우대"
            } else if (that.curPage.indexOf('menucode=detail1&localorder=2') > 0) {
                title = "상세조건별_해외지역"
            } else if (that.curPage.indexOf('menucode=detail2') > 0) {
                title = "상세조건별_직급/직책별"
            } else if (that.curPage.indexOf('menucode=detail3') > 0) {
                title = "상세조건별_전공계열별"
            } else if (that.curPage.indexOf('menucode=detail4') > 0) {
                title = "상세조건별_해외우대조건별"
            } else if (that.curPage.indexOf('menucode=detail5') > 0) {
                title = "상세조건별_자격증별"
            } else if (that.curPage.indexOf('menucode=detail6') > 0) {
                title = "상세조건별_복리후생별"
            }

            // 직무&산업 물고 들어올 때
            if (obj) {
                var cond = obj.condition;
                cond.menucode = null;
                if (!that.isInit && this._getPropertyEmpty(cond)) {
                    obj.condition = that._getSendData(obj.condition);
                }
            }

            //var kwrdstr = '';
            //var dutystr = '';

            ////직무
            //if (opts.condition.dkwrd != undefined) {    
            //    $.each(opts.condition.dkwrd.split(','), function (key,value) {
            //        kwrdstr = kwrdstr + value.split('_')[0] + ",";
            //    });
            //    $.each(opts.condition.dkwrd.split(','), function (key, value) {
            //        dutystr = dutystr + value.split('_')[1] + ",";
            //    });
            //    opts.condition.dkwrd = kwrdstr;
            //}
            ////산업
            //if (opts.condition.ikwrd != undefined) {
            //    $.each(opts.condition.ikwrd.split(','), function (key, value) {
            //        kwrdstr = kwrdstr + value.split('_')[0] + ",";
            //    });
            //    $.each(opts.condition.ikwrd.split(','), function (key, value) {
            //        dutystr = dutystr + value.split('_')[1] + ",";
            //    });
            //    opts.condition.ikwrd = kwrdstr;
            //}
            //opts.condition.duty = dutystr;

            var adminParam = this._getAdminMemTypeParams('?');

            var options = {
                url: "/Recruit/Home/_GI_List/" + adminParam,
                data: opts,
                method: "post",
                cache: false,
                async: false
            };

            that.isBusy = true; // ajax 통신 중이면 미처리
            JK5Cript.Loader.async(options, function (response, succstat) {
                if (succstat) {
                    var $div = $(that.idWord + 'dev-gi-list');
                    $div.html(response);

                    that._setDsLog(that.curPage, that.refPage, title, false);
                    /*
                    window._dslog.clearVal();
                    window._dslog.clearType();
                    window._dslog.setShowTitle(true);
                    window._dslog.dispatch(that.curPage, that.refPage, title);
                    */
                }
                that.isBusy = false;
                if (opts.page > 1) {
                    app.SearchForm._anchor('anchorGICnt', opts.page);
                    $("#product").hide();
                } else {
                    $("#product").show();
                }
                // 기존 탭 초기화
                var prevTab = that.$el.find("ul[id^=anchorGICnt] li.on");
                prevTab.removeClass("on");
                var prevText = prevTab.find("span");
                prevText.text(prevText.data("text"));
                // 새탭 선택
                var currentTab = that.$el.find("ul[id^=anchorGICnt] li[data-tab-index='" + that.tabindex + "']");
                currentTab.addClass("on");
                var tabText = currentTab.find("span");
                if (that.$el.find("#hdnGICnt").val() != "0") {
                    tabText.html(tabText.data("text") + " <em>(" + that.$el.find("#hdnGICnt").val() + "건)</em>");
                } else {
                    tabText.html(tabText.data("text") + " (" + that.$el.find("#hdnGICnt").val() + "건)");
                }
                if ($div.find('button.btnChkApply').length > 0) {
                    if (that.$el.find("#hdnGICnt").val() != "0") {
                        $div.find('button.btnChkApply').css("display", "block");
                    } else {
                        $div.find('button.btnChkApply').css("display", "none");
                    }
                }

                if (that.isAnchor) {
                    app.SearchForm._anchor('anchorGICnt', opts.page);    //상품영역 활성화로 delay 처리 필요
                }

                that._visitList();
            });
            that.refPage = that.curPage;
        }
    },
    _getThemeBannerList: function (obj) {
        var that = this;
        if (!that.isBusy) {
            var opts = { condition: this.dataMap };

            var options = {
                url: "/Recruit/Home/_ThemeBanners/",
                data: opts,
                method: "post",
                cache: false,
                async: false
            };

            that.isBusy = true; // ajax 통신 중이면 미처리
            JK5Cript.Loader.async(options, function (response, succstat) {
                if (succstat) {
                    $("#special_recruit").html(response);
                }
                that.isBusy = false;
            });

        }
    },
    _getHRGIList: function (obj) {
        var that = this;
        if (!that.isBusy) {
            var opts = {
                condition: this.dataMap, // 검색조건
                page: 1,                  // 페이지
                direct: 0,                // 즉시지원만 보기
                order: $('#toolHR select[name=orderTab]').val(),                 // 정렬
                hrpagesize: $('#toolHR select[name=psTab]').val(),              // 페이지 사이즈
                tabindex: "0",
                onePick: 0,
                confirm: 0
            };
            this.isAnchor = !_.isUndefined(obj) && !_.isUndefined(obj.page) ? true : false;
            opts = obj ? _.defaults(obj, opts) : opts;
            // 신규 검색일 때 리스트 검색조건 초기화
            if (!_.isUndefined(obj) && obj.isDefault) {
                opts.direct = 0;
                opts.hrpagesize = 10;
                opts.order = 2; // 등록순
                opts.tabindex = "0";
                opts.onePick = 0;
                opts.confirm = 0;
            }

            var params = "";
            var title = "";
            $.each(opts.condition, function (key, value) {
                if (key != 'menucode') {
                    params = params + "&" + key + "=" + value
                }
            });

            if (opts.condition.menucode != undefined) {
                if (opts.condition.menucode.indexOf("edu") > 0) {
                    that.curPage = document.location.href;
                    that.refPage = document.referrer;
                }
                else {
                    that.curPage = document.location.href + params;
                }

            } else {
                that.curPage = document.location.href;
                that.refPage = document.referrer;
            }

            var adminParam = this._getAdminMemTypeParams('?');

            var options = {
                url: "/Recruit/Home/_HR_GI_List/" + adminParam,
                data: opts,
                method: "post",
                cache: false,
                async: false
            };
            that.isBusy = true; // ajax 통신 중이면 미처리
            JK5Cript.Loader.async(options, function (response, succstat) {
                if (succstat) {
                    $(that.idWord + 'dev-hr-gi-list').html(response);
                    $('.devTplLyHover').tooltipBox({ type: 'hover' });
                    that._setDsLog(that.curPage, that.refPage, title, false);
                    /*
                    window._dslog.clearVal();
                    window._dslog.clearType();
                    window._dslog.setShowTitle(true);
                    window._dslog.dispatch(that.curPage, that.refPage, title);
                    */
                }
                that.isBusy = false;

                if (that.isAnchor) {
                    app.SearchForm._anchor('anchorHRCnt', opts.page);    //상품영역 활성화로 delay 처리 필요
                }

                that._visitList();
            });
            that.refPage = that.curPage;
        }
    },
    _getHHGIList: function (obj) {
        var that = this;
        if (!that.isBusy) {
            var opts = {
                condition: this.dataMap, // 검색조건
                page: 1,                  // 페이지
                direct: 0,                // 즉시지원만 보기
                order: $('#toolHH select[name=orderTab]').val(),                 // 정렬
                hhpagesize: $('#toolHH select[name=psTab]').val(),              // 페이지 사이즈
                tabindex: "0",
                onePick: 0,
                confirm: 0
            };
            this.isAnchor = !_.isUndefined(obj) && !_.isUndefined(obj.page) ? true : false;
            opts = obj ? _.defaults(obj, opts) : opts;
            // 신규 검색일 때 리스트 검색조건 초기화
            if (!_.isUndefined(obj) && obj.isDefault) {
                opts.direct = 0;
                opts.hhpagesize = 10;
                opts.order = 2; // 등록순
                opts.tabindex = "0";
                opts.onePick = 0;
                opts.confirm = 0;
            }

            var params = "";
            var title = "";
            $.each(opts.condition, function (key, value) {
                if (key != 'menucode') {
                    params = params + "&" + key + "=" + value
                }
            });

            if (opts.condition.menucode != undefined) {
                if (opts.condition.menucode.indexOf("edu") > 0) {
                    that.curPage = document.location.href;
                    that.refPage = document.referrer;
                }
                else {
                    that.curPage = document.location.href + params;
                }

            } else {
                that.curPage = document.location.href;
                that.refPage = document.referrer;
            }

            var adminParam = this._getAdminMemTypeParams('?');

            var options = {
                url: "/Recruit/Home/_HH_GI_List/" + adminParam,
                data: opts,
                method: "post",
                cache: false,
                async: false
            };
            that.isBusy = true; // ajax 통신 중이면 미처리
            JK5Cript.Loader.async(options, function (response, succstat) {
                if (succstat) {
                    $(that.idWord + 'dev-hh-gi-list').html(response);
                    $('.devTplLyHover').tooltipBox({ type: 'hover' });
                    that._setDsLog(that.curPage, that.refPage, title, false);
                    /*
                    window._dslog.clearVal();
                    window._dslog.clearType();
                    window._dslog.setShowTitle(true);
                    window._dslog.dispatch(that.curPage, that.refPage, title);
                    */
                }
                that.isBusy = false;

                if (that.isAnchor) {
                    app.SearchForm._anchor('anchorHHCnt', opts.page);    //상품영역 활성화로 delay 처리 필요
                }

                that._visitList();
            });
            that.refPage = that.curPage;
        }
    },
    _stopProduct: function (callbackFunc) {
        if (this.stopProduct) {
            $(this.idWord + 'product').hide();
        } else {
            (callbackFunc)();
        }
    },
    _productList: function (target, page, anchor) {
        this._stopProduct(app.SearchForm._wrapFunction(this._getProductList, this, [target, page, anchor]));
    },
    _getProductList: function (target, page, anchor) {
        if (isNaN(page)) {
            return false;
        }
        var that = this;
        if (!that.isBusy2) {
            var options = {
                url: "/Recruit/Home/_SearchPaidAgiList",
                data: { condition: this.dataMap, prdtType: target, page: page },
                method: "post",
                cache: false
            };
            that.isBusy2 = true; // ajax 통신 중이면 미처리
            JK5Cript.Loader.async(options, function (response, succstat) {
                if (succstat) {
                    $(that.idWord + 'dev-' + target).html(response);

                    //데이터 스토리 시작
                    var params = "";
                    var title = "";
                    var curPage2 = "";
                    var refPage2 = "";

                    $.each(options.data.condition, function (key, value) {
                        if (key != 'menucode') {
                            params = params + "&" + key + "=" + value
                        }
                    });
                    params += "&page=" + options.data.page;

                    if (options.data.condition.menucode != undefined) {
                        if (options.data.condition.menucode.indexOf("edu") > 0) {
                            that.curPage = window.location.hostname + options.url;
                            that.refPage = window.location.hostname + options.url;
                        }
                        else {
                            that.curPage = window.location.hostname + options.url + params;
                        }
                    }
                    else {
                        that.curPage = window.location.hostname + options.url;
                        that.refPage = window.location.hostname + options.url;
                    }

                    that._setDsLog(that.curPage, that.refPage, "", false);
                    /*
                    window._dslog.clearVal();
                    window._dslog.clearType();
                    window._dslog.dispatch(that.curPage, that.refPage, "");
                    */
                    that.refPage = that.curPage;
                    //데이터 스토리 끝

                    if (anchor) {
                        app.SearchForm._anchor(anchor, page);
                    }
                }
                that.isBusy2 = false;
            });
        }
    },
    _allProductList: function () {
        this._stopProduct(app.SearchForm._wrapFunction(this._getAllProductList, this, []));
    },
    _getAllProductList: function () {
        var that = this;
        if (this.stopProduct) {
            $(that.idWord + 'product').hide();
        } else {
            $(that.idWord + 'product').show();
            if (!that.isBusy2) {
                var options = {
                    url: "/Recruit/Home/_Product",
                    data: { condition: this.dataMap },
                    method: "post",
                    cache: false
                };
                that.isBusy2 = true; // ajax 통신 중이면 미처리
                JK5Cript.Loader.async(options, function (response, succstat) {
                    if (succstat) {
                        $(that.idWord + 'product').html(response);
                        $("#product").show();
                        if (that.isAnchor) {
                            app.SearchForm._anchor('anchorGICnt');
                        }
                    }
                    that.isBusy2 = false;
                });
            }
        }
    },
    // 최근검색 limit 3개 이상은 삭제
    _searchedTermsSetCookie: function (name, value) {
        var limit = 3;
        var arr = [];
        var values = getCookie(name);
        if (values !== undefined && values !== '') {
            if (values.indexOf('|') > -1) {
                arr = values.split('|');
            } else {
                arr[0] = values;
            }
        }
        arr.push(value);
        // 중복 제거
        arr = arr.reduce(function (a, b) {
            if (a.indexOf(b) < 0) a.push(b);
            return a;
        }, []);
        // 3개 이상 삭제
        if (arr.length > limit) arr.splice(0, 1);
        // 쿠키 저장
        setCookie(name, arr.join('|'), 60 * 24);
    },
    // 최근검색 항목 설정
    _searchedTermsGetCookie: function (name, _$target) {
        var values = getCookie(name);
        var arr = [];
        if (values !== undefined && values !== '') {
            if (values.indexOf('|') > -1) {
                arr = values.split('|');
            } else {
                arr[0] = values;
            }
        }
        _$target.html('');
        if (arr.length === 0) {
            //검색결과 없다고 처리
            _$target.closest('dl.recentWord').hide();
        } else {
            _$target.closest('dl.recentWord').show();
            $.each(arr, function (index, value) {
                _$target.prepend('<li><a href="#" class="dev-recent-searched-terms">' + value + '</a></li>');
            });
        }
    },
    _checkNumber: function (selector) {
        var $selector = $(selector);
        var value = $selector.val();
        // 숫자가 아니면
        if (value !== '' && !value.isNumber()) {
            this._preventDefault(window.event);
            alert('숫자만 입력 가능합니다.');
            $selector.val('');
            return false;
        }
    },

    onShowAddInfo: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);

        that._preventDefault(e);

        $selector.next().show();
    },

    onHideAddInfo: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);

        that._preventDefault(e);

        $selector.next().hide();
    },

    /*검색 툴 제외 이벤트*/
    onShowGlassView: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);

        that._preventDefault(e);
        that.agiBaseInfo.setBaseInfo($selector.closest(".devloopArea").attr("data-info"));
        var info = that.agiBaseInfo;
        var effectCode = Number($selector.closest(".devloopArea").attr("data-EffectCtgr-code"));

        var url = $selector.attr("href");
        var selectData = info.gNo;
        var isAjaxCall = true;
        var isIfrmCall = false;
        var mGlassClass = "";

        if ($selector.closest("span.devZoom").hasClass("devTopLogo")) {
            mGlassClass = "devTopLogo" + selectData;
        } else if ($selector.closest("span.devZoom").hasClass("devLogo")) {
            mGlassClass = "devLogo" + selectData;
        } else if ($selector.closest("span.devZoom").hasClass("devTop")) {
            mGlassClass = "devTop" + selectData;
        } else if ($selector.closest("span.devZoom").hasClass("devPlus")) {
            mGlassClass = "devPlus" + selectData;
        } else if ($selector.closest("span.devZoom").hasClass("devStaffing")) {
            mGlassClass = "devStaffing" + selectData;
            isAjaxCall = false
            isIfrmCall = true;
        } else {
            mGlassClass = "devTopLogo" + selectData;
        }

        var mGalssSelector = $("." + mGlassClass);

        if (mGalssSelector.attr("data-mglass-info").length === 0) {

        } else {
            if (Number(selectData) === Number($("." + mGlassClass).attr("data-mglass-info"))) {
                isAjaxCall = false;
                isIfrmCall = false;
            }
        }
        $("span.lgiIconZoom_1_on").removeClass("lgiIconZoom_1_on");
        $("span.lgiIconZoom_2_on").removeClass("lgiIconZoom_2_on");

        if (isAjaxCall || isIfrmCall) {
            if (isAjaxCall) {
                mGalssSelector.html(that._ajaxShow(url, null, mGalssSelector.find(".lgiGlassView")));
            } else {
                mGalssSelector.html("<iframe src=\"" + url + "\" width=\"100%\" height=\"295\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\" title=\"돋보기\"></iframe>");
            }
            mGalssSelector.attr("data-mglass-info", selectData);

            if ($selector.closest("span").hasClass("lgiIconZoom_1")) {
                $selector.closest("span.lgiIconZoom_1").addClass("lgiIconZoom_1_on");
            } else {
                $selector.closest("span.lgiIconZoom_2").addClass("lgiIconZoom_2_on");
            }

            if ($selector.hasClass("effectMglassLog")) {
                app.svcFunc.agiEffectClick(info.gNo, effectCode);
            } else {
                app.svcFunc.OptClick(info.giNo, info.pageCode, info.positionCode, info.memTypeCode);
            }
            $("div.DevPrdt").each(function (index, single) {
                if (!$(single).hasClass(mGlassClass)) {
                    $(single).hide();
                }
            });
            mGalssSelector.show();
        } else {
            if (mGalssSelector.css('display') === "none") {
                mGalssSelector.show();

                if ($selector.closest("span").hasClass("lgiIconZoom_1")) {
                    $selector.closest("span.lgiIconZoom_1").addClass("lgiIconZoom_1_on");
                } else {
                    $selector.closest("span.lgiIconZoom_2").addClass("lgiIconZoom_2_on");
                }

                if ($selector.hasClass("effectMglassLog")) {
                    app.svcFunc.agiEffectClick(info.gNo, effectCode);
                } else {
                    app.svcFunc.OptClick(info.giNo, info.pageCode, info.positionCode, info.memTypeCode);
                }
            } else {
                mGalssSelector.hide();
            }
        }

        return false;
    },

    onShowIfrmGlassView: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);

        that._preventDefault(e);
        that.agiBaseInfo.setBaseInfo($selector.closest(".devloopArea").attr("data-info"));
        var info = that.agiBaseInfo;
        var effectCode = Number($selector.closest(".devloopArea").attr("data-EffectCtgr-code"));

        var url = $selector.attr("href");
        var selectData = info.gNo;
        var isIfrmCall = true;
        var mGlassClass = "devStaffing" + selectData;
        var mGalssSelector = $("." + mGlassClass);

        if (mGalssSelector.attr("data-mglass-info").length === 0) {

        } else {
            if (Number(selectData) === Number($("." + mGlassClass).attr("data-mglass-info"))) {
                isIfrmCall = false;
            }
        }
        $("span.lgiIconZoom_1_on").removeClass("lgiIconZoom_1_on");
        $("span.lgiIconZoom_2_on").removeClass("lgiIconZoom_2_on");

        if (isIfrmCall) {
            mGalssSelector.html("<iframe src=\"" + url + "\" width=\"100%\" height=\"295\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\" title=\"돋보기\"></iframe>");
            mGalssSelector.attr("data-mglass-info", selectData);


            if ($selector.closest("span").hasClass("lgiIconZoom_1")) {
                $selector.closest("span.lgiIconZoom_1").addClass("lgiIconZoom_1_on");
            } else {
                $selector.closest("span.lgiIconZoom_2").addClass("lgiIconZoom_2_on");
            }

            if ($selector.hasClass("effectMglassLog")) {
                app.svcFunc.agiEffectClick(info.gNo, effectCode);
            } else {
                app.svcFunc.OptClick(info.giNo, info.pageCode, info.positionCode, info.memTypeCode);
            }
            $("div.DevPrdt").each(function (index, single) {
                if (!$(single).hasClass(mGlassClass)) {
                    $(single).hide();
                }
            });

            mGalssSelector.show();
        } else {
            if (mGalssSelector.css('display') === "none") {
                mGalssSelector.show();

                if ($selector.closest("span").hasClass("lgiIconZoom_1")) {
                    $selector.closest("span.lgiIconZoom_1").addClass("lgiIconZoom_1_on");
                } else {
                    $selector.closest("span.lgiIconZoom_2").addClass("lgiIconZoom_2_on");
                }

                if ($selector.hasClass("effectMglassLog")) {
                    app.svcFunc.agiEffectClick(info.gNo, effectCode);
                } else {
                    app.svcFunc.OptClick(info.giNo, info.pageCode, info.positionCode, info.memTypeCode);
                }
            } else {
                mGalssSelector.hide();
            }
        }
    },

    onShowHHAgi: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);
        that._preventDefault(e);

        var addAgi = $selector.closest("dd").next();

        var btnText = $selector.find("span").html();

        if (btnText === "닫기") {
            $selector.closest("span").removeClass("lgiBtnClose_1");
            $selector.closest("span").addClass("lgiBtnOpen_1");
            $selector.find("span").html("진행중인 공고 열기");
            addAgi.hide();
        } else {
            $selector.closest("span").removeClass("lgiBtnOpen_1");
            $selector.closest("span").addClass("lgiBtnClose_1");
            $selector.find("span").html("닫기");
            addAgi.show();
        }

    },

    onCllickLog: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);
        that._preventDefault(e);

        that.agiBaseInfo.setBaseInfo($selector.closest(".devloopArea").attr("data-info"));
        var info = that.agiBaseInfo;

        var clickctgrcode = $selector.attr("data-clickctgrcode");

        app.svcFunc.clickCnt(info.pageCode, clickctgrcode);
        // a visited 효과 추가
        $selector.addClass('on');

        var domain = location.protocol + '//' + location.hostname + (location.port ? ':' + location.port : '');
        var infos = $selector.closest("tr").data("info").split('|');
        var gno = (infos[0]);
        $.ajax({
            url: domain + '/Recruit/Home/_SmartMatchSummary?gno=' + $.trim(gno),
            type: "GET",
            dataType: "html",
            success: function (data) {
                if (data == "") {
                    $('div.smTableList table').find('.smChk').removeClass('smChk');
                    $('div.smTableList table').find('.smArea').remove();
                    $selector.closest("div.tplList").removeClass('smTableList');
                } else {
                    $('div.smTableList table').find('.smChk').removeClass('smChk');
                    $('div.smTableList table').find('.smArea').remove();
                    $selector.closest("div.tplList").removeClass('smTableList');
                    if (!$selector.closest("div.tplList").hasClass('smTableList')) {
                        $selector.closest("div.tplList").addClass('smTableList');
                    }
                    if (!$selector.closest("tr").hasClass("smChk")) {
                        $selector.closest("tr").addClass("smChk");
                    }

                    if (!$selector.closest("tr").next("tr").hasClass("smArea")) {


                        $selector.closest('tr').after("<tr class='smArea'>" + data + "</tr>");
                    }
                }
            }
        });

        //알바몬 공고 리스트 클릭 시 집계
        if (infos[3] === "AM") {
            this.fnCountOpenAlbamonGuin();
        }

        that._blankLocationHref($selector.attr("href"));
    },

    fnCountOpenAlbamonGuin: function () {
        // 알바몬 공고일 경우 클릭 횟수를 집계한다.
        $.ajax({
            url: "/Recruit/Home/CountOpenAlbamonGuin",
            type: "POST",
            data: null,
            success: function (data) {
                if (!data.result) {
                    //성공 시 메세지를 남기지 않는다.
                }
            }
        });
    },

    onCllickEffectLog: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);
        that._preventDefault(e);

        that.agiBaseInfo.setBaseInfo($selector.closest(".devloopArea").attr("data-info"));
        var info = that.agiBaseInfo;
        var effectCode = $selector.closest(".devloopArea").attr("data-EffectCtgr-code");

        app.svcFunc.agiEffectClick(info.gNo, effectCode);

        that._blankLocationHref($selector.attr("href"))
    },

    onCllickOptLog: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);
        that._preventDefault(e);

        that.agiBaseInfo.setBaseInfo($selector.closest(".devloopArea").attr("data-info"));
        var info = that.agiBaseInfo;

        app.svcFunc.OptClick(info.giNo, info.pageCode, info.positionCode, info.memTypeCode);

        that._blankLocationHref($selector.attr("href"))
    },

    //기타 입사지원 클릭
    onClickApplyEtc: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);

        that._preventDefault(e);

        that.agiBaseInfo.setBaseInfo($selector.closest(".devloopArea").attr("data-info"));
        var info = that.agiBaseInfo;
        var dataArray = $selector.attr("data-info").split("|");

        var url = dataArray[0];

        if (dataArray[3] === true) {
            app.svcFunc.spcfcAgiClick(Number(dataArray[3]), '', 1);
        }

        app.svcFunc.clickCnt(info.pageCode, dataArray[2]);
        that._blankLocationHref(url);
    },

    onClickLink: function (e) {
        this._preventDefault(e);
        var $selector = $(e.currentTarget);
        document.location.href = $selector.attr('data-link');
    },

    onClickPrdtGuideLyOpen: function (e) {
        this._preventDefault(e);
        var $selector = $(e.currentTarget);
        $selector.next('.devPrdtGuideLayer').show();
    },

    onClickPrdtGuideLyClose: function (e) {
        this._preventDefault(e);
        var $selector = $(e.currentTarget);
        $selector.closest('.devPrdtGuideLayer').hide();
    },

    _blankLocationHref: function (url) {

        var newWin = window.open('about:blank');
        newWin.location.href = url;
    },

    _ajaxShow: function (url, data, layerId) {
        var ajaxOptions = {
            url: url,
            data: data,
            method: "post",
            cache: false
        };

        JK5Cript.Loader.async(ajaxOptions, function (response, succstat) {
            if (succstat) {
                var dataInfo = $(response).attr('data-info');
                $(layerId).attr('data-info', dataInfo).addClass('devloopArea').html($(response).html());
                $(layerId).show();
            }
        }.bind(this));
    },
    /*검색 툴 제외 이벤트*/
    _preventDefault: function (e) {
        if (e.preventDefault) {
            e.preventDefault()
        } else {
            e.stop()
        };
        e.returnValue = false;
        e.stopPropagation();

        if (e.stopImmediatePropagation) {
            e.stopImmediatePropagation();
        } else {
            e.isImmediatePropagationEnabled = false;
        }
    },
    _isEmpty: function (str) {
        if (typeof str == 'undefined' || !str || str.length === 0 || str === ""
            || !/[^\s]/.test(str) || /^\s*$/.test(str) || str.replace(/\s/g, "") === "") {
            return true;
        }
        else {
            return false;
        }
    },
    // 공고 영역 전체 선택 처리
    onGIListCheckAllSelect: function (e) {
        this._preventDefault(e);
        this._giCheckHandler();
    },
    // 공고 영역 일반 선택 처리
    onGIListApplySpanSelect: function (e) {
        this._preventDefault(e);
        this._giCheckHandler($(e.currentTarget).siblings('input').attr('id'));
    },
    _giCheckHandler: function (id) {
        var $div = $(this.idWord + 'dev-gi-list');
        var $spanAll = $(this.idWord + 'dev-gi-span-all');
        var $ckbAll = $spanAll.find('input[type=checkbox]');
        var $ckbs = $div.find('input[name=gno]');
        // 조작 변수
        var $targetInput, $targetSpan, isOn;
        if (_.isUndefined(id)) {
            $targetInput = $ckbAll;
            $targetSpan = $ckbAll.siblings('span');
        } else {
            $targetInput = $div.find(this.idWord + id);
            $targetSpan = $targetInput.siblings('span');
        }
        isOn = $targetInput.is(':checked');
        $targetInput.prop('checked', !isOn);
        if (isOn) {
            $targetSpan.removeClass('chk');
        } else {
            $targetSpan.addClass('chk');
        }

        if (_.isUndefined(id)) {
            if (isOn) {
                $ckbs.prop('checked', !isOn).siblings('span').removeClass('chk');
            }
            else {
                $ckbs.prop('checked', !isOn).siblings('span').addClass('chk');
            }
        }
        else {
            // 전체 선택
            if ($ckbs.length === $div.find('input[name=gno]:checked').length) {
                $ckbAll.prop('checked', true).siblings('span').addClass('chk');
            }
            // 부분 선택
            else {
                $ckbAll.prop('checked', false).siblings('span').removeClass('chk');
            }
        }
        if ($div.find('button.btnChkApply').length > 0) {
            if ($div.find('input[name=gno]:checked').length > 0) {
                $div.find('button.btnChkApply').addClass("active");
            } else {
                $div.find('button.btnChkApply').removeClass("active");
            }
        }
    },

    onHHRecruitCllick: function (e) {
        $(e.target).addClass('on');
    },

    ///////////////////////////////////// 즉시지원 ///////////////////////////////////////////
    onMultiOnlinePassSelectPlus: function (e) {
        this._onlinePass();
        this._setAgiListClickLog("8");
    },
    onSingleOnlinePassSelectPlus: function (e) {
        var $selector = $(e.currentTarget);
        var giNo, gNo, pageCode;
        if (_.isUndefined($selector.attr('data-value'))) {
            this.agiBaseInfo.setBaseInfo($selector.closest('li').attr('data-info'));
            giNo = this.agiBaseInfo.giNo;
            gNo = this.agiBaseInfo.gNo;
            pageCode = this.agiBaseInfo.pageCode;
        } else {
            giNo = $selector.attr('data-value');
        }
        this._onlinePassPlus(giNo, gNo, pageCode);
    },
    _onlinePassPlus: function (giNo, gNo, pageCode) {
        var that = this;
        var arrGINo = [];
        if (giNo === undefined || giNo === '') {
            $.each($('input[name=gno]:checked'), function (i, e) {
                that.agiBaseInfo.setBaseInfo($(e).closest('li').attr('data-info'));
                arrGINo.push(that.agiBaseInfo.giNo);
            });
            if (arrGINo.length === 0) {
                alert('지원할 공고를 선택해 주시기 바랍니다.');
                return false;
            }
        } else {
            arrGINo.push(giNo);
            var info = that.agiBaseInfo;
            if (!_.isUndefined(gNo)) {
                app.svcFunc.spcfcAgiClick(Number(gNo), 6, 1);
            }
            if (!_.isUndefined(pageCode)) {
                app.svcFunc.clickCnt(info.pageCode, 'C01');
            }
        }
        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            var fncId = that._makeFuncId();
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(that._onlinePassPop, that, [arrGINo.join(',')]);
            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else {
                app.SearchForm._callbackTest(fncId);
            }
        });

    },
    _onlinePassPlus: function (giNo, gNo, pageCode) {
        var that = this;
        var arrGINo = [];
        if (giNo === undefined || giNo === '') {
            $.each($('input[name=gno]:checked'), function (i, e) {
                that.agiBaseInfo.setBaseInfo($(e).closest('li').attr('data-info'));
                arrGINo.push(that.agiBaseInfo.giNo);
            });
            if (arrGINo.length === 0) {
                alert('지원할 공고를 선택해 주시기 바랍니다.');
                return false;
            }
        } else {
            arrGINo.push(giNo);
            var info = that.agiBaseInfo;
            if (!_.isUndefined(gNo)) {
                app.svcFunc.spcfcAgiClick(Number(gNo), 6, 1);
            }
            if (!_.isUndefined(pageCode)) {
                app.svcFunc.clickCnt(info.pageCode, 'C01');
            }
        }
        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            var fncId = that._makeFuncId();
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(that._onlinePassPop, that, [arrGINo.join(',')]);
            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else {
                app.SearchForm._callbackTest(fncId);
            }
        });

    },

    onMultiOnlinePassSelect: function (e) {
        this._onlinePass();
        this._setAgiListClickLog("8");
    },
    onSingleOnlinePassSelect: function (e) {
        var $selector = $(e.currentTarget);
        var giNo, gNo, pageCode;
        if (_.isUndefined($selector.attr('data-value'))) {
            this.agiBaseInfo.setBaseInfo($selector.closest('.devloopArea').attr('data-info'));
            giNo = this.agiBaseInfo.giNo;
            gNo = this.agiBaseInfo.gNo;
            pageCode = this.agiBaseInfo.pageCode;
        } else {
            giNo = $selector.attr('data-value');
        }
        this._onlinePass(giNo, gNo, pageCode);
    },
    _onlinePass: function (giNo, gNo, pageCode) {
        var that = this;
        var arrGINo = [];
        if (giNo === undefined || giNo === '') {
            $.each($('input[name=gno]:checked'), function (i, e) {
                that.agiBaseInfo.setBaseInfo($(e).closest('.devloopArea').attr('data-info'));
                arrGINo.push(that.agiBaseInfo.giNo);
            });
            if (arrGINo.length === 0) {
                alert('지원할 공고를 선택해 주시기 바랍니다.');
                return false;
            }
        } else {
            arrGINo.push(giNo);
            var info = that.agiBaseInfo;
            if (!_.isUndefined(gNo)) {
                app.svcFunc.spcfcAgiClick(Number(gNo), 6, 1);
            }
            if (!_.isUndefined(pageCode)) {
                app.svcFunc.clickCnt(info.pageCode, 'C01');
            }
        }
        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            var fncId = that._makeFuncId();
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(that._onlinePassPop, that, [arrGINo.join(',')]);
            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else {
                app.SearchForm._callbackTest(fncId);
            }
        });

    },
    _onlinePassPop: function (arrGINo) {
        var brw = this._whichBrs();
        var scroll = 0;
        wval = 550;
        hval = 690;
        switch (brw) {
            case 'Internet Explorer':
                if (screen.availHeight < 670) {
                    hval = screen.availHeight;
                }
                break;
            case 'Chrome':
                hval = 692;
                if (screen.availHeight < 670) {
                    hval = screen.availHeight - 64;
                    ifrm_height = hval - 76;
                }
                break;
            default:
        }
        var go_url = "https://" + window.location.hostname + "/Recruit/OnPass/SelectApply?GI_No=" + arrGINo;
        // 다중
        if (arrGINo.indexOf(',') > -1) {
        }
        // 한개
        else {
            go_url = "https://" + window.location.hostname + '/Recruit/OnPass?giNo=' + arrGINo + '&Pass_Match=1&pass_chk=1&JobField=';
        }

        if ($("#hidIsOpen").length > 0 && $("#hidIsOpen").val() == "N") {
            go_url = go_url + "&sc=79";
        } else {
            go_url = go_url + "&logpath=2";
        }

        var PassWinView = window.open(go_url, 'PassWinView', 'width=' + wval + ',height=' + hval + ',toolbar=0,scrollbars=0,resizable=no,left=235,top=0');
        PassWinView.focus();
    },

    onLinePassHR: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);
        var giNo, gNo, pageCode;
        var info = that.agiBaseInfo;

        if (_.isUndefined($selector.attr('data-value'))) {
            this.agiBaseInfo.setBaseInfo($selector.closest('.devloopArea').attr('data-info'));
            giNo = this.agiBaseInfo.giNo;
            gNo = this.agiBaseInfo.gNo;
            pageCode = this.agiBaseInfo.pageCode;
        } else {
            giNo = $selector.attr('data-value');
        }
        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            var fncId = that._makeFuncId();
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(function (giNo) {
                var go_url = "/List_Head/HH_OnPass.asp?h_gi_no=" + giNo;
                window.open(go_url, 'onlinepass', 'width=620,height=500, toolbar=0,scrollbars=1,resizable=no,left=235,top=0');
            }, that, [giNo]);

            if (!_.isUndefined(gNo)) {
                app.svcFunc.spcfcAgiClick(Number(gNo), 6, 1);
            }
            if (!_.isUndefined(pageCode)) {
                app.svcFunc.clickCnt(info.pageCode, 'C02');
            }

            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else {
                app.SearchForm._callbackTest(fncId);
            }
        });
    },
    onEmailPassHR: function (e) {
        var that = this;
        var $selector = $(e.currentTarget);
        var giNo, gNo, pageCode;
        var info = that.agiBaseInfo;

        if (_.isUndefined($selector.attr('data-value'))) {
            this.agiBaseInfo.setBaseInfo($selector.closest('.devloopArea').attr('data-info'));
            giNo = this.agiBaseInfo.giNo;
            gNo = this.agiBaseInfo.gNo;
            pageCode = this.agiBaseInfo.pageCode;
        } else {
            giNo = $selector.attr('data-value');
        }

        if (!_.isUndefined(gNo)) {
            app.svcFunc.spcfcAgiClick(Number(gNo), 6, 1);
        }
        if (!_.isUndefined(pageCode)) {
            app.svcFunc.clickCnt(info.pageCode, 'C03');
        }

        var fncId = that._makeFuncId();
        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(function (giNo) {
                var go_url = "/List_Head/HH_Mail_Pass.asp?h_gi_no=" + giNo;
                window.open(go_url, 'onlinehrpass', 'width=620,height=500,toolbar=0,scrollbars=0,resizable=no,left=235,top=0');
            }, that, [giNo]);

            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else {
                app.SearchForm._callbackTest(fncId);
            }
        });
    },

    _whichBrs: function () {
        var agt = navigator.userAgent.toLowerCase();
        if (agt.indexOf("msie") != -1) return 'Internet Explorer';
        if (agt.indexOf("opera") != -1) return 'Opera';
        if (agt.indexOf("chrome") != -1) return 'Chrome';
        if (agt.indexOf("netscape") != -1) return 'Netscape';
        if (agt.indexOf("safari") != -1) return 'Safari';
        if (agt.indexOf("mozilla/5.0") != -1) return 'Firefox';
    },

    onDirectHHPassClick: function (e) {
        var that = this;
        var $target = $(e.currentTarget);
        var gNo = Number($target.attr("data-value"));
        that._preventDefault(e);

        var widthValue = 550;
        var heightValue = 690;

        switch (that.browserName) {
            case 'Internet Explorer':
                if (window.screen.availHeight < 670) {
                    heightValue = window.screen.availHeight;
                }
                break;
            case 'Chrome':
                heightValue = 692;
                if (window.screen.availHeight < 670) {
                    heightValue = window.screen.availHeight - 64;
                    ifrm_height = heightValue - 76;
                }
                break;
        }

        var info = that.agiBaseInfo;
        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            var fncId = that._makeFuncId();
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(function (gNo) {
                var go_url = '/recruit/hhonpass/?gNo=' + gNo + '&logpath=2';
                var PassWinView = window.open(go_url, 'HHPassPop', 'width=' + widthValue + ',height=' + heightValue + ',toolbar=0,scrollbars=0,resizable=no,left=235,top=0');
                PassWinView.focus();
            }, that, [gNo]);

            //if (!_.isUndefined(gNo)) {
            //    app.svcFunc.spcfcAgiClick(Number(gNo), 6, 1);
            //}
            //if (!_.isUndefined(info.pageCode)) {
            //    app.svcFunc.clickCnt(info.pageCode, 'C02');
            //}

            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else {
                app.SearchForm._callbackTest(fncId);
            }
        });
    },
    onReadPreviewClick: function (e) {
        this._setAgiListClickLog("9");
    },
    //채용상담 클릭
    onListCounselingClick: function (e) {
        var that = this;
        var $target = $(e.currentTarget);
        var messageTalkUrl = "";
        var dataValue = $target.attr("data-value");

        var headHunterId = dataValue.split("|")[0];
        var gNo = dataValue.split("|")[1];

        that._preventDefault(e);

        that._counseling(headHunterId, gNo, "list");
    },
    //채용상담
    _counseling: function (headHunterId, gNo, type) {
        var that = this;
        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            var memId = response.memId;
            var fncId = that._makeFuncId();
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(function (gNo) {
                var go_url = '';
                if (gNo === undefined || Number(gNo) === 0) {
                    go_url = "/headhunting/talk/message?MID=" + memId + "&HeadHunter_ID=" + headHunterId;
                } else {
                    go_url = "/headhunting/talk/message?MID=" + memId + "&HeadHunter_ID=" + headHunterId + "&Gno=" + Number(gNo);
                }

                var messageTalkView = window.open(go_url, "talkwindow", "width=696, height=780, toolbar=no, scrollbars=no");
                messageTalkView.focus();
            }, that, [gNo]);

            //if (!_.isUndefined(gNo)) {
            //    app.svcFunc.spcfcAgiClick(Number(gNo), 6, 1);
            //}
            //if (!_.isUndefined(info.pageCode)) {
            //    app.svcFunc.clickCnt(info.pageCode, 'C02');
            //}

            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else {
                app.SearchForm._callbackTest(fncId);
            }
        });
    },
    ///////////////////////////////////// 안심예약 ///////////////////////////////////////////
    onSafeBookingSelect: function (e) {
        var that = this;
        var $span = $(e.currentTarget);
        var $btn = $span.find('button');
        var gno = $btn.attr('data-gno');
        var oemNo = $btn.attr('data-oem');
        var pathCode = $btn.attr('data-path');
        this.agiBaseInfo.setBaseInfo($span.closest('.devloopArea').attr('data-info'));

        app.svcFunc.loginCheck(function (response) {
            var memCheck = response.memCheck;
            var fncId = that._makeFuncId();
            app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(that._safeBooking, that, [gno, oemNo, pathCode, that.agiBaseInfo.pageCode]);
            if (memCheck == 0) {
                app.SearchForm.open('', fncId);
            } else if (memCheck == 1) {
                app.SearchForm._callbackTest(fncId);
            } else {
                alert('"안심지원예약"은 개인회원 로그인 후 사용가능 합니다.');
            }
        });
    },
    _safeBooking: function (gno, oemNo, pathCode, pageCode) {

        var that = this;

        app.svcFunc.clickCnt(pageCode, 'C07');

        var ajaxOption = {
            url: '/List_GI/OnPass_Booking_Check.asp',
            data: { Gno: gno },
            method: 'get',
            dataType: 'html',
            cache: false
        };

        $.ajax(ajaxOption).done(function (res) {
            if (res == "0" || res == "6") {
                var _data = {
                    Gno: gno,
                    Oem_No: oemNo,
                    Path_Code: pathCode
                }

                jQuery.ajax({
                    type: "post",
                    url: "/List_GI/OnPass_Booking_Frame.asp",
                    data: _data,
                    success: function (data2) {
                        $("div.layerReservation").remove();
                        // 레이어 위치 조절 전 hide 대신 좌측으로 넘겼다가 가져옴.
                        // hide 실행시 해당 div의 height 조절 못함
                        jQuery("body").append(data2).find("div.layerReservation").css("left", "-9999px");

                        that._sizeBookingLayerFrm();
                    }
                });
            } else {
                that._getSafeBookingAlert(res);
            }
        });
    },
    // 퀵 온라인 입사지원 프레임 사이즈 - Ajax 호출시
    _sizeBookingLayerFrm: function () {
        var jQueryheight = 0;
        var jQueryobj = jQuery("#Booking_Frame");

        if (jQueryobj.attr("src").toLowerCase().indexOf("onpass_booking_login.asp") > -1 || jQueryobj.attr("src").toLowerCase().indexOf("m_login_layer") > -1) {
            jQueryheight = jQueryobj.height();
            that._sizeBookingLayer(jQueryheight);
        }
    },
    //	퀵 온라인 입사지원 프레임 리사이즈
    _sizeBookingLayer: function (height) {
        var jQuerydiv = jQuery("body").find("div.layerReservation");
        var jQueryobj = jQuery("#Booking_Frame");

        jQueryobj.css("height", height);

        // IE 구버전 처리
        var isIE = navigator.userAgent.toLowerCase().indexOf("msie") !== -1;

        if (isIE) {
            var $width = window.innerWidth ? window.innerWidth : $(window).width();
            var $height = window.innerHeight ? window.innerHeight : $(window).height();

            var jQueryleft = jQuery(window).scrollLeft() + ($width - jQuerydiv.width()) / 2;
            var jQuerytop = jQuery(window).scrollTop() + ($height - jQuerydiv.height()) / 2;
        } else { // 모바일 사파리에서 window 사이즈 틀리게 나와서 window.top으로 수정
            var topWindow = window.top;
            var $width = topWindow.innerWidth ? topWindow.innerWidth : jQuery(topWindow).width();
            var $height = topWindow.innerHeight ? topWindow.innerHeight : jQuery(topWindow).height();

            var scrollTop = jQuery(window).scrollTop();
            var scrollLeft = jQuery(window).scrollLeft();

            if (scrollTop === 0) {
                scrollTop = jQuery(topWindow).scrollTop();
            }
            if (scrollLeft === 0) {
                scrollLeft = jQuery(topWindow).scrollLeft();
            }

            var jQueryleft = scrollLeft + ($width - jQuerydiv.width()) / 2;
            var jQuerytop = scrollTop + ($height - jQuerydiv.height()) / 2;
        }

        jQuerydiv.css({
            //"position" : "absolute",
            //"z-index" : "999999",
            "display": "block",
            "left": jQueryleft,
            "top": jQuerytop
        });
    },
    _getSafeBookingAlert: function (code) {
        switch (code) {
            case '1': alert('공고가 마감되어 지원이 불가능합니다.'); break;
            case '2': alert('공고가 삭제되어 지원이 불가능합니다.'); break;
            case '3': alert('이미 입사지원한 채용공고입니다.'); break;
            case '4': alert('기업회원이 회원님의 이력서를 열람하고 스크랩하여 검토중입니다.'); break;
            case '5': alert('이력서가 완성되지 않았습니다.'); break;
            case '6': alert('열람기업 제한 서비스에 등록된 기업이므로  입사지원을 할 수 없습니다.'); break;
            case '7': alert('이미 입사지원을 3회 하신 채용공고 이므로\n\n더 이상 입사지원이 불가합니다.\n\n동일 공고에 입사지원은 최대 3회까지 가능합니다.'); break;
            case '8': alert("본 공고는 <모의입사지원 경진대회> 참가자만 지원가능합니다.\n\n해당 학생은 <경진대회 사이트>에 접속하여 지원하시기 바랍니다.\n\n(취창업지원센터 홈페이지 참조)"); break;
            case '9': alert('입사지원방법은 상세요강을 참고해주시기 바랍니다.'); break;
        }
    },
    ///////////////////////////////////// 관심기업 ///////////////////////////////////////////
    onSingleFavorSelect: function (e) {
        var $selector = $(e.currentTarget);
        var onClass = 'tplBtnFavOn';
        var $target = $selector;
        var memSysNo = $selector.attr('data-mem-sys');

        var isOn = $target.hasClass(onClass) ? false : true;
        this._favorSelect(memSysNo, isOn);
    },
    _favorSelect: function (memSysNo, isOn) {
        var that = this;
        if (memSysNo === '') {
            alert('"관심기업 설정" 하실 기업을 선택하세요.');
        } else {
            app.svcFunc.loginCheck(function (response) {
                var memCheck = response.memCheck;
                var fncId = that._makeFuncId();
                app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(that._favor, that, [memSysNo, isOn]);
                if (memCheck == 0) {
                    app.SearchForm.open('', fncId);
                } else if (memCheck == 1) {
                    app.SearchForm._callbackTest(fncId);
                } else {
                    alert('"관심기업 설정"은 개인회원 로그인 후 사용가능 합니다.');
                }
            });
        }
    },
    _favor: function (memSysNo, isOn) {
        var that = this;
        $.getScript("/resources/lib/jkmon/dist/jk.pc.min.js", function (data, textStatus, jqxhr) {
            $.getScript("/resources/js/user/dist/jk.user.common.min.js", function (data, textStatus, jqxhr) {
                jk.user.core.favorCo({ memSysNo: memSysNo, favorState: (isOn ? 1 : 0) }
                    , (function (result) {
                        if (result.code === 1 && result.memSysNoList != null) {
                            result.memSysNoList.forEach(function (item) {
                                that._setChangeUI('tplBtnFav', item, isOn);
                            });
                        } else {
                            alert(result.msg);
                        }
                    })
                );
            });
        });
    },
    ////////////////////////////////////// 스크랩 ////////////////////////////////////////////
    onMultiScrapSelect: function (e) {
        var that = this;
        var arrGINo = '';
        $.each($('input[name=gno]:checked'), function (i, e) {
            that.agiBaseInfo.setBaseInfo($(e).closest('.devloopArea').attr('data-info'));
            if (that.agiBaseInfo.giNo.length > 10) {
                alert("워크넷 채용공고는 스크랩 하실 수 없습니다.");
                return exist;
            }
            arrGINo += ',' + that.agiBaseInfo.giNo;
        });
        this._scrapSelect(arrGINo, undefined, 1, '', '');
    },
    onSingleScrapSelectPlus: function (e) {
        var giNo, info;
        var $selector = $(e.currentTarget);
        var rScrapStat = 1;
        if (this.agiBaseInfo.giNo.length > 10) {
            alert("워크넷 채용공고는 스크랩 하실 수 없습니다.");
            return exist;
        }
        if (_.isUndefined($selector.attr('data-value'))) {
            this.agiBaseInfo.setBaseInfo($selector.closest('li').attr('data-info'));
            giNo = this.agiBaseInfo.giNo;
        } else {
            giNo = $selector.attr('data-value');
        }
        info = this.agiBaseInfo;

        if ($selector.hasClass('tplBtnScrOff')) {
            rScrapStat = $selector.hasClass('on') ? 0 : 1;
        } else {
            rScrapStat = $selector.closest('span').hasClass('on') ? 0 : 1;
        }

        this._scrapSelect(info.giNo, info.gNo, rScrapStat, info.memId, info.memTypeCode);
    },
    onSingleScrapSelect: function (e) {
        var giNo, info;
        var $selector = $(e.currentTarget);
        var rScrapStat = 1;
        if (this.agiBaseInfo.giNo.length > 10) {
            alert("워크넷 채용공고는 스크랩 하실 수 없습니다.");
            return exist;
        }
        if (_.isUndefined($selector.attr('data-value'))) {
            this.agiBaseInfo.setBaseInfo($selector.closest('.devloopArea').attr('data-info'));
            giNo = this.agiBaseInfo.giNo;
        } else {
            giNo = $selector.attr('data-value');
        }
        info = this.agiBaseInfo;

        if ($selector.hasClass('tplBtnScrOff')) {
            rScrapStat = $selector.hasClass('on') ? 0 : 1;
        } else {
            rScrapStat = $selector.closest('span').hasClass('on') ? 0 : 1;
        }

        this._scrapSelect(info.giNo, info.gNo, rScrapStat, info.memId, info.memTypeCode);
    },
    _scrapSelect: function (arrGINo, gno, scrapStat, memId, memTypeCode) {
        var that = this;
        if (arrGINo === '') {
            alert('스크랩할 공고를 선택해 주시기 바랍니다.');
        } else {
            app.svcFunc.loginCheck(function (response) {
                var memCheck = response.memCheck;
                var fncId = that._makeFuncId();
                if (_.isUndefined(gno)) {
                    app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(that._multiScrap, that, [arrGINo]);
                } else {
                    app.SearchForm.func[fncId] = app.SearchForm._wrapFunction(that._singleScrap, that, [arrGINo, gno, scrapStat, memId, memTypeCode]);
                }
                if (memCheck == 0) {
                    app.SearchForm.open('', fncId);
                } else if (memCheck == 1) {
                    app.svcFunc.scrapSingle(arrGINo, gno, memId, memTypeCode, scrapStat)
                        .then(app.svcFunc.scrapLimitCheck)
                        .then(function (res) {
                            var rtnCode = res.response;
                            if (_.isUndefined(rtnCode)) {
                            }
                            else if (rtnCode.indexOf('html') > -1) {
                                that._insertToFrame(rtnCode);
                            }
                            else {
                                if (rtnCode == "2") {
                                    alert("채용공고 스크랩은 1일 1,000건까지 가능합니다.");
                                }
                                else if (rtnCode == "3") {
                                    alert("채용공고 스크랩은 최대 6,000건까지 가능합니다.");
                                } else {
                                    app.SearchForm._callbackTest(fncId);
                                }
                            }
                        });
                } else {
                    alert('"스크랩"은 개인회원 로그인 후 사용가능 합니다.');
                }
            });
        }
    },
    _singleScrap: function (giNo, gno, scrapStat, memId, memTypeCode) {
        var that = this;
        app.svcFunc.scrapSingle(giNo, gno, memId, memTypeCode, scrapStat)
            .then(app.svcFunc.scrapLimitCheck)
            .then(app.svcFunc.scrapReg)
        ['catch'](function (error) { alert(error); })
            .then(function (res) {
                if (_.isUndefined(res)) {
                }
                else if (res.indexOf('html') > -1) {
                    that._insertToFrame(res);
                }
                else {
                    if (scrapStat) {
                        alert('스크랩 되었습니다.');
                        that._setChangeUI('tplBtnScr', giNo, true);

                        //Braze
                        //var $selector = $('.dev-tplBtnScr-' + giNo);
                        //var brazeInfo = $selector.data("brazeinfo");
                        //console.log(brazeInfo)
                        //BrazeCustomEventSetProperty(1, brazeInfo)
                    } else {
                        alert('스크랩 취소했습니다.');
                        that._setChangeUI('tplBtnScr', giNo, false);
                    }
                }
            });
    },
    _multiScrap: function (arrGINo) {
        var that = this;
        var ajaxOption = {
            type: 'GET',
            url: '/Recruit/GI_Scrap_Multi_Ajax',
            data: {
                GINoStr: arrGINo,
                Mem_ID: '',
                Mem_Type_Code: 'C'
            },
            contentType: 'application/json; charset=utf-8',
            cache: false
        };
        $.ajax(ajaxOption).done(function (res) {
            if (res.indexOf('html') > -1) {
                that._insertToFrame(res);
            } else {
                //NsmConversionClick('170'); //Nsm 스크립트 추가
                //_LA.EVT('4031');

                alert("스크랩 되었습니다.");
                that._setChangeUI('tplBtnScr', res, true);
            }
        });
    },
    _insertToFrame: function (html) {
        var $frame = $('#frmError');
        var doc = $frame[0].contentWindow.document;
        var $body = $('body', doc);
        $body.html(html);
    },
    _setChangeUI: function (type, arr, isOn) {
        var arrGINo = arr.toString().indexOf(',') > -1 ? arr.split(',') : [arr];
        for (var i = 0; i < arrGINo.length; i++) {
            var $selector = $(this.classWord + 'dev-' + type + '-' + arrGINo[i]);
            if (isOn) {
                if (type == 'tplBtnFav') {
                    $selector.removeClass('tplBtnFavOff').addClass('tplBtnFavOn');
                } else {
                    $selector.addClass('on');
                }
            } else {
                if (type == 'tplBtnFav') {
                    $selector.removeClass('tplBtnFavOn').addClass('tplBtnFavOff');
                } else {
                    $selector.removeClass('on');
                }
            }
        }
    },
    onPaidPageSelect: function (e) {
        this._preventDefault(e);
        var $selector = $(e.currentTarget);
        var page = Number($selector.attr('data-page'));
        var target = $selector.closest(this.classWord + 'dev-data-roof').attr('id');
        var anchor = $selector.parent().attr('data-anchor');
        this._productList(target, page, anchor);
    },
    _makeFuncId: function () {
        function s4() {
            return Math.floor((1 + Math.random()) * 0x10000)
                .toString(16)
                .substring(1);
        }
        return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();
    },
    onGISortChange: function (e) {
        GA_Event('상세검색_PC', '채용공고', '정렬_' + $(e.currentTarget).children("option:selected").text())
        this._getGIList({ page: 1, order: $(e.currentTarget).val() });
    },
    onGIPageSizeChange: function (e) {
        GA_Event('상세검색_PC', '채용공고', '정렬_' + $(e.currentTarget).children("option:selected").text())
        this._getGIList({ page: 1, pagesize: $(e.currentTarget).val() });
    },
    onHRSortChange: function (e) {
        GA_Event('상세검색_PC', '파견대행', '정렬_' + $(e.currentTarget).children("option:selected").text())
        this._getHRGIList({ page: 1, order: $(e.currentTarget).val() });
    },
    onHRPageSizeChange: function (e) {
        GA_Event('상세검색_PC', '파견대행', '정렬_' + $(e.currentTarget).children("option:selected").text())
        this._getHRGIList({ page: 1, hrpagesize: $(e.currentTarget).val() });
    },
    onHHSortChange: function (e) {
        GA_Event('상세검색_PC', '헤드헌팅', '정렬_' + $(e.currentTarget).children("option:selected").text())
        this._getHHGIList({ page: 1, order: $(e.currentTarget).val() });
    },
    onHHPageSizeChange: function (e) {
        GA_Event('상세검색_PC', '헤드헌팅', '정렬_' + $(e.currentTarget).children("option:selected").text())
        this._getHHGIList({ page: 1, hhpagesize: $(e.currentTarget).val() });
    },
    onDirectApplySelect: function (e) {
        this._preventDefault(e);
        var $ckb = $(e.currentTarget);
        var $lb = $ckb.siblings('label');
        var isChecked = $ckb.is(':checked');
        if (isChecked) {
            $lb.addClass('chk');
        } else {
            $lb.removeClass('chk');
        }
        this._getGIList({ page: 1, direct: isChecked ? 1 : 0 });
        if (isChecked) {
            this._setAgiListClickLog("5");
        }
    },
    onOnePickSelect: function (e) {
        this._preventDefault(e);
        var $ckb = $(e.currentTarget);
        var $lb = $ckb.siblings('label');
        var isChecked = $ckb.is(':checked');
        if (isChecked) {
            $lb.addClass('chk');
        } else {
            $lb.removeClass('chk');
        }
        this._getGIList({ page: 1, onePick: isChecked ? 1 : 0 });
        if (isChecked) {
            this._setAgiListClickLog("6");
        }
    },
    onConfirmSelect: function (e) {
        this._preventDefault(e);
        var $ckb = $(e.currentTarget);
        var $lb = $ckb.siblings('label');
        var isChecked = $ckb.is(':checked');
        if (isChecked) {
            $lb.addClass('chk');
        } else {
            $lb.removeClass('chk');
        }
        this._getGIList({ page: 1, confirm: isChecked ? 1 : 0 });
        if (isChecked) {
            this._setAgiListClickLog("7");
        }
    },
    onPaidGuideSelect: function (e) {
        var id = $(e.currentTarget).attr('data-type');
        $(this.idWord + id).show();
    },
    onPaidGuideClose: function (e) {
        var id = $(e.currentTarget).attr('data-type');
        $(this.idWord + id).hide();
    },
    onPadiGuidePopup: function (e) {
        var strUrl = $(e.currentTarget).attr('href');
        window.open(strUrl, "FeeGuide", "width=973,height=900,toolbar=no,location=no,directories=no,status=no,scrollbars=yes,menubar=no");
        return false;
    },

    _getSendData: function (condition) {
        // URL 직무 코드 확인
        var params = JK5Cript.URL.getParams('object');
        var isSendData = false;
        var testParamArr = ['dutyCtgr', 'industryCtgr'];
        var testClassArr = ['.dev-duty', '.dev-industry'];

        for (var i = 0; i < testParamArr.length; i++) {
            // 직무 영역 활성화 확인
            // if (_.has(params, testParamArr[i]) && $(testClassArr[i]).hasClass('on')) {
            //     var value = params[testParamArr[i]];
            //     // 선택 대분류 코드
            //     var $lbs = $(testClassArr[i] + ' .dev-main li label.on');
            //     for (var j = 0; j < $lbs.length; j++) {
            //         if ($lbs.siblings('input').val() == value) {
            //             isSendData = true;
            //             break;
            //         }
            //     }
            //     if(isSendData) { break;}
            // }

            isSendData = _.has(params, testParamArr[i]);
            if (isSendData) {
                var addObj = {}
                if (i === 0) {
                    addObj = { 'dutyCtgr': params[testParamArr[i]] };
                } else if (i === 1) {
                    addObj = { 'industryCtgr': params[testParamArr[i]] };
                }
                JK5Cript.Objects.add(condition, addObj);
                break;
            }
        }
        return condition;
    },
    //데이터 스토리 로그 저장
    _setDsLog: function (curPage, refpage, title, isShowTitle) {
        if (window._dslog != undefined) {
            window._dslog.clearVal();
            window._dslog.clearType();

            if (isShowTitle && title.length > 0) {
                window._dslog.setShowTitle(true);
            }

            window._dslog.dispatch(curPage, refpage, title);
        }
    },
    //리스트 클릭로그 쌓기
    _setAgiListClickLog: function (typeCode) {
        var ajaxOptions = {
            url: "/Recruit/Home/GI_ClickIns",
            data: "typeCode=" + typeCode,
            method: "get"
        };

        JK5Cript.Loader.async(ajaxOptions, function () {
        });
    },

    _visitList: function() {
        $.ajax({
            type: 'get',
            url: '/starter/default/GetRecentList',
            dataType: 'json',
            cache: false,
            success: function (data) {
                if (typeof data !== 'undefined' && data !== '') {
                    $('td.tplTit a.link').each(function (i, el) {
                        var infos = $(this).closest("tr").data("info").split('|');
                        var gno = $.trim(infos[0]);

                        for (var index in data) {
                            if (data[index] == gno) {
                                $(el).addClass('on');
                            }
                        }
                    });
                }
            }, error: function (e) {

            }
        })
    }
});
_.extend(app.SearchForm, {
    func: {},
    _wrapFunction: function (fn, context, params) {
        return function () {
            fn.apply(context, params);
        };
    },
    _callbackTest: function (fncName) {
        if (_.isFunction(this.func[fncName])) {
            (this.func[fncName])();
            delete this.func[fncName];
        }
    },
    _getDomain: function () {
        // 개발모드
        var host = window.location.hostname;
        var urls = host.split(".");
        var domain = '';
        if (urls.length > 0) {
            domain = urls[0];
        }

        if (domain === 'dev') {
            domain = 'dev.jts';
        }
        return domain;
    },
    _anchor: function (id, page) {
        if (page == undefined) {
            page = 1;
        }
        window.location.href = '#' + id + "_" + page;
    },
    // 아래로 로그인 이벤트
    open: function (reUrl, funcId) {
        var stat = false;
        url = window.location.protocol + '//' + window.location.host + '/Recruit/Home/_LayerLogin';
        data = { 'reUrl': reUrl, 'funcId': funcId, 'domain': this._getDomain() };
        $.ajax({
            url: url,
            data: data,
            cache: false,
            async: false
        }).done(function (res) {
            if ($.trim(res) != "") {
                if (location.protocol.indexOf("https") >= 0) {
                    app.SearchForm.close();
                    $("body").append(res).find("#lyOnLogin").css("left", "-9999px");
                    app.SearchForm.resize();
                } else {
                    if (confirm("개인회원 로그인 후 이용해 주세요.\n로그인 페이지로 이동 하시겠습니까?")) {
                        window.location.href = "/Login/Login_tot.asp?re_url=" + encodeURIComponent(window.location.href).replace(/'/g, "%27").replace(/"/g, "%22");
                    }
                }
            } else {
                stat = true;
            }
        });
        return stat;
    },
    // 로그인 닫기
    close: function () {
        $("#lyOnLogin").remove();
    },
    // 로그인 창 사이즈 및 위치 변경
    resize: function (_height) {
        var jQuerydiv = $("body").find("#lyOnLogin");
        var jQueryobj = $("#onPassApply_Frame");

        jQueryobj.css("height", _height);

        var isIE = navigator.userAgent.toLowerCase().indexOf("msie") !== -1;

        if (isIE) {
            var $width = window.innerWidth ? window.innerWidth : $(window).width();
            var $height = window.innerHeight ? window.innerHeight : $(window).height();

            var jQueryleft = $(window).scrollLeft() + ($width - jQueryobj.width()) / 2;
            var jQuerytop = $(window).scrollTop() + ($height - jQuerydiv.height()) / 2;
        } else { // 모바일 사파리에서 window 사이즈 틀리게 나와서 window.top으로 수정
            var topWindow = window.top;
            var $width = topWindow.innerWidth ? topWindow.innerWidth : $(topWindow).width();
            var $height = topWindow.innerHeight ? topWindow.innerHeight : $(topWindow).height();

            var scrollTop = $(window).scrollTop();
            var scrollLeft = $(window).scrollLeft();

            if (scrollTop === 0) {
                scrollTop = $(topWindow).scrollTop();
            }
            if (scrollLeft === 0) {
                scrollLeft = $(topWindow).scrollLeft();
            }
            var jQueryleft = scrollLeft + ($width - jQueryobj.width()) / 2;
            var jQuerytop = scrollTop + ($height - jQuerydiv.height()) / 2;
        }

        jQuerydiv.css({
            "position": "absolute",
            "z-index": "999999",
            "left": jQueryleft,
            "top": jQuerytop
        });
    }
})

function callbackFunc(funcName) {
    app.SearchForm._callbackTest(funcName);
}

// 레이어 닫기
var lay_Booking_Cls = function () {
    jQuery("div.layerReservation").remove();
}

//  퀵 온라인 입사지원 프레임 사이즈 - (onload, onunload)
var lay_Booking_Frm_Size2 = function (_height) {
    ;
    var jQueryheight = 0;
    var jQueryobj = jQuery("#Booking_Frame");

    if (_height == undefined) {
        jQueryheight = jQueryobj.contents().find("body").height();

    } else {
        jQueryheight = _height;//jQueryobj.attr("src").toLowerCase().indexOf("onpass_quick_login.asp")  > -1 ? _height :  jQueryobj.contents().find("div.iframeQuick").height();
    }

    lay_Booking_Size_Chg(jQueryheight);
}

//	퀵 온라인 입사지원 프레임 리사이즈
var lay_Booking_Size_Chg = function (_height) {

    var jQuerydiv = jQuery("body").find("div.layerReservation");
    var jQueryobj = jQuery("#Booking_Frame");

    jQueryobj.css("height", _height);

    // IE 구버전 처리
    var isIE = navigator.userAgent.toLowerCase().indexOf("msie") !== -1;

    if (isIE) {
        var $width = window.innerWidth ? window.innerWidth : $(window).width();
        var $height = window.innerHeight ? window.innerHeight : $(window).height();

        var jQueryleft = jQuery(window).scrollLeft() + ($width - jQuerydiv.width()) / 2;
        var jQuerytop = jQuery(window).scrollTop() + ($height - jQuerydiv.height()) / 2;
    } else { // 모바일 사파리에서 window 사이즈 틀리게 나와서 window.top으로 수정
        var topWindow = window.top;
        var $width = topWindow.innerWidth ? topWindow.innerWidth : jQuery(topWindow).width();
        var $height = topWindow.innerHeight ? topWindow.innerHeight : jQuery(topWindow).height();

        var scrollTop = jQuery(window).scrollTop();
        var scrollLeft = jQuery(window).scrollLeft();

        if (scrollTop === 0) {
            scrollTop = jQuery(topWindow).scrollTop();
        }
        if (scrollLeft === 0) {
            scrollLeft = jQuery(topWindow).scrollLeft();
        }

        var jQueryleft = scrollLeft + ($width - jQuerydiv.width()) / 2;
        var jQuerytop = scrollTop + ($height - jQuerydiv.height()) / 2;
    }

    jQuerydiv.css({
        //"position" : "absolute",
        //"z-index" : "999999",
        "display": "block",
        "left": jQueryleft,
        "top": jQuerytop
    });
}

//  JK-6571 (2020.04.10) Lezi 이벤트 배너
function chkLeziBnnr(testDay) {
    var today = new Date();
    var evtRun = true;
    var todayStr = today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2);

    if (window.location.hostname == 'www.jobkorea.co.kr') {
        evtRun = false;
    }
    if (testDay) {
        if (testDay.length == 10) {
            todayStr = testDay;
        }
    }
    if (todayStr >= '2020-04-20' && todayStr <= '2020-05-20') {
        evtRun = true;
    }
    if ($('#toolitems') && evtRun) {
        if ($('#toolitems').html().indexOf('외국계기업') > -1) {
            $('.advertisement').show();
            //if ($('#product')) {
            //    q = $('#product').detach();
            //}
        }
        else {
            $('.advertisement').hide();
            //$('#dev-gi-list').before(q);
        }
    }
}

function brazeSearchCondition() {
    var searchCond = "";
    $.each($('#toolitems').find('li.item'), function (i, e) {
        searchCond = searchCond + e.innerText.replace('삭제', ',');
    });

    searchCond = searchCond.replace(/,$/, '');
    BrazeCallPageValue("채용정보_직무지역", { "검색조건": searchCond });

}