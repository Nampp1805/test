var row_header = document.getElementById("row-header");

function button_right_content_1() {
    var change_img2 = document.getElementById("change_img");
    change_img2.style.backgroundImage = "url('/img/Img/Lethnic---Valentine--Cover-1702x630.webp')";
}
function button_left_content_1() {
    var change_img2 = document.getElementById("change_img");
    change_img2.style.backgroundImage = "url('/img/Img/Leader-Collection-Banner.webp')";
}
function button_promotion() {
    var none_row_promotion = document.getElementById("row-promotion");
    none_row_promotion.style.display = "none";
}
function scrollHeader() {
    if (document.documentElement.scrollTop > 290) {
        row_header.style.position = "fixed";
        row_header.style.backgroundColor = "white";
        row_header.style.boxShadow = "0 0 7px #0003";
        row_header.style.animation = "scroll 1s both";
    }
    else {
        row_header.style.position = "relative";
        row_header.style.backgroundColor = "rgba(255,255,255,.7)";
        row_header.style.boxShadow = "none";
        row_header.style.animation = "none";
    }
}
function button_help() {
    var page_message = document.getElementById("wonder");
    var icon_mess_1 = document.getElementById("bef-icon-1");
    var icon_mess_2 = document.getElementById("bef-icon-2");
    if (page_message.style.display != "block") {
        page_message.style.display = "block";
        icon_mess_1.style.display = "none";
        icon_mess_2.style.display = "block";
        page_message.style.animation = "scroll_question_on 1s both";
    }
    else {
        page_message.style.display = "none"
        icon_mess_1.style.display = "block";
        icon_mess_2.style.display = "none";
    }
}
// order
function minus_row4() {
    var total = document.getElementById("total");
    var result = parseInt(total.value) - 1;
    if (result == 0) {
        result = 1;
    }
    total.value = result;
}
function plus_row4() {
    var total = document.getElementById("total");
    var result = parseInt(total.value) + 1;
    total.value = result;
}



