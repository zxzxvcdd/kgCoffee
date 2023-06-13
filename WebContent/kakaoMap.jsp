<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<style>



* {
	font-family: 'Noto Sans KR', sans-serif;
}

#map {
	width: 100%;
	height: 100vh;
	position: relative;
	overflow: hidden;
}

.map_wrap, .map_wrap * {
	/* width: 20%;
    height: 70vh; */
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

/* .map_wrap a,
.map_wrap a:hover,
.map_wrap a:active {
    color: #000;
    text-decoration: none;
} */
.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

.map_wrap div.map_marker_pop {
	padding: 0;
	z-index: 1;
	border: none;
	border-radius: 3px;
	width: 294px;
}

.map_wrap div.map_marker_pop header {
	float: left;
	display: block;
	position: relative;
	background: #8c8279;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	line-height: 20px;
	padding: 10px 0;
	text-indent: 20px;
	font-family: 'nbg', '맑은 고딕', HelveticaNeue, DroidSans, Sans-serif,
		Helvetica;
}

.map_wrap div.map_marker_pop div.close {
	display: inline-block;
	*display: inline;
	line-height: 11px;
	text-align: center;
}

.map_wrap div.map_marker_pop div.close:after {
	position: absolute;
	top: 6%;
	right: 3%;
	display: inline-block;
	background: #fff;
	border: 1px solid #000;
	width: 16px;
	height: 16px;
	z-index: 100;
	content: "\00d7";
	font-size: 12pt;
	font-weight: 700;
	cursor: pointer;
}

.map_wrap div.map_marker_pop .map_marker_pop_inner {
	height: 143px;
	margin: 0 auto;
	width: 254px;
}

.map_wrap div.map_marker_pop .map_marker_pop_inner .cont_wrap {
	height: 103px;
	position: relative;
	width: 254px;
}

.map_wrap div.map_marker_pop .map_marker_pop_inner .cont_wrap p {
	color: #666;
	float: left;
	font-size: 12px;
	min-height: 14px;
	line-height: 14px;
	margin-top: 10px;
	padding-left: 17px;
	width: 237px;
}

.map_wrap div.map_marker_pop .map_marker_pop_inner .cont_wrap p.road_addr
	{
	margin-top: 20px;
	background: url("/images/icon/icon_addr.png") 0 0 no-repeat;
}

.map_wrap div.map_marker_pop .map_marker_pop_inner .cont_wrap p.tel {
	background: url("/images/icon/icon_tel.png") 0 0 no-repeat;
}

.map_wrap div.map_marker_pop .map_marker_pop_inner .cont_wrap a {
	background: #222;
	border-radius: 3px;
	bottom: -20px;
	color: #fff;
	display: block;
	font-size: 12px;
	font-weight: bold;
	height: 30px;
	left: 50%;
	line-height: 30px;
	margin-left: -45px;
	position: absolute;
	text-align: center;
	width: 90px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	margin: 0px 0px 0px 0px;
	padding: 0px;
	overflow: hidden;
	min-height: 700px;
	border-radius: 3px;
	background: rgba(255, 255, 255);
	z-index: 1;
	font-size: 12px;
	font-family: 'Noto Sans KR', sans-serif;
	width: 100%;
    max-width: 320px;
    box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.3);
}

.find_store_wrap {
	
}

.find_store_wrap .find_store_cont {
	
}

.bg_white {
	background: #fff;
}

#menu_wrap .find_store_header {
	margin-top: 0px;
	background: #FDD000;
	width: 50%;
	height: 58px;
	text-align: center;
	border: 0px;
}

#menu_wrap .find_store_header * {
	color: #000;
	line-height: 58px;
	margin: 0;
	font-size: 16px;
	font-weight: 300;
	font-family: 'Noto Sans KR', sans-serif;
}

#menu_wrap .search_count {
	background: #f4f4f2;
	display: block;
	color: #444;
	font-size: 14px;
	line-height: inherit;
	text-indent: 10px;
	margin-top: 5px;
	height: 22px;
	width: 100%;
}

#menu_wrap .search {
	width: 300px;
	height: 70vh;
}

#menu_wrap .search .quick_search {
	position: relative;
	background: #FDD000;
	text-align: center;
	line-height: 50px;
	box-sizing: border-box;
	/* padding: 10px; */
	height: 60px;
	
	
}

#menu_wrap .search .quick_search_inner {
	height: 70%;
	width: 93%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 0px solid #000;
	border-radius: 4px;
	background: #fff;
}

#menu_wrap .search .quick_search_inner input {
	position: relative;
	border: 0px solid #000;
	border-radius: 4px;
	width: 95%;
	height: 80%;
}

#menu_wrap .search .quick_search_inner a i {
	position: absolute;
	right: 3%;
	line-height: 40px;
	color: #000000;
	font-size: 20px;
	font-weight: 700;
}

#menu_wrap article {
	height: 80%;
}

#placesList {
	overflow-y: auto;
	height: 100%;
	padding: 0 10px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #ddd;
	overflow: hidden;
	height: 100px;
}

#placesList .item p {
	font-size: 12px;
	color: #666;
}

#placesList .item h5 {
	font-size: 14px;
	font-weight: 700;
	margin: 10px 0 10px;
}

#placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
	display: none;
}

#placesList .info .road {
	
}

#placesList .info .tel {
	
}

#placesList .item .markerbg {
	display: block;
	position: absolute;
	right: 4%;
	top: 50%;
	width: 38px;
	height: 60px;
	transform: translate(-50%, -50%);
	background: url(/images/icon/marker.png) center;
}

/* #placesList .item .marker {
    background-position: 0 -10px;
} */
#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>

</head>






<body>

	<div class="map_wrap">
		<!-- 지도를 표시할 div 입니다 -->
		<div id="map"></div>










		<section class="find_store_wrap">

			<div class="find_store_cont" class="bg_white">
				<div id="menu_wrap">
					<header class="find_store_header active">
						<h2 class="btn_find_store">
							매장찾기
						</h2>
					</header>
					<article class="search bg_white">
						<div class="quick_search">
							<div class="quick_search_title">
							<b>매장찾기</b>
							</div>
							<div class="quick_search_content">
							함께하는 KG커피
							</div>
							<div class="quick_search_inner">
								<input placeholder="지점명 또는 주소를 입력하세요" title="퀵 검색" type="text"
									name="keyword" id="keyword"> <a
									href="javascript:void(0);" class="quickSearchBtn"><i
									class="bi bi-search"></i></a>
							</div>
						</div>


						<div class="search_count">검색결과 없음</div>
						<article>
							<ul id="placesList"></ul>
							<div id="pagination"></div>
						</article>
					</article>


					<!-- <header id="find_road_warp">
                                <div clas="find_road_header">
                                    <h2 class="btn_road_store"><a href="javascript:void(0);">길찾기</a></h2>
                                </div>

                            </header>
                            <article class=""

                            </article> -->


				</div>


			</div>

		</section>



	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4053743493582ba95036931859f08a59&libraries=services">
                </script>
	<script>

                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                    mapOption = {
                        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                        level: 2 // 지도의 확대 레벨
                    };


                // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
                var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });



                // 마커를 담을 배열입니다
                var markers = [];




                // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);

                // 장소 검색 객체를 생성합니다
                var ps = new kakao.maps.services.Places();




                // 키워드로 장소를 검색합니다
                searchPlaces();


                // 키워드 검색을 요청하는 함수입니다
                function searchPlaces() {



                    var keyword = document.getElementById('keyword').value;



                    if (!keyword) {

                        keyword = "서울특별시청";
                    }




                    if (!keyword.replace(/^\s+|\s+$/g, '')) {
                        alert('매장명 또는 주소');
                        return false;
                    }

                    keyword += " 메가커피";

                    console.log("키워드 : " + keyword);


                    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
                    ps.keywordSearch(keyword, placesSearchCB);
                }

                // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
                function placesSearchCB(data, status, pagination) {
                    if (status === kakao.maps.services.Status.OK) {

                        // 정상적으로 검색이 완료됐으면
                        // 검색 목록과 마커를 표출합니다
                        displayPlaces(data);


                        // 페이지 번호를 표출합니다
                        displayPagination(pagination);

                    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

                        alert('검색 결과가 존재하지 않습니다.');
                        return;

                    } else if (status === kakao.maps.services.Status.ERROR) {

                        alert('검색 결과 중 오류가 발생했습니다.');
                        return;

                    }
                }

                // 검색 결과 목록과 마커를 표출하는 함수입니다
                function displayPlaces(places) {



                    var listEl = document.getElementById('placesList'),
                        menuEl = document.getElementById('menu_wrap'),
                        fragment = document.createDocumentFragment(),
                        bounds = new kakao.maps.LatLngBounds(),
                        listStr = '';

                    // 검색 결과 목록에 추가된 항목들을 제거합니다
                    removeAllChildNods(listEl);

                    // 지도에 표시되고 있는 마커를 제거합니다
                    removeMarker();

                    for (var i = 0; i < places.length; i++) {
       

                        // 마커를 생성하고 지도에 표시합니다
                        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                            marker = addMarker(placePosition, i),
                            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

                        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                        // LatLngBounds 객체에 좌표를 추가합니다

                        bounds.extend(placePosition);

                        // 마커와 검색결과 항목에 mouseover 했을때
                        // 해당 장소에 인포윈도우에 장소명을 표시합니다
                        // mouseout 했을 때는 인포윈도우를 닫습니다
                        (function (marker, places) {
                            kakao.maps.event.addListener(marker, 'click', function () {
                                displayInfowindow(marker, places);

                            });

                            // kakao.maps.event.addListener(marker, 'mouseout', function () {
                            //     infowindow.close();
                            // });

                            itemEl.onclick = function () {
                                
                                //지도 범위 재설정
                                panTo(marker.getPosition());
                                //정보창 호출
                                displayInfowindow(marker, places);
                            };

                            // itemEl.onmouseout = function () {
                            //     infowindow.close();
                            // };
                        })(marker, places[i]);


                        fragment.appendChild(itemEl);
                    }

                    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
                    listEl.appendChild(fragment);
                    menuEl.scrollTop = 0;

                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                    map.setBounds(bounds);
                }

                // 검색결과 항목을 Element로 반환하는 함수입니다
                function getListItem(index, places) {

                    var el = document.createElement('li'),
                        itemStr = '<span class="markerbg marker"></span>' +
                            '<div class="info">' +
                            '   <h5> KG커피' + places.place_name.substr(8) + '</h5>';

                    if (places.road_address_name) {
                        itemStr += '    <p class ="road gray">' + places.road_address_name + '</p>'
                        // +'   <span class="jibun gray">' + places.address_name + '</span>';
                    } else {
                        itemStr += '    <p>' + places.address_name + '</p>';
                    }

                    itemStr += '  <p class="tel">' + places.phone + '</p>' +
                        '</div>';

                    el.innerHTML = itemStr;
                    el.className = 'item';

                    return el;
                }

                //지도이동
                function panTo(moveLatLon) {
                    // 이동할 위도 경도 위치를 생성합니다 

                    // 지도 중심을 부드럽게 이동시킵니다
                    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
                    map.panTo(moveLatLon);            
                }        

                // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
                function addMarker(position, idx, title) {
                    var imageSrc = '/images/icon/marker.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                        imageSize = new kakao.maps.Size(36, 57),  // 마커 이미지의 크기
                        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
                        marker = new kakao.maps.Marker({
                            position: position, // 마커의 위치
                            image: markerImage
                        });

                    marker.setMap(map); // 지도 위에 마커를 표출합니다
                    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

                    return marker;
                }

                // 지도 위에 표시되고 있는 마커를 모두 제거합니다
                function removeMarker() {
                    for (var i = 0; i < markers.length; i++) {
                        markers[i].setMap(null);
                    }
                    markers = [];
                }

                // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
                function displayPagination(pagination) {


                    document.querySelector(".search_count").innerHTML = "(검색 결과 " + pagination.totalCount + "개)";


                    var paginationEl = document.getElementById('pagination'),
                        fragment = document.createDocumentFragment(),
                        i;

                    // 기존에 추가된 페이지번호를 삭제합니다
                    while (paginationEl.hasChildNodes()) {
                        paginationEl.removeChild(paginationEl.lastChild);
                    }

                    for (i = 1; i <= pagination.last; i++) {
                        var el = document.createElement('a');
                        el.href = "#";
                        el.innerHTML = i;

                        if (i === pagination.current) {
                            el.className = 'on';
                        } else {
                            el.onclick = (function (i) {
                                return function () {
                                    pagination.gotoPage(i);
                                }
                            })(i);
                        }

                        fragment.appendChild(el);
                    }
                    paginationEl.appendChild(fragment);
                }

                // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
                // 인포윈도우에 장소명을 표시합니다
                function displayInfowindow(marker, places) {

                    

                    
                    var content =
                        '<div class="map_marker_pop">' +
                        '<header>' + places.place_name.substr(5) + '</header>' +
                        ' <div class="close" onclick="infowindow.close()" title="닫기"></div>' +
                        '<article>' +
                        '<div class="map_marker_pop_inner">' +
                        '<div class="cont_wrap">';

                    if (places.road_address_name) {
                        content += '<p class ="road_addr">' + places.road_address_name + '</p>'

                    } else {
                        content += '<pclass ="jibun_addr">' + places.address_name + '</pclass>';
                    }

                    content +=
                        '<p class="tel">' + places.phone + '</p>' +
                        '<a class="btn_marker_detail" href="https://map.kakao.com/link/to/' + places.place_name + ',' + places.y + ',' + places.x + '" target="_blank">길찾기</a>' +
                        '</div>' +
                        '</div>' +
                        '</article>' +
                        '</div>';

     

                    infowindow.setContent(content);
                    infowindow.open(map, marker);
                }



                // 검색결과 목록의 자식 Element를 제거하는 함수입니다
                function removeAllChildNods(el) {
                    while (el.hasChildNodes()) {
                        el.removeChild(el.lastChild);
                    }

                }

            </script>
	<script>


                // // 검색버튼 이벤트
                $(".quickSearchBtn").click(function () {
                    searchPlaces();
                }
                );



                $("#keyword").keyup(function (key) {
                    if (key.keyCode === 13) {
                        searchPlaces();
                    }
                });



            </script>



</body>
</html>