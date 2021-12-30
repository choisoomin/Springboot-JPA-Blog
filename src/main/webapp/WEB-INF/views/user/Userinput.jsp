<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>
table {
	margin: auto;
}
</style>
<body>
	<div>
		<form action="userinput" method="get">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" value="m" name="gender">남자 <input
						type="radio" value="w" name="gender">여자</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" name="birth"
						placeholder="ex) 6자리를 입력하세요"></td>
				</tr>
				<tr>
					<td>핸드폰</td>
					<td><input type="text" name="pnum"
						placeholder="ex) 000-0000-0000"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email"
						placeholder="ex) xxxxx@xxxx.xxx"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" id="id"> <input type="button"
						id="but_id" onclick="id_check();" value="중복체크"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="회원가입"> <a href=""><input type="button" name=""
							value="뒤로"></a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script>
	function id_check() {
		var id = $("#id").val();
		$.ajax({
			url : '/cacao/ID_check',
			type : 'GET',
			dataType : 'text',
			data : {
				index : id
			},
			success : function(data) {
				if (data == 0) {
					console.log("아이디 없음");
					alert("사용하실 수 있는 아이디 입니다.");
				} else {
					console.log("아이디 있음");
					alert("중복된 아이디가 존재합니다.");
				}
			},
			error : function() {
				alert("오류")
			}
		});
	}
</script>
</html>

<!-- 
CREATE table members(
no number(5) PRIMARY key,
name VARCHAR2(10)  NOT null,
gender varchar2(5) not null,
birth number(6) not null,
pnum varchar2(13) UNIQUE,
email varchar2(30) UNIQUE,
id VARCHAR2(20) UNIQUE,
pwd varchar2(15) not null
);

create SEQUENCE members_seq;

insert into members values (members_seq.nextval,
		'김두한', 'w', 900701, '010-0000-0001', 'aaa@aa.aaa', 'aaa', '123');
insert into members values (members_seq.nextval,
		'구마적', 'm', 900703, '010-0000-0002', 'bbb@bb.bbb', 'bbb', '123');
insert into members values (members_seq.nextval,
		'태진아', 'm', 920701, '010-0500-0001', 'ccc@cc.ccc', 'ccc', '123');
insert into members values (members_seq.nextval,
		'김무옥', 'm', 940701, '010-1000-0001', 'ddd@dd.ddd', 'ddd', '123');
insert into members values (members_seq.nextval,
		'송대관', 'w', 900401, '010-0020-0001', 'eee@ee.eee', 'eee', '123');
insert into members values (members_seq.nextval,
		'시라소니', 'w', 700701, '010-0000-0601', 'fff@ff.fff', 'fff', '123');
insert into members values (members_seq.nextval,
		'신마적', 'm', 800701, '010-0000-0401', 'ggg@gg.ggg', 'ggg', '123');
insert into members values (members_seq.nextval,
		'설운도', 'm', 900801, '010-0000-0005', 'hhh@hh.hhh', 'hhh', '123');	


 -->