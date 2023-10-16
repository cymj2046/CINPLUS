const autoHyphen = (target) => {
	target.value = target.value
	.replace(/[^0-9]/g, '') // 숫자를 제외한 모든 문자 제거
	.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
}
