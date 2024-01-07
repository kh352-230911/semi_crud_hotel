document.addEventListener('submit', (e) => {
    if(e.target.matches("[name=reviewCommentCreateFrm]")) {
        const frm = e.target;
        const memberId = frm.memberId;
        const content = frm.content;

        if(!memberId.value) {
            alert('로그인 후 댓글작성이 가능합니다.')
            e.preventDefault();
            return;
        }

        if(!/^(.|\n)+$/.test(content.value.trim())) {
            alert('댓글 내용을 작성해주세요.');
            e.preventDefault();
            return;
        }
    }
});