<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

.replyBtn {
   position: relative;
   left: 390px;
   bottom: 1px;
}
.deleteBtn{
   position: relative;
   left:70px;

}
</style>
<body>
   <script type="text/javascript">
      /* 제목없이 수정시 db로넘기는걸 방지 */
      function inputCheck(){
        if(frm.boardTitle.value=='') {
           alert("제목!!!");
           frm.boardTitle.focus();
           return false;
        }
        
     }
      
   /* 댓글삭제함수 */
      function deleteReply(id,di) {
         document.forms.delFrm.del.value=id;
         
         document.forms.delFrm.boardId.value=di;
         document.forms.delFrm.submit();
      }
   
   /* 수정버튼인지 삭제버튼인지 고르는함수 */
      function selectInfo(str) {
         if (str == "U") {
            frm.action = "boardUpdate.do";
         } else if (str == "D") {
            frm.action = "boardDelete.do";
         }
         return true;
      }
   
   </script>

   <form action="replyDelete.do" method="post" name="delFrm" id="delFrm">
      <input type="hidden" id="del" name="del"> 
      <input type="hidden" id="boardId" name="boardId">
   </form>

   <div align="center">
      <div>
         <h1>자유게시판</h1>
      </div>
      <div align="center">
         <div class="container-fluid pt-4 px-4">
            <div class="col-sm-12 col-xl-6">
               <div class="bg-light rounded h-100 p-4">
                  <form id="frm" method="post" onsubmit="return inputCheck()">
                     <div class="row mb-3">
                        <label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
                        <div class="col-sm-10">
                           <input class="form-control" type="text" id="boardTitle" value="${board.BTitle }" name="boardTitle" required="required">
                        </div>
                     </div>
                     <div class="row mb-3">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">작성일자</label>
                        <div class="col-sm-10">
                           <input class="form-control" type="date" id="noticeDate" value="${board.BDate }" readonly="readonly" name="boardDate">
                        </div>
                     </div>
                     <div class="row mb-3">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">작성자</label>
                        <div class="col-sm-10">
                           <input class="form-control" type="text" id="boardWriter" name="boardWriter" value="${board.BWriter }"  readonly="readonly">
                        </div>
                     </div>
                     <input type="hidden" id="boardId" name="boardId" value="${board.BIdx }">
                     <div class="row mb-3">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">내용</label>
                        <div class="col-sm-10">
                           <textarea class="form-control" rows="10" cols="59" id="boardContent" name="boardContent">${board.BContent }</textarea>
                        </div>
                     </div>
                     <div class="col-md-12" align="center">
                        <c:if test="${name == board.BWriter }">
                           <button type="submit" class="btn btn-primary" onclick="selectInfo('U')">수정</button>&nbsp;&nbsp;
                           <button type="submit" class="btn btn-primary" onclick="selectInfo('D')">삭제</button>&nbsp;&nbsp;
                        </c:if>
                        <button type="button" class="btn btn-primary" onclick="location.href='qnaList.do'">목록</button>
                        &nbsp;&nbsp;
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>


      <!--    댓글 기능 !! -->
      <div><br><br>
         <form id="frm2" action="replyWrite.do" method="post">
            
            <div>
               <table style="border-top: 1px solid black;  width: 890px;">
                  
                  <c:forEach items="${replys }" var="reply">
                     <c:if test="${reply.BIdx == board.BIdx }">
                        <tr>
                           <td width="150"><br>
                              <div>
                                 ${reply.reWriter }
                                 <font size="2" color="gray">${reply.reDate }작성</font>
                              </div>
                           </td>
                           <td width="550" ><br>
                              <div class="text_wrapprr" align="center" style="font-weight:bold;"  >
                                 ${reply.reContent }
                              </div>
                           </td>
                           <c:if test="${reply.reWriter == name }">
                              <td><br>
                                 <div class="deleteBtn">
                                    <input type="button" onclick="deleteReply(${reply.replyId},${board.BIdx })" value="삭제" class="btn btn-primary btn-sm" >
                                 </div>
                              </td>
                           </c:if>
                        </tr>
                     </c:if>
                  </c:forEach>
               </table><br><br>
               <c:if test="${!empty id }">
                  <div>
                  <div class="col-md-5" align="left" style="margin-right:30px" ><h6 style="font-weight:bold">댓글을 등록 해주세요</h6></div>
                     <input type="hidden" id="replyWriter" name="replyWriter" value="${name}" readonly="readonly">
                     <textarea rows="3" cols="111" id="replyContent" name="replyContent" required="required"></textarea>
                     <br>
                     <div class="replyBtn">
                        <input type="submit" class="btn btn-primary btn-sm" value="댓글등록">
                     </div>
                     <input type="hidden" id="replyIdx" name="replyIdx" class="btn btn-primary replySubmit" value="${board.BIdx }">
                     <input type="hidden" id="boardId" name="boardId" class="btn btn-primary" value="${board.BIdx }">
                  </div><br>
               </c:if>
               
            </div>
         </form>
      </div>
   </div>
</body>
</html>