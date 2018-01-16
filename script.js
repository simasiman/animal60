
  //①

function check() {
	var birthDay = document.foo.birthDay.value;
	if (birthDay == "") {
		alert("生年月日の項目が未入力です。");
		return false;
	}

  //②

	if (birthDay.length != 10) {
		alert("指定の形式になっていません。\nyyyy-mm-dd の形式で入力してください。");
		return false;
	}

  //③

	if (birthDay.substring(4, 5) != "-" || birthDay.substring(7, 8) != "-") {
		alert("区切り文字が - になっていません。\nyyyy-mm-dd の形式で入力してください。");
		return false;
	}

  //④

	var yyyymmdd = birthDay.split("-");
	if (validDate(yyyymmdd[0], yyyymmdd[1], yyyymmdd[2])) {
	}else {
		return false;
	}
}

  //⑤

function validDate(y, m, d) {
    dt=new Date(y, m-1, d);
    dt.setFullYear(y);
    dt.setMonth(m - 1);
    dt.setDate(d);
    if(dt.getFullYear()==y && dt.getMonth()==m-1 && dt.getDate()==d) {
    	return true;
    }else {
    	alert("無効な日付です");
    	return false;
    }
}


  //ランダムで画像表示させる

function randomPichure() {
	var obj = document.getElementById("pic_01");
	var obj2 = document.getElementById("pic_02");
	var obj3 = document.getElementById("pic_03");
	var imgList = [ "elephant.png", "fawn.png", "koala.png", "lion.png", "monkey.png", "panther.png"
	, "pegasus.png", "tiger.png", "wolf.png", "job_uranaishi.png"];
	var i1 = Math.floor(Math.random() * imgList.length);
	obj.src = "img/illust_png/" + imgList[i1];
	var i2 = Math.floor(Math.random() * imgList.length);
	//var i2 = i1;
	obj2.src = "img/illust_png/" + imgList[i2];
	var i3 = Math.floor(Math.random() * imgList.length);
	//var i3 = i1;
	obj3.src = "img/illust_png/" + imgList[i3];
	if (i1 == i2 && i2 == i3) {
		setTimeout("alert('大当たり！！')", 100);
		;
	}
}