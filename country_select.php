<html>
<head>
	<meta charset="utf-8">
	<title>Films by Countries</title>
</head>
<body>
	<button class="Home" onclick="location.href='http://localhost/team13/homebtn.php'">Home</button>
	<h1>Select the country you would like to know more about movie information</h1>
	<form action='country_result.php' method="post">
		Country:
		<select name="ctr">
			<option value="">Select Country</option>
			<option value="미국">미국</option>
			<option value="프랑스">프랑스</option>
			<option value="독일">독일</option>
			<option value="이탈리아">이탈리아</option>
			<option value="영국">영국</option>
			<option value="멕시코">멕시코</option>
			<option value="대한민국">대한민국</option>
			<option value="덴마크">덴마크</option>
			<option value="폴란드">폴란드</option>
			<option value="벨기에">벨기에</option>
			<option value="루마니아">루마니아</option>
			<option value="오스트리아">오스트리아</option>
			<option value="태국">태국</option>
			<option value="터키">터키</option>
			<option value="스웨덴">스웨덴</option>
			<option value="일본">일본</option>
			<option value="남아프리카 공화국">남아프리카 공화국</option>
			<option value="보스니아 헤르체고비나">보스니아 헤르체고비나</option>
			<option value="중국">중국</option>
			<option value="브라질">브라질</option>
			<option value="페루">페루</option>
			<option value="이란">이란</option>
			<option value="헝가리">헝가리</option>
			<option value="이스라엘">이스라엘</option>
			<option value="스페인">스페인</option>
			<option value="인도">인도</option>
			<option value="러시아">러시아</option>
			<option value="베네수엘라">베네수엘라</option>
			<option value="필리핀">필리핀</option>
		</select>

		Sort:
		<select name="sort">
			<option value="매출액(내림차순)">매출액(내림차순)</option>
			<option value="매출액(오름차순)">매출액(오름차순)</option>
		</select>

		<input type='submit' value='OK'>
	</form>
</body>
</html>
