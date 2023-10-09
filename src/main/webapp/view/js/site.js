
function menuShow(){
	let menu = document.querySelector('.menu_mobile')
	if(menu.classList.contains('dBlock')){
		menu.classList.remove('dBlock')
		document.querySelector('.bt_menu').src ="../img/menu.png"
	}else{
		menu.classList.add('dBlock')
		document.querySelector('.bt_menu').src ="../img/menuX.png"
	}
}
/**
 * 
 */