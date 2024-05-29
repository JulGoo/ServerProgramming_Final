function confirmDelete() {
	if (!confirm("정말 삭제하시겠습니까?")) {
		return;
	} else {
		document.getElementById('delete').submit();
	}
}

function checkValidate(){
	if(document.getElementById('title').value == "" || document.getElementById('content').value == ""){
		alert("제목과 내용을 입력해주세요.");
		return false;
	}
	return true;
}