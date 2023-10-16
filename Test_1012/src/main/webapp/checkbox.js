$(document).ready(function() {
	// 통신사 체크박스 중복 선택 방지
	$('input[name="carrier"]').on('change', function() {
		if ($(this).is(':checked')) {
			$('input[name="carrier"]').not(this).prop('checked', false);
		}
		// 알뜰 선택 시 select 박스 활성화
		if ($(this).val() === '알뜰') {
			$('select[name="comp"]').prop('disabled', false);
		} else {
			$('select[name="comp"]').prop('disabled', true);
		}
	});
});
