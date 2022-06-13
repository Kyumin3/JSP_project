	



var id = document.querySelector('#id');
var pw1 = document.querySelector('#pswd1');
var pw2 = document.querySelector('#pswd2');
var userName = document.querySelector('#name');
var address = document.querySelector('#sample6_postcode')
var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');
var email = document.querySelector('#email');
var mobile = document.querySelector('#mobile');
const inputForm = document.querySelector("#joinfrm")

inputForm.addEventListener("submit", checkId);


function checkId(event) {
    var idPattern = /^[A-Za-z0-9+]*$/;
    if(id.value === "") {
		event.preventDefault();
       	alert("아이디를 입력해주세요.");
       	id.focus();
       	return false;
    } else if(!idPattern.test(id.value)) {
   		event.preventDefault();
        alert("아이디는 영문,숫자만 사용가능합니다.");
        id.focus();
    }else{
		checkPw(event);
	}
}

function checkPw(event) {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        event.preventDefault();
       	alert("비밀번호를 입력해주세요.");
       	pw1.focus();
    } else if(!pwPattern.test(pw1.value)) {
        event.preventDefault();
       	alert("비밀번호는 최소 8자, 하나 이상의 문자와 하나의 숫자를 사용해주세요.");
       	pw1.focus();
    }else{
		comparePw(event);
	}
}

function comparePw(event) {
	if(pw2.value !== pw1.value) {
        event.preventDefault();
       	alert("비밀번호가 일치하지 않습니다");
       	pw1.focus();
    }else if(pw2.value === "") {
        event.preventDefault();
       	alert("비밀번호 재확인을 입력해주세요");
       	pw2.focus();
    }else{
		checkName(event);
	}
}

function checkName(event) {
    var namePattern = /^[가-힣]{2,4}$/;
    if(userName.value === "") {
        event.preventDefault();
       	alert("이름을 입력해주세요.");
       	userName.focus();
    } else if(!namePattern.test(userName.value)) {
        event.preventDefault();
       	alert("이름은 2~4자 한글만 입력가능합니다.");
       	userName.focus();
    }else{
		checkAdress(event);
	}
}

function checkAdress(event){
	if(address.value === ""){
		event.preventDefault();
		alert("주소를 입력해주세요.");
		address.focus();
	}else{
		isBirthCompleted(event);
	}
}


function isBirthCompleted(event) {
    var yearPattern = /[0-9]{4}/;

    if(!yearPattern.test(yy.value)) {
        event.preventDefault();
       	alert("년도 4자리를 정확히 입력해주세요.");
       	yy.focus();
    }else if(Number(yy.value)<1900){
    	event.preventDefault();
       	alert("정확한 년도를 입력해주세요.");
       	yy.focus();
    }else if(Number(yy.value)>2022){
    	event.preventDefault();
       	alert("정확한 년도를 입력해주세요.");
       	yy.focus();
    }else{
		isMonthSelected(event);
	}
}
function isMonthSelected(event) {
	if(mm.value === "월") {
		event.preventDefault();
		alert("태어난 월을 선택하세요.");
		mm.focus();
		
	}else {
		isDateCompleted(event);
	}
}

function isDateCompleted(event) {
	if(dd.value === "일") {
		event.preventDefault();
		alert("태어난 날짜를 선택하세요.");
		mm.focus();
	}else{
		isEmailCorrect(event);
	}
}


function checkPhoneNum(event) {
    var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value === "") {
        error[7].innerHTML = "필수 정보입니다.";
        error[7].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[7].style.display = "block";
    } else {
        error[7].style.display = "none";
    }
    
}

function isDateCompleted(event) {
	if(dd.value === "일") {
		event.preventDefault();
		alert("태어난 날짜를 선택하세요.");
		mm.focus();
	}else{
		isEmailCorrect(event);
	}
}

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}



