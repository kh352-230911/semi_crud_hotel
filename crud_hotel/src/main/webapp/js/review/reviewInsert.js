document.reviewInsertFrm.addEventListener('submit', (e) => {
   const frm = e.target;
   const title = frm.title;
   const content = frm.content;

   if(!/^.+$/.test(title.value.trim())) {
       alert('제목을 입력해주세요.');
       e.preventDefault();
       return;
   }
    if(!/^(.|\n)+$/.test(content.value.trim())) {
       alert('내용을 작성해주세요.');
       e.preventDefault();
       return;
    }
});