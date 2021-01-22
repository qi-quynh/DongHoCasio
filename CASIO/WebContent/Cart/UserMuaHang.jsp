<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
<link rel="shortcut icon" href="images/logotitle.png" />
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.0/angular.min.js"></script>
<script type="text/javascript" src="/ProjectWeb/myjs/Slider.js"></script>
<script src="/ProjectWeb/magicslideshow.js" type="text/javascript"></script>
<style type="text/css">
table {
	width: 100%;
	font-family: Quicksand;
}

.stylefull {
	width: 100%;
	height: 100%;
}

.padding {
	padding-right: 20px;
	padding-bottom: 30px;
	padding-left: 30px;
	padding-top: 30px;
	font-size: 18px;
	font-family: iciel "#9Slide03 IcielSamsung Sharp Bo";
}

.linkdanhmuc {
	text-decoration: none;
}

table tr td {
	font-size: 18px;
	font-weight: normal;
	padding-left: 20px;
	padding-right: 20px;
}

hr {
	border-color: black;
	border-bottom-color: black;
}

table tr td h1 {
	font-size: 30px;
	font-family: iciel "%239Slide03 IcielSamsung Sharp Bo";
}

table tr td p {
	font-size: 18px;
	font-family: iciel "%239Slide03 IcielSamsung Sharp Bo";
	text-align: center;
}

table tr td {
	font-family: iciel "#9Slide03 IcielSamsung Sharp Bo";
	align-content: center;
	vertical-align: top;
}

table tr td p {
	font-size: 30px;
}

table tr td ol {
	font-size: 20px;
	font-family: "Quicksand";
	font-weight: bold;
}

table tr td ol ul {
	font-size: 16px;
	font-family: "#9Slide03 Open Sans";
	font-weight: normal;
}

.danhmuc {
	font-size: 20px;
}

.colordanhmuc {
	background-color: #ffa5a5;
}

.img {
	max-width: 100%;
	vertical-align: middle;
}

.bangb {
	text-align: left;
	font-family: "#9Slide03 Open Sans";
}

.diva {
	width: 300px;
	text-decoration: none;
}

.diva p a strong {
	text-decoration: none;
	color: black;
	font-size: 17px;
	text-align: left;
}

.diva p a strong:hover {
	color: gray;
	text-decoration: underline;
	font-weight: bold;
}

.diva div p {
	text-decoration: none;
	color: black;
	font-size: 15px;
	text-align: left;
	padding-left: 70px;
}

.diva div p a {
	text-decoration: none;
	color: black;
	font-size: 15px;
	text-align: left;
}

.diva div p a:hover {
	text-decoration: underline;
	color: gray;
	font-weight: bold;
}

thead {
	font-family: "Roboto", sans-serif;
	margin-top: 10px;
}

table thead tr td .container {
	display: flex;
	justify-content: center;
}

table thead tr td .login {
	margin-top: 10px;
	font-family: "Quicksand";
	margin-left: 30px;
	text-align: center;
	color: black;
}

table thead tr td .login a {
	text-decoration: none;
	color: black;
}

table thead tr td .login a:hover {
	color: #ffa5a5;
	font-weight: bold;
	border: 1px solid whitesmoke;
}

table thead tr td .besties {
	flex-grow: 1;
	width: 20%;
	text-align: center;
	margin: 1%;
}

table thead tr td .logo {
	margin-top: -30px;
}

table thead tr td div input {
	margin-top: 30px;
	border-radius: 8px;
	padding: 10px;
}

table thead tr td .cart {
	width: 40px;
	height: 30px;
	margin-top: 7px;
	margin-right: 30px;
}

table thead tr td #search {
	background-image: url(images/find.png);
	background-repeat: no-repeat;
	background-position: right;
}

table thead {
	border: none;
}

table thead tr td div a {
	text-decoration: none;
}

* {
	margin: 0;
	padding: 0;
}

table thead tr td #menu ul {
	background: white;
	color: black;
	text-align: center;
	list-style-type: none;
	border: none;
}

table thead tr td #menu ul li {
	display: inline-block;
	width: 160px;
	height: 40px;
	line-height: 40px;
	margin-left: -5px;
}

table thead tr td #menu ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

table thead tr td #menu ul li a:hover {
	background: whitesmoke;
	color: #ffa5a5;
	font-weight: bold;
}

table thead tr td #menu ul li ul {
	list-style-type: none;
	background: white;
	text-align: center;
}

table thead tr td #menu ul li ul li {
	color: black;
	display: inline-block;
	font-size: 10px;
	border: 1px;
	width: 160px;
	height: 15px;
	margin-left: -5px;
}

table thead tr td #menu ul li ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

table thead tr td #menu ul li ul li a:hover {
	background: whitesmoke;
	color: gray;
	font-weight: bold;
}

table thead tr td .sub-menu {
	display: none;
	position: absolute;
}

table thead tr td #menu li {
	position: relative; /*hiá»ƒn thá»‹ gáº§n menu máº¹*/
}

table tr td #menu li:hover .sub-menu {
	display: block;
}

table thead tr td .sub-menu li {
	margin-left: 0 !important;
}

.cssheader frame {
	display: block;
	border-collapse: collapse;
}

.cssheader form table {
	border: none;
}

.cssheader form table tr td div a {
	text-decoration: none;
}

.cssheader * {
	margin: 0;
	padding: 0;
}

.cssheader #menu ul {
	background: white;
	color: black;
	text-align: center;
	list-style-type: none;
	border: none;
}

.cssheader #menu ul li {
	display: inline-block;
	width: 160px;
	height: 50px;
	line-height: 40px;
	margin-left: -5px;
}

.cssheader #menu ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

.cssheader #menu ul li a:hover {
	background: whitesmoke;
	color: #ffa5a5;
	font-weight: bold;
}

.cssheader #menu ul li ul {
	list-style-type: none;
	background: white;
	text-align: center;
}

.cssheader #menu ul li ul li {
	color: black;
	display: inline-block;
	font-size: 10px;
	border: 1px;
	width: 160px;
	height: 15px;
	margin-left: -5px;
}

.cssheader #menu ul li ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

.cssheader #menu ul li ul li a:hover {
	background: whitesmoke;
	color: gray;
	font-weight: bold;
}

.cssheader .sub-menu {
	display: none;
	position: absolute;
}

.cssheader #menu li {
	position: relative; /*hiá»ƒn thá»‹ gáº§n menu máº¹*/
}

.cssheader #menu li:hover .sub-menu {
	display: block;
}

.cssheader .sub-menu li {
	margin-left: 0 !important;
}

.tensp {
	text-decoration: none;
	color: black;
	height: 80px;
	z-index: 1;
	font-weight: bold;
	font-family: "#9Slide03 IcielSamsung Sharp Bo";
	font-size: 18px;
}

.tensp:hover {
	color: #ffa5a5;
}

.giaban {
	text-align: center;
	margin-left: 20px;
	font-family: iciel "#9Slide03 IcielSamsung Sharp Bo";
	font-size: 22px;
	font-weight: bold;
	color: red;
}

.image {
	padding: 20px;
	padding-left: 40px;
	transition: transform 0.2s;
}

.image:hover {
	transform: scale(1.10);
}

.addtocart {
	background-color: black;
	color: white;
	border: none;
	font-weight: bold;
	transition: transform 0.1s;
}

.addtocart:hover {
	background-color: #ffa5a5;
	color: white;
	border: none;
	cursor: pointer;
	font-weight: bold;
	transform: scale(1.15);
}

.wrap-paging {
	display: flex;
	justify-content: center;
	padding-bottom: 10px;
	padding-top: 40px;
}

.item-paging {
	padding: 6px;
}

.item-paging>a {
	text-decoration: none;
}

.page {
	background-color: black;
	border: none;
	padding: 7px 15px;
	border-radius: 5px;
	color: white;
	font-weight: bold;
	text-decoration: none;
}

.page:hover {
	background-color: black;
	color: #ffa5a5;
	border: none;
	font-weight: bold;
	cursor: pointer;
}

.ellipsis-title {
	margin-left: auto;
}

td .tdcontent {
	align-content: center;
	vertical-align: middle;
}

.slider {
	
}

.slider>*:first-child {
	visibility: hidden;
}

.slider>*:nth-child(n+1) {
	display: none;
}

.form {
	text-align: right;
	padding-right: 40px;
}

.content {
	font-size: 16px;
	font-family: 'Open Sans';
	text-align: left;
}

.head {
	font-size: 25px;
	font-family: Quicksand;
	font-weight: bold;
}

.button {
	background-color: #ffa5a5;
	border: outset;
}

.button:hover {
	cursor: pointer;
}

.imgslide {
	width: 350px;
	height: 350px;
	text-align: right;
}

.tableslide {
	width: 100%;
	height: 500px;
	border: hidden solid #ffa5a5;
}

td .tdimg {
	width: 500px;
	text-align: center;
	vertical-align: central;
	padding: 10px;
	background-image: url(images/BG4.jpg)
}

* {
	box-sizing: border-box
}

body {
	margin: 0
}

.mySlide {
	display: none
}

img {
	vertical-align: middle;
}

.slideshow-container {
	max-width: 100%;
	position: relative;
	margin: auto;
}

.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	padding: 16px;
	margin-top: -22px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 3s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
}

.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/*Ä‘á»‹nh dáº¡ng cho máº¥y cháº¥m trÃ²n dÆ°á»›i slide*/
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}
/*Hiá»‡u á»©ng khi chuyá»ƒn máº¥y slide nho*/
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 2s;
	animation-name: fade;
	animation-duration: 2s;
}

/*------------------------------------------------------------------------*/
table {
	width: 100%;
	font-family: Quicksand
}

.stylefull {
	width: 100%;
	height: 100%;
}

.linkdanhmuc {
	text-decoration: none;
}

table tr td {
	font-size: 18px;
	font-weight: normal;
	padding-left: 20px;
}

hr {
	border-color: black;
	border-bottom-color: black;
}

table tr td h1 {
	font-size: 30px;
	font-family: iciel '%239Slide03 IcielSamsung Sharp Bo';
}

table tr td p {
	font-size: 18px;
	font-family: iciel '%239Slide03 IcielSamsung Sharp Bo';
	text-align: center
}

table tr td {
	font-family: iciel '#9Slide03 IcielSamsung Sharp Bo';
	align-content: center;
	vertical-align: top;
}

table tr td p {
	font-size: 30px
}

table tr td ol {
	font-size: 20px;
	font-family: 'Quicksand';
	font-weight: bold
}

table tr td ol ul {
	font-size: 16px;
	font-family: '#9Slide03 Open Sans';
	font-weight: normal
}

.danhmuc {
	font-size: 20px;
}

.colordanhmuc {
	background-color: #ffa5a5;
}

.img {
	max-width: 100%;
	vertical-align: middle;
}

.bangb {
	text-align: left;
	font-family: '#9Slide03 Open Sans'
}

.diva {
	width: 300px;
	text-decoration: none;
}

.diva p a strong {
	text-decoration: none;
	color: black;
	font-size: 17px;
	text-align: left;
}

.diva p a strong:hover {
	color: gray;
	text-decoration: underline;
	font-weight: bold;
}

.diva div p {
	text-decoration: none;
	color: black;
	font-size: 15px;
	text-align: left;
	padding-left: 70px;
}

.diva div p a {
	text-decoration: none;
	color: black;
	font-size: 15px;
	text-align: left;
}

.diva div p a:hover {
	text-decoration: underline;
	color: gray;
	font-weight: bold;
}

thead {
	font-family: "Roboto", sans-serif;
	margin-top: 10px;
}

table thead tr td .container {
	display: flex;
	justify-content: center;
}

table thead tr td .login {
	margin-top: 10px;
	font-family: 'Quicksand';
	margin-left: 30px;
	text-align: center;
	color: black;
}

table thead tr td .login a {
	text-decoration: none;
	color: black;
}

table thead tr td .login a:hover {
	color: #ffa5a5;
	font-weight: bold;
	border: 1px solid whitesmoke;
}

table thead tr td .besties {
	flex-grow: 1;
	width: 20%;
	text-align: center;
	margin: 1%;
}

table thead tr td .logo {
	margin-top: -30px;
}

table thead tr td div input {
	margin-top: 30px;
	border-radius: 8px;
	padding: 10px;
}

table thead tr td .cart {
	width: 40px;
	height: 30px;
	margin-top: 7px;
	margin-right: 30px;
}

table thead tr td #search {
	background-image: url(images/find.png);
	background-repeat: no-repeat;
	background-position: right;
}

table thead {
	border: none;
}

table thead tr td div a {
	text-decoration: none;
}

* {
	margin: 0;
	padding: 0;
}

table thead tr td #menu ul {
	background: white;
	color: black;
	text-align: center;
	list-style-type: none;
	border: none;
}

table thead tr td #menu ul li {
	display: inline-block;
	width: 160px;
	height: 40px;
	line-height: 40px;
	margin-left: -5px;
}

table thead tr td #menu ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

table thead tr td #menu ul li a:hover {
	background: whitesmoke;
	color: #ffa5a5;
	font-weight: bold;
}

table thead tr td #menu ul li ul {
	list-style-type: none;
	background: white;
	text-align: center;
}

table thead tr td #menu ul li ul li {
	color: black;
	display: inline-block;
	font-size: 10px;
	border: 1px;
	width: 160px;
	height: 15px;
	margin-left: -5px;
}

table thead tr td #menu ul li ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

table thead tr td #menu ul li ul li a:hover {
	background: whitesmoke;
	color: gray;
	font-weight: bold;
}

table thead tr td .sub-menu {
	display: none;
	position: absolute;
}

table thead tr td #menu li {
	position: relative; /*hiá»ƒn thá»‹ gáº§n menu máº¹*/
}

table tr td #menu li:hover .sub-menu {
	display: block;
}

table thead tr td .sub-menu li {
	margin-left: 0 !important;
}

.cssheader frame {
	display: block;
	border-collapse: collapse;
}

.cssheader form table {
	border: none;
}

.cssheader form table tr td div a {
	text-decoration: none;
}

.cssheader * {
	margin: 0;
	padding: 0;
}

.cssheader #menu ul {
	background: white;
	color: black;
	text-align: center;
	list-style-type: none;
	border: none;
}

.cssheader #menu ul li {
	display: inline-block;
	width: 160px;
	height: 50px;
	line-height: 40px;
	margin-left: -5px;
}

.cssheader #menu ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

.cssheader #menu ul li a:hover {
	background: whitesmoke;
	color: #ffa5a5;
	font-weight: bold;
}

.cssheader #menu ul li ul {
	list-style-type: none;
	background: white;
	text-align: center;
}

.cssheader #menu ul li ul li {
	color: black;
	display: inline-block;
	font-size: 10px;
	border: 1px;
	width: 160px;
	height: 15px;
	margin-left: -5px;
}

.cssheader #menu ul li ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

.cssheader #menu ul li ul li a:hover {
	background: whitesmoke;
	color: gray;
	font-weight: bold;
}

.cssheader .sub-menu {
	display: none;
	position: absolute;
}

.cssheader #menu li {
	position: relative; /*hiá»ƒn thá»‹ gáº§n menu máº¹*/
}

.cssheader #menu li:hover .sub-menu {
	display: block;
}

.cssheader .sub-menu li {
	margin-left: 0 !important;
}

.MagicSlideshow>*:first-child {
	visibility: hidden;
}

.MagicSlideshow>*:nth-child(n+2) {
	display: none;
}

.MagicSlideshow .mss-error-block, .mss-fullscreen .mss-error-block {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	margin: auto;
	position: absolute;
	display: inline-block;
}

.MagicSlideshow .mss-error-block .mss-error-message, .mss-fullscreen .mss-error-block .mss-error-message
	{
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
}

.mss-fullscreen .mss-error-block .mss-error-message {
	color: white;
}

.mss-bullets .mss-selectors-container {
	align-items: center;
}

.mss-selectors-horizontal .mss-bullets .mss-selectors-container {
	max-width: 100%;
}

.mss-selectors-vertical .mss-bullets .mss-selectors-container {
	max-height: 100%;
}

.mss-selectors-right .mss-bullets .mss-selectors-container,
	.mss-selectors-bottom .mss-bullets .mss-selectors-container {
	flex-wrap: wrap;
}

.mss-selectors-top .mss-bullets .mss-selectors-container,
	.mss-selectors-left .mss-bullets .mss-selectors-container {
	flex-wrap: wrap-reverse;
}

.mss-selectors-horizontal .mss-bullets {
	width: 100%;
	height: 40px;
	min-height: 24px;
}

.mss-selectors-vertical .mss-bullets {
	min-width: 24px;
	width: 40px;
	/*height: 100%;*/
}

.mss-bullets .mss-selector {
	width: 14px;
	height: 14px;
	border-radius: 8px;
	background: none repeat scroll 0 0 #aaa;
	margin: 2px;
	cursor: pointer;
	display: inline-block;
	position: relative;
	text-indent: 9999px;
	vertical-align: middle;
}

.mss-bullets .mss-selector:after {
	width: 8px;
	height: 8px;
	border: 1px solid transparent;
	border-radius: 8px;
	margin: 3px;
	content: '';
	position: relative;
	display: block;
	text-indent: 9999px;
	background: none;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.mss-bullets .mss-selector-active:hover:after, .mss-bullets .mss-selector-active:after
	{
	content: "";
	background: #fff !important;
	border-color: transparent;
}

.mss-bullets .mss-selector:hover:after {
	content: "";
	background: #555 !important;
	border-color: transparent;
}

.MagicSlideshow.mss-bullets-inside {
	padding: 0px !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-top.mss-bullets-left .mss-bullets .mss-selectors-wrapper,
	.MagicSlideshow.mss-bullets-inside.mss-selectors-bottom.mss-bullets-left .mss-bullets .mss-selectors-wrapper
	{
	padding-left: 10px;
	text-align: left !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-top.mss-bullets-right .mss-bullets .mss-selectors-wrapper,
	.MagicSlideshow.mss-bullets-inside.mss-selectors-bottom.mss-bullets-right .mss-bullets .mss-selectors-wrapper
	{
	padding-right: 10px;
	text-align: right !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-left.mss-bullets-top .mss-bullets .mss-selectors-wrapper,
	.MagicSlideshow.mss-bullets-inside.mss-selectors-right.mss-bullets-top .mss-bullets .mss-selectors-wrapper
	{
	padding-top: 10px;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-left.mss-bullets-top .mss-bullets .mss-selectors-container,
	.MagicSlideshow.mss-bullets-inside.mss-selectors-right.mss-bullets-top .mss-bullets .mss-selectors-container
	{
	vertical-align: top !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-left.mss-bullets-bottom .mss-bullets .mss-selectors-wrapper,
	.MagicSlideshow.mss-bullets-inside.mss-selectors-right.mss-bullets-bottom .mss-bullets .mss-selectors-wrapper
	{
	padding-bottom: 10px;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-left.mss-bullets-bottom .mss-bullets .mss-selectors-container,
	.MagicSlideshow.mss-bullets-inside.mss-selectors-right.mss-bullets-bottom .mss-bullets .mss-selectors-container
	{
	vertical-align: bottom !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-bottom .mss-slider {
	bottom: 0px !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-top .mss-slider {
	top: 0px !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-left .mss-slider {
	left: 0px !important;
}

.MagicSlideshow.mss-bullets-inside.mss-selectors-right .mss-slider {
	right: 0px !important;
}
/**
 * Thumbnails
 */
.mss-thumbnails {
	background: #d9d9d9;
}

.mss-selectors-horizontal .mss-thumbnails .mss-selectors-container {
	padding: 8px 0;
}

.mss-selectors-vertical .mss-thumbnails .mss-selectors-container {
	padding: 0 8px;
}

.mss-thumbnails .mss-selector {
	opacity: .6;
}

.mss-selectors-horizontal .mss-thumbnails .mss-selector {
	margin: 0 5px;
}

.mss-selectors-vertical .mss-thumbnails .mss-selector {
	margin: 5px 0;
}

.mss-thumbnails .mss-selector-active {
	opacity: 1;
	-webkit-box-shadow: 0px 0px 2px 2px #888888;
	-moz-box-shadow: 0px 0px 2px 2px #888888;
	box-shadow: 0px 0px 2px 2px #888888;
}

.mss-selectors-eye {
	border: 3px solid #fff;
}

.mss-selector-empty {
	box-shadow: inset 0px 0px 10px rgba(0, 0, 0, 0.9);
}
/**
 * Caption
 */
.mss-caption {
	width: 100%;
	bottom: 0;
	left: 0;
	z-index: 50;
	position: absolute;
	display: block;
}

.mss-caption>span {
	font-size: 14px;
	height: auto;
	background: rgba(255, 255, 255, 0.7);
	color: #222;
	text-align: left;
	line-height: 1.4;
	padding: 3px 8px;
	position: absolute;
	left: 0;
	bottom: 0;
	opacity: .7;
	width: 100%;
	z-index: 100;
}

.mss-caption-title {
	font-size: 125%;
	display: block;
}

.mss-caption a {
	color: #222;
}

.mss-caption a:visited {
	color: #444;
}

.mss-caption a:hover {
	color: #000;
}

.mss-buttons-wrapper {
	z-index: 300;
}

.mobile-magic .mss-buttons-wrapper {
	opacity: 0;
	pointer-events: none;
}

.mobile-magic .mss-buttons-wrapper.mss-show {
	pointer-events: auto;
	position: absolute; /* just for ios */
	top: 0; /* just for ios */
	right: 0; /* just for ios */
	bottom: 0; /* just for ios */
	left: 0; /* just for ios */
	animation-name: controls-wrapper-hide;
	animation-delay: 2s;
	animation-duration: .5s;
	animation-direction: normal;
	animation-timing-function: ease-out;
	animation-fill-mode: both;
	animation-iteration-count: 1;
}

.mobile-magic .mss-buttons-curtain {
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 900;
	position: absolute;
	pointer-events: none;
	background-color: rgba(0, 0, 0, 0.3);
}

.mss-button {
	cursor: pointer;
	z-index: 1000;
	position: absolute;
	display: block;
	opacity: 1;
	background-repeat: no-repeat;
	background-color: transparent !important;
	background-image: none !important;
	border: 0;
	border-radius: 0;
	-webkit-transition: opacity .3s linear;
	transition: opacity .3s linear;
}

.mss-desktop .mss-button {
	opacity: 0;
}

.mss-desktop .mss-slider:hover .mss-button {
	opacity: .6;
}

.mss-desktop .mss-slider:hover .mss-button:hover, .mss-desktop .mss-selectors:hover .mss-button:hover
	{
	opacity: 1;
	filter: alpha(opacity = 100);
}

.mss-button-hidden {
	opacity: 0 !important;
	filter: alpha(opacity = 0) !important;
}

.mss-selectors .mss-button {
	position: relative;
	display: inline-block;
}

.mss-button-play, .mss-button-fullscreen {
	z-index: 2000;
	font-size: 100%;
}

.mss-horizontal .mss-slider .mss-arrow-prev:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-prev:before,
	.mss-horizontal .mss-slider .mss-arrow-next:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-next:before,
	.mss-vertical .mss-slider .mss-arrow-prev:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-prev:before,
	.mss-vertical .mss-slider .mss-arrow-next:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-next:before {
	content: "";
	width: 16px;
	height: 16px;
	position: absolute;
	border-width: 4px;
	border-style: solid;
	border-bottom: none;
	border-right: none;
	-webkit-transform-origin: top left;
	transform-origin: top left;
}

.mss-selectors-horizontal .mss-selectors .mss-arrow-prev:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-next:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-prev:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-next:before {
	width: 15px;
	height: 15px;
}

.mss-horizontal .mss-slider .mss-arrow-prev:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-prev:before {
	left: 25%;
	-webkit-transform: rotateZ(-45deg);
	transform: rotateZ(-45deg);
}

.mss-horizontal .mss-slider .mss-arrow-next:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-next:before {
	left: 75%;
	-webkit-transform: rotateZ(135deg);
	transform: rotateZ(135deg);
}

.mss-vertical .mss-slider .mss-arrow-prev:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-prev:before {
	top: 30%;
	left: 50%;
	-webkit-transform: rotateZ(45deg);
	transform: rotateZ(45deg);
}

.mss-vertical .mss-slider .mss-arrow-next:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-next:before {
	top: 70%;
	-webkit-transform: rotateZ(-135deg);
	transform: rotateZ(-135deg);
}

.mss-state-play:before {
	content: "";
	width: 0;
	height: 0;
	position: absolute;
	border-color: transparent;
	border-style: solid;
	border-width: 25px;
	border-top-width: 15px;
	border-bottom-width: 15px;
	-webkit-transform: translate(-20%, -50%);
	transform: translate(-20%, -50%);
}

.mss-state-pause:before, .mss-state-pause:after {
	content: "";
	top: 20%;
	width: 16%;
	height: 60%;
	position: absolute;
	-webkit-transform: translateX(-50%);
	transform: translateX(-50%);
}

.mss-state-pause:before {
	left: 35%;
}

.mss-state-pause:after {
	left: 65%;
}

.mss-button-fullscreen-enter:before, .mss-button-fullscreen-enter:after,
	.mss-button-fullscreen-exit:before, .mss-button-fullscreen-exit:after {
	content: "";
	position: absolute;
	width: 28px;
	height: 4px;
	border-style: solid;
	border-width: 0 9px;
	-webkit-transform-origin: 0% 0%;
	transform-origin: 0% 0%;
	box-sizing: border-box;
}

.mss-button-fullscreen-exit:before, .mss-button-fullscreen-exit:after {
	width: 36px;
	box-sizing: inherit;
}

.mss-button-fullscreen-enter:before, .mss-button-fullscreen-exit:before
	{
	-webkit-transform: rotate(45deg) translate(-50%, -50%);
	transform: rotate(45deg) translate(-50%, -50%);
}

.mss-button-fullscreen-enter:after, .mss-button-fullscreen-exit:after {
	-webkit-transform: rotate(-45deg) translate(-50%, -50%);
	transform: rotate(-45deg) translate(-50%, -50%);
}

.mss-button-fullscreen-enter .mss-button-element,
	.mss-button-fullscreen-exit .mss-button-element {
	display: block;
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
}

.mss-button-fullscreen-enter .mss-button-element:before,
	.mss-button-fullscreen-enter .mss-button-element:after,
	.mss-button-fullscreen-exit .mss-button-element:before,
	.mss-button-fullscreen-exit .mss-button-element:after {
	content: "";
	position: absolute;
	width: 28px;
	height: 0;
	border-style: solid;
	border-top-color: transparent;
	border-bottom-color: transparent;
	box-sizing: border-box;
}

.mss-button-fullscreen-exit .mss-button-element:before,
	.mss-button-fullscreen-exit .mss-button-element:after {
	width: 24px;
}

.mss-button-fullscreen-enter .mss-button-element:before,
	.mss-button-fullscreen-enter .mss-button-element:after {
	-webkit-transform: translateX(-50%);
	transform: translateX(-50%);
}

.mss-button-fullscreen-enter .mss-button-element:before {
	top: 25%;
	border-width: 0 10px 10px;
}

.mss-button-fullscreen-enter .mss-button-element:after {
	top: 58%;
	border-width: 10px 10px 0;
}

.mss-button-fullscreen-exit .mss-button-element:before,
	.mss-button-fullscreen-exit .mss-button-element:after {
	top: 50%;
	border-width: 8px;
}

.mss-button-fullscreen-exit .mss-button-element:before {
	-webkit-transform: translate(-50%, -50%) rotateZ(45deg);
	transform: translate(-50%, -50%) rotateZ(45deg);
}

.mss-button-fullscreen-exit .mss-button-element:after {
	-webkit-transform: translate(-50%, -50%) rotateZ(-45deg);
	transform: translate(-50%, -50%) rotateZ(-45deg);
}

/**
 * Fullscreen button
 */
.mss-button-fullscreen {
	top: 0;
	right: 0;
	width: 56px;
	height: 56px;
}

/**
 * Play/Pause button
 */
.mss-button-play {
	top: 50%;
	left: 50%;
	margin-left: -20px;
	margin-top: -20px;
	width: 40px;
	height: 40px;
	display: none;
}

/**
 * Slider arrows
 */
.mss-horizontal .mss-arrows-pair {
	top: 0;
	width: 60px;
	height: 100%;
}

.mss-vertical .mss-arrows-pair {
	left: 0;
	width: 100%;
	height: 60px;
}

.mss-horizontal .mss-slider .mss-arrow-prev, .mss-selectors-horizontal .mss-selectors .mss-arrow-prev
	{
	left: 0;
}

.mss-horizontal .mss-slider .mss-arrow-next, .mss-selectors-horizontal .mss-selectors .mss-arrow-next
	{
	right: 0;
}

.mss-vertical .mss-slider .mss-arrow-prev, .mss-selectors-vertical .mss-selectors .mss-arrow-prev
	{
	top: 0;
}

.mss-vertical .mss-slider .mss-arrow-next, .mss-selectors-vertical .mss-selectors .mss-arrow-next
	{
	bottom: 0;
}

/**
 * Selectors arrows
 */
.mss-selectors .mss-button {
	opacity: 0.6;
}

.mss-selectors-horizontal .mss-selectors .mss-button {
	width: 30px;
	min-width: 30px;
}

.mss-selectors-vertical .mss-selectors .mss-button {
	height: 30px;
	width: 100%;
	top: auto;
	left: 0;
	margin-left: auto;
}

/**
  * ie
  */
.lt-ie10-magic .mss-button:before, .lt-ie10-magic .mss-button-fullscreen-enter:before,
	.lt-ie10-magic .mss-button-fullscreen-exit:before {
	color: #ccc;
}

.mss-horizontal .mss-slider .mss-arrow-prev:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-prev:before,
	.mss-horizontal .mss-slider .mss-arrow-next:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-next:before,
	.mss-vertical .mss-slider .mss-arrow-prev:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-prev:before,
	.mss-vertical .mss-slider .mss-arrow-next:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-next:before {
	border-color: rgba(180, 180, 180, .75);
}

.mss-state-play:before {
	border-left-color: rgba(180, 180, 180, .75);
}

.mss-state-pause:before, .mss-state-pause:after {
	background-color: rgba(180, 180, 180, .75);
}

.mss-button-fullscreen-enter:before, .mss-button-fullscreen-enter:after,
	.mss-button-fullscreen-exit:before, .mss-button-fullscreen-exit:after {
	border-color: rgba(180, 180, 180, .75);
}

.mss-button-fullscreen-enter .mss-button-element:before,
	.mss-button-fullscreen-enter .mss-button-element:after,
	.mss-button-fullscreen-exit .mss-button-element:before,
	.mss-button-fullscreen-exit .mss-button-element:after {
	border-left-color: rgba(180, 180, 180, .75);
	border-right-color: rgba(180, 180, 180, .75);
}

.mobile-magic .mss-button-play {
	display: block;
}

.mss-content-slide {
	background-color: #f3f3f3;
	padding: 6px 10px;
}

.mss-fullscreen {
	background: #1b1b1b;
}

.mss-fullscreen .mss-selectors {
	background: #D9D9D9;
	opacity: .8;
}

.mss-fullscreen .mss-message {
	font-size: 18px;
	color: #fff;
	background-color: #000;
	border-color: #ccc;
	top: 15px;
}

/**
 * Miscellaneous
 */
.mss-loader {
	width: 42px;
	height: 42px;
	top: 50%;
	left: 50%;
	margin: -21px 0 0 -21px;
	opacity: 1;
	pointer-events: none;
	background-color: rgba(0, 0, 0, 0.3);
	border-radius: 50%;
}

.mss-loader:before {
	content: "";
	top: 50%;
	left: 50%;
	width: 34px;
	height: 34px;
	border-radius: 50%;
	position: absolute;
	box-sizing: border-box;
	border: 2px solid white;
	margin: -17px 0 0 -17px;
	border-left-color: transparent;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-animation: magicslideshow-loading 1.5s infinite linear;
	animation: magicslideshow-loading 1.5s infinite linear;
}

.mss-message {
	color: #000;
	background-color: #FFFFFF;
	background-image: none;
	border: 1px solid #AAAAAA;
	font-size: 10px;
	padding: 6px;
	display: block;
	overflow: hidden;
	position: absolute;
	text-align: center;
	top: 50%;
	width: 33%;
	left: 33%;
	z-index: 100;
	border-collapse: separate;
	border-radius: 15px;
	-webkit-box-shadow: 0 0 10px #000;
	box-shadow: 0 0 10px #000;
}

.mss-desktop .MagicSlideshow .mss-slide:hover .mss-wrapper-timer {
	opacity: 1;
}

.mss-wrapper-timer {
	opacity: 0;
	-webkit-transition: opacity .3s linear;
	transition: opacity .3s linear;
}

.mss-desktop .mss-slider:hover .mss-wrapper-timer {
	opacity: 1;
}

.mss-wrapper-timer {
	height: 5px;
	z-index: 1000;
}

.mss-wrapper-timer .mss-progress-line {
	background-color: red;
	background: linear-gradient(to right, #FFDAB9, #FF0000);
}

/**
 * Tooltip
 */
.mss-bullets-preview-thumbnail {
	height: 80px;
	border: 5px solid;
	border-radius: 5px;
	z-index: 42;
	pointer-events: none;
}

.mss-direction-top .mss-bullets-preview-arrow {
	bottom: -9px;
	left: 50%;
	margin-left: -5px;
	border-width: 5px 5px 0;
	border-top-color: #000;
}

.mss-direction-bottom .mss-bullets-preview-arrow {
	top: -9px;
	left: 50%;
	margin-left: -5px;
	border-width: 0 5px 5px;
	border-bottom-color: #000;
}

.mss-feedback-animation {
	top: 50%;
	left: 50%;
	width: 50px;
	height: 50px;
	margin-top: -20px;
	margin-left: -20px;
	border-radius: 50%;
	z-index: 9999999999;
	position: absolute;
	background-color: #000000;
	opacity: 0.5;
	-webkit-pointer-events: none;
	pointer-events: none;
	-webkit-transform: scale(1, 1);
	transform: scale(1, 1);
}

.mss-feedback-animation.mss-hide {
	display: none;
}

.mss-feedback-animation:before {
	content: '';
	top: 50%;
	left: 50%;
	position: absolute;
	border-style: solid;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transform: translateY(-50%) translateX(-50%);
	transform: translateY(-50%) translateX(-50%);
}

.mss-feedback-animation.mss-play:before {
	width: 12px;
	height: 16px;
	border-top-width: 8px;
	border-top-color: transparent;
	border-left-width: 12px;
	border-left-color: rgba(255, 255, 255, 0.8);
	border-bottom-width: 8px;
	border-bottom-color: transparent;
	border-right-width: 0px;
	margin-left: 1px;
}

.mss-feedback-animation.mss-pause:before {
	width: 15px;
	height: 16px;
	border-width: 5px;
	border-top-width: 0px;
	border-bottom-width: 0px;
	border-color: rgba(255, 255, 255, 0.8);
}

.mss-feedback-animation.mss-play, .mss-feedback-animation.mss-pause {
	opacity: 0;
	-webkit-transform: scale(2, 2);
	transform: scale(2, 2);
	-webkit-transition: opacity .8s linear, transform .8s linear;
	transition: opacity .8s linear, transform .8s linear;
}

.MagicSlideshow .mss-slide .mss-slide-button, .MagicSlideshow .mss-slide .mss-slide-button:hover
	{
	text-decoration: none !important;
	cursor: pointer;
}

.MagicSlideshow .mss-slide .mss-slide-button:visited {
	color: inherit;
}

.MagicSlideshow .mss-slide a.mss-slide-button p {
	margin: 0 !important;
}

.MagicSlideshow.mss-control-bar .mss-button-play, .mss-fullscreen.mss-control-bar .mss-button-play
	{
	display: block;
}

.MagicSlideshow.mss-control-bar .mss-buttons-wrapper, .mss-fullscreen.mss-control-bar .mss-buttons-wrapper
	{
	left: 50%;
	bottom: 10%;
	/*text-align: center;*/
	transform: translate(-50%, 0);
	-webkit-transform: translate(-50%, 0);
	background-color: rgba(0, 0, 0, 0.6);
	height: 56px;
	position: absolute;
	display: inline-block;
	border-radius: 5px;
	border: 2px solid white;
	-webkit-transition: opacity .3s linear;
	transition: opacity .3s linear;
	line-height: 100%;
	opacity: 0;
	filter: alpha(opacity = 0);
}

.mss-desktop.mss-fullscreen.mss-control-bar .mss-buttons-wrapper {
	opacity: 1;
	filter: alpha(opacity = 1);
}

.mss-fullscreen.mss-control-bar .mss-buttons-wrapper {
	left: 0px;
	bottom: 0px;
	width: 100%;
	transform: none;
	-webkit-transform: none;
	display: -webkit-flex;
	display: flex;
	-webkit-align-items: center;
	align-items: center;
	-webkit-justify-content: space-around;
	justify-content: space-around;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	height: 100px;
}

.mss-desktop.mss-fullscreen.mss-control-bar .mss-buttons-wrapper {
	left: 50%;
	transform: translate(-50%, 0);
	-webkit-transform: translate(-50%, 0);
	bottom: 10%;
	height: 56px;
	width: auto;
}

.mss-desktop.MagicSlideshow.mss-control-bar .mss-slider:hover .mss-buttons-wrapper,
	.mss-desktop.mss-fullscreen.mss-control-bar .mss-slider:hover .mss-buttons-wrapper
	{
	opacity: 1;
	filter: alpha(opacity = 100);
}

.MagicSlideshow.mss-control-bar .mss-buttons-wrapper .mss-button,
	.mss-fullscreen.mss-control-bar .mss-buttons-wrapper .mss-button {
	top: 0;
	position: relative !important;
	float: left;
	display: inline-block;
	opacity: 0.6;
	filter: alpha(opacity = 60);
	width: 56px;
	height: 56px;
}

.MagicSlideshow.mss-control-bar .mss-button-play, .mss-fullscreen.mss-control-bar .mss-button-play
	{
	top: auto;
	left: auto;
	margin: 0;
}

.MagicSlideshow.mss-arrows-slide .mss-arrows-pair {
	opacity: 0.6;
	transition: transform .3s linear;
	-webkit-transition: -webkit-transform .3s linear;
}

.MagicSlideshow.mss-horizontal.mss-arrows-slide .mss-arrow-prev {
	transform: translate(-100%, 0%);
	-webkit-transform: translate(-100%, 0%);
}

.MagicSlideshow.mss-horizontal.mss-arrows-slide .mss-arrow-next {
	transform: translate(100%, 0%);
	-webkit-transform: translate(100%, 0%);
}

.MagicSlideshow.mss-vertical.mss-arrows-slide .mss-arrow-prev {
	transform: translate(0%, -100%);
	-webkit-transform: translate(0%, 0%);
}

.MagicSlideshow.mss-vertical.mss-arrows-slide .mss-arrow-next {
	transform: translate(0%, 100%);
	-webkit-transform: translate(0%, 100%);
}

.MagicSlideshow.mss-arrows-slide:hover .mss-arrow-prev, .MagicSlideshow.mss-arrows-slide:hover .mss-arrow-next
	{
	transform: translate(0%, 0%);
	-webkit-transform: translate(0%, 0%);
}

.mss-horizontal .mss-slider .mss-arrow-prev:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-prev:before,
	.mss-horizontal .mss-slider .mss-arrow-next:before,
	.mss-selectors-horizontal .mss-selectors .mss-arrow-next:before,
	.mss-vertical .mss-slider .mss-arrow-prev:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-prev:before,
	.mss-vertical .mss-slider .mss-arrow-next:before,
	.mss-selectors-vertical .mss-selectors .mss-arrow-next:before {
	/*border-color: white;*/
	border-color: rgba(180, 180, 180, .75) !important;
}

.mobile-magic .mss-horizontal .mss-slider .mss-arrow-prev:before,
	.mobile-magic .mss-selectors-horizontal .mss-selectors .mss-arrow-prev:before,
	.mobile-magic .mss-horizontal .mss-slider .mss-arrow-next:before,
	.mobile-magic .mss-selectors-horizontal .mss-selectors .mss-arrow-next:before,
	.mobile-magic .mss-vertical .mss-slider .mss-arrow-prev:before,
	.mobile-magic .mss-selectors-vertical .mss-selectors .mss-arrow-prev:before,
	.mobile-magic .mss-vertical .mss-slider .mss-arrow-next:before,
	.mobile-magic .mss-selectors-vertical .mss-selectors .mss-arrow-next:before
	{
	border-color: white !important;
}

.mss-state-play:before {
	/*border-left-color: white;*/
	border-left-color: rgba(180, 180, 180, .75) !important;
}

.mobile-magic .mss-state-play:before {
	border-left-color: white !important;
}

.mss-state-pause:before, .mss-state-pause:after {
	/*background-color: white;*/
	background-color: rgba(180, 180, 180, .75) !important;
}

.mobile-magic .mss-state-pause:before, .mobile-magic .mss-state-pause:after
	{
	background-color: white !important;
}

.mss-button-fullscreen-enter:before, .mss-button-fullscreen-enter:after,
	.mss-button-fullscreen-exit:before, .mss-button-fullscreen-exit:after {
	/*border-color: white;*/
	border-color: rgba(180, 180, 180, .75) !important;
}

.mobile-magic .mss-button-fullscreen-enter:before, .mobile-magic .mss-button-fullscreen-enter:after,
	.mobile-magic .mss-button-fullscreen-exit:before, .mobile-magic .mss-button-fullscreen-exit:after
	{
	border-color: white !important;
}

.mss-button-fullscreen-enter .mss-button-element:before,
	.mss-button-fullscreen-enter .mss-button-element:after,
	.mss-button-fullscreen-exit .mss-button-element:before,
	.mss-button-fullscreen-exit .mss-button-element:after {
	/*border-left-color: white;*/
	/*border-right-color: white;*/
	border-left-color: rgba(180, 180, 180, .75) !important;
	border-right-color: rgba(180, 180, 180, .75) !important;
}

.mobile-magic .mss-button-fullscreen-enter .mss-button-element:before,
	.mobile-magic .mss-button-fullscreen-enter .mss-button-element:after,
	.mobile-magic .mss-button-fullscreen-exit .mss-button-element:before,
	.mobile-magic .mss-button-fullscreen-exit .mss-button-element:after {
	border-left-color: white !important;
	border-right-color: white !important;
}

.auto-style1 {
	width: 274px;
}

.auto-style3 {
	height: 50px;
	padding-left: 50px;
}

body {
	font-family: "Roboto", sans-serif;
	margin-top: 10px;
}

table tr td .container {
	display: flex;
	justify-content: center;
}

table tr td .login {
	width: 200px;
	padding-top: 10px;
	text-align: center;
	color: black;
	border-radius: 8px;
}

table tr td .login:hover {
	background-color: whitesmoke;
}

table tr td .login a {
	text-decoration: none;
	color: black;
}

table tr td .login a:hover {
	color: #ffa5a5;
	font-weight: bold;
	border: 1px solid whitesmoke;
}

table tr td .besties {
	flex-grow: 1;
	width: 20%;
	text-align: center;
	margin: 1%;
}

table tr td .logo {
	margin-top: -10px;
}

table tr td div input {
	margin-top: 30px;
	border-radius: 8px;
	padding: 10px;
}

table tr td .cart {
	width: 40px;
	height: 30px;
	margin-top: 7px;
	margin-right: 30px;
}

table tr td .cart:hover {
	cursor: pointer;
}

table tr td #search {
	background-image: url(images/find.png);
	background-repeat: no-repeat;
	background-position: 200px;
}

.cssheader form table {
	border: none;
}

.cssheader form table tr td div a {
	text-decoration: none;
}

.cssheader * {
	margin: 0;
	padding: 0;
}

.cssheader table tr td #menu ul {
	background: white;
	color: black;
	text-align: center;
	list-style-type: none;
	border: none;
}

.cssheader table tr td #menu ul li {
	display: inline-block;
	width: 160px;
	height: 40px;
	line-height: 40px;
	margin-left: -5px;
}

.cssheader table tr td #menu ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

.cssheader table tr td #menu ul li a:hover {
	background: whitesmoke;
	color: #ffa5a5;
	font-weight: bold;
}

.cssheader table tr td #menu ul li ul {
	list-style-type: none;
	background: white;
	text-align: center;
}

.cssheader table tr td #menu ul li ul li {
	color: black;
	display: inline-block;
	font-size: 10px;
	border: 1px;
	width: 160px;
	height: 15px;
	margin-left: -5px;
}

.cssheader table tr td #menu ul li ul li a {
	text-decoration: none;
	color: black;
	display: block;
}

.cssheader table tr td #menu ul li ul li a:hover {
	background: whitesmoke;
	color: gray;
	font-weight: bold;
}

.cssheader table tr td .sub-menu {
	display: none;
	position: absolute;
}

.cssheader table tr td #menu li {
	position: relative; /*hiển thị gần menu mẹ*/
}

.cssheader table tr td #menu li:hover .sub-menu {
	display: block;
}

.cssheader table tr td .sub-menu li {
	margin-left: 0 !important;
}

.home-tensp a {
	font-size: 15px;
	text-decoration: none;
	font-weight: bold;
	color: gray;
	width: 100px;
}

.home-tensp a:hover {
	color: #ffa5a5;
}

.home-image {
	transition: transform 0.2s;
	border-radius: 15px;
}

.home-image:hover {
	transform: scale(1.15);
}

.home-hottrend {
	border-radius: 15px;
}

.home-hottrend:hover {
	background-color: #fcdada;
}

.head {
	color: grey;
}

.head:hover {
	color: #ffa5a5;
	cursor: pointer;
}

.hangmoive-danhmuc {
	text-decoration: none;
	font-weight: bold;
	font-size: 30px;
	color: black;
}

.hangmoive-danhmuc:hover {
	cursor: pointer;
	color: grey;
}

.button {
	padding: 10px 20px;
	background-color: black;
	color: white;
	transition: transform 0.2s;
}

.button:hover {
	transform: scale(1.15);
	background-color: #ffa5a5;
	cursor: pointer;
}

.content {
	font-family: "#9Slide03 Open Sans";
	text-align: center;
}
</style>
</head>
<body>
	<table>

		<thead class="cssheader">
			<tr>
				<td colspan="2">
					<div class="container">
						<div class="container">
							<div class="besties">
								<a href="/"><img src="/ProjectWeb/Root/MainPage/logobesties.png"
									class="logo" style="width: 20%" /></a>
							</div>
							<div style="margin-top: 2px; padding: 10px">
								<form action="Search.html">
									<input type="Search" id="Search" name="q" placeholder="Search" />
								</form>
							</div>
							<a href="Cart.html"><img src="/ProjectWeb/Root/MainPage/cart.png"
								class="cart" width="10%" /></a>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div id="menu" style="font-family: 'Arial'">
						<ul>
							<li><a href="/">TRANG CHỦ</a></li>
							<li><a href="#" style="text-decoration: none">SẢN PHẨM</a></li>
							<li><a href="#" style="text-decoration: none">CỬA HÀNG</a>
								<ul class="sub-menu" style="z-index: 9999">
									<li><a href="SuaRuaMat.html">UY TÍNH</a></li>
									<li><a href="KemChongNang.html">CHẤT LƯỢNG</a></li>
									<li><a href="KemDuongDa.html">THÁI ĐỘ</a></li>
									<li><a href="KemDuongMat.html">LÀM NÊN THƯƠNG HIỆU</a></li>
								</ul></li>
							<li><a href="Other.html" style="text-decoration: none">KHÁC</a>
							</li>
							<li><a href="#" style="text-decoration: none">CẨM NANG</a>
								<ul class="sub-menu" style="z-index: 9999">
									<li><a href="Review.html">REVIEWS</a></li>
									<li><a href="DoiTra.html">CHÍNH SÁCH ĐỔI TRẢ</a></li>
									<li><a href="ThanhToan.html">CHÍNH SÁCH THANH TOÁN</a></li>
								</ul></li>
							<li><a href="LienHe.html" style="text-decoration: none">LIÊN
									HỆ</a></li>
						</ul>
					</div>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td style="text-align: center">
					<div class="MagicSlideshow"
						data-options="slide-duration:1500;effect:random;"
						style="text-align: justify">
						<img src="/ProjectWeb/Root/SanPhamImage/BABY-G/BA-110BC-1A.png"
							style="width: 100%; cursor: pointer" /> <img
							src="/ProjectWeb/Root/SanPhamImage/EDIFICE/ECB-10PB-1A.png"
							style="width: 100%; cursor: pointer" /> <img
							src="/ProjectWeb/Root/SanPhamImage/G-SHOCK/GWF-A1000-1A2.jpg"
							style="width: 100%; cursor: pointer" />
					</div>
				</td>
			</tr>
			<tr style="background-color: whitesmoke">
				<td colspan="4" style="padding: 20px">
					<p style="font-size: 30px; font-weight: bold; color: #ffa5a5">
						<marquee behavior="alternate" scrollamount="20">SẢN PHẨM
							NỔI BẬT</marquee>
					</p>
				</td>
			</tr>
			<tr>
				<td style="text-align: center">
					<table style="width: 100%">
						<tr>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4539M-7A.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4539M-7A.png'"
										onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4539M-7A.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">SHE-4539M-7A</a>
									</p>
									<br />
									<p style="font-size: 16px">3,219,000đ</p>
									<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=SHE-4539M-7A">Mua
										hàng</a>
								</div>
							</td>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/PROTREK/PRG-600YB-1.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="/ProjectWeb/Root/SanPhamImage/PROTREK/PRG-600YB-1.png'"
										onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/PROTREK/PRG-600YB-1.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">PRG-600YB-1</a>
									</p>
									<br />
									<p style="font-size: 16px">249,000đ</p>
									<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=PRG-600YB-1">Mua
										hàng</a>
								</div>
							</td>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/PROTREK/PRT-B50FE-3.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/PROTREK/PRT-B50FE-3.png'"
										onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/PROTREK/PRT-B50FE-3.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">PRT-B50FE-3</a>
									</p>
									<br />
									<p style="font-size: 16px">87,000đ</p>
									<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=PRT-B50FE-3A">Mua
										hàng</a>
								</div>
							</td>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/PROTREK/PRT-B50FE-3.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/PROTREK/PRT-B50FE-3.png'"
										onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/PROTREK/PRT-B50FE-3.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">PRT-B50FE-3</a>
									</p>
									<br />
									<p style="font-size: 16px">139,000đ</p>
								<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=PRT-B50FE-3">Mua
										hàng</a>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/EDIFICE/ECB-20DB-1A.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="/ProjectWeb/Root/SanPhamImage/EDIFICE/ECB-20DB-1A.png'"
										onmouseout="/ProjectWeb/Root/SanPhamImage/EDIFICE/ECB-20DB-1A.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">ECB-20DB-1A</a>
									</p>
									<br />
									<p style="font-size: 16px">5,838,000đ</p>
								<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=ECB-20DB-1A">Mua
										hàng</a>
								</div>
							</td>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGL-7A.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGL-7A.png'"
										onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGL-7A.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">SHE-4540CGL-7A</a>
									</p>
									<br />
									<p style="font-size: 16px">3,784,000đ</p>
									<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=SHE-4540CGL-7A">Mua
										hàng</a>
								</div>
							</td>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGM-4A.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGM-4A.png'"
										onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGM-4A.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">SHE-4540CGM-4A</a>
									</p>
									<br />
									<p style="font-size: 16px">209,000đ</p>
									<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=SHE-4540CGM-4A">Mua
										hàng</a>
								</div>
							</td>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 300px; height: 380px;"
									class="home-hottrend">
									<a href="#"> <img class="home-image"
										src="/ProjectWeb/Root/SanPhamImage/EDIFICE/EFR-570DB-1AV.png"
										style="width: 190px; border-radius: 15px"
										onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/EDIFICE/EFR-570DB-1AV.png'"
										onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/EDIFICE/EFR-570DB-1AV.png'" />
									</a><br />
									<p class="home-tensp">
										<a href="#">EFR-570DB-1AV</a>
									</p>
									<br />
									<p style="font-size: 16px">3,855,000</p>
									<a class="addtocart" type="button"
										href="/ProjectWeb/CartServlet?action=buy&quantity=1&maSp=EFR-570DB-1AV">Mua
										hàng</a>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="height: 10px"></td>
			</tr>
			<tr>
				<td>
					<div>
						<p>
							<img src="/ProjectWeb/Root/MainPage/watch.png"
								style="width: 1400px; cursor: pointer; text-align: center" />
						</p>
					</div>
				</td>
			</tr>
			<tr style="background-color: whitesmoke">
				<td colspan="4" style="padding: 20px">
					<p style="font-size: 30px; font-weight: bold; color: #ffa5a5">
						<marquee direction="right" behavior="alternate" scrollamount="20">HÀNG
							MỚI VỀ</marquee>
					</p>
				</td>
			</tr>
			<tr style="text-align: center">
				<td style="text-align: center">
					<table>
						<tr>
							<td>
								<div
									style="margin: 10px; padding: 10px; width: 100%; height: 380px;"
									class="home-hottrend">
									<table>
										<tr>
											<td style="padding-top: 27px"><a href="#"> <img
													class="home-image"
													src="/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGL-7A.png"
													style="height: 300px; width: 300px"
													onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGL-7A.png'"
													onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/SHEEN/SHE-4540CGL-7A.png'" />
											</a></td>
											<td class="tdcontent">
												<div>
													<a href="#" class="hangmoive-danhmuc">Đồng hồ</a> <br /> <br />
													<p class="head">SHE-4540CGL-7A</p>
													<br />
													<p class="content">
														<b><i>SHE-4540CGL-7A</i></b> Thiết kế đơn giản, tối thiểu.
														Dây đeo bằng da thật Tinh thể saphia. Khả năng chống nước
														ở độ sâu 50 mét
													</p>
													<form action="#">
														<input type="submit" value="Xem chi tiết" class="button" />
													</form>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 100%; height: 380px;"
									class="home-hottrend">
									<table>
										<tr>
											<td class="tdcontent">
												<div>
													<a href="#" class="hangmoive-danhmuc">Đồng hồ</a> <br /> <br />
													<p class="head">PRW-3510FC-1</p>
													<br />
													<p class="content">
														<b><i>PRW-3510FC-1</i></b> Giới thiệu mẫu bổ sung cho dòng
														PRO TREK PRW-3510. Vật liệu sản xuất chiếc đồng hồ này đã
														được lựa chọn đặc biệt để mang lại hiệu suất ở cấp độ PRO
														TREK. Tinh thể saphia giúp nâng cao độ bền và khả năng đọc
														trong khi dây đeo bằng nhựa composite mang đến sự phù hợp
														hoàn hảo cho cổ tay. Màn hình LCD STN giúp hiển thị thông
														tin sao cho dễ đọc hơn.
													</p>
													<form action="#">
														<input type="submit" value="Xem chi tiết" class="button" />
													</form>
												</div>
											</td>
											<td style="padding-top: 27px"><a href="#"> <img
													class="home-image"
													src="/ProjectWeb/Root/SanPhamImage/PROTREK/PRW-3510FC-1.png"
													style="height: 300px"
													onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/PROTREK/PRW-3510FC-1.png'"
													onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/PROTREK/PRW-3510FC-1.png'" />
											</a></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div
									style="text-align: center; margin: 10px; padding: 10px; width: 100%; height: 380px;"
									class="home-hottrend">
									<table>
										<tr>
											<td style="padding-top: 27px"><a href="#"> <img
													class="home-image"
													src="/ProjectWeb/Root/SanPhamImage/G-SHOCK/GA-110GW-7A.png"
													style="height: 300px"
													onmouseover="this.src='/ProjectWeb/Root/SanPhamImage/G-SHOCK/GA-110GW-7A.png'"
													onmouseout="this.src='/ProjectWeb/Root/SanPhamImage/G-SHOCK/GA-110GW-7A.png'" />
											</a></td>
											<td class="tdcontent">
												<div>
													<a href="#" class="hangmoive-danhmuc">Đồng hồ</a> <br /> <br />
													<p class="head">GA-110GW-7A</p>
													<br />
													<p class="content">
														<b><i>GA-110GW-7A</i></b> Là 1 sản phẩm Đồng hồ G-Shock
														Nhật Bản chuyên chống va đập, chống nước tối thiểu 200m,
														wr20bar. Đặc biệt BẢO HÀNH 5 NĂM TOÀN QUỐC! Bello là đối
														tác chính thức của Casio G-Shock tại Việt Nam từ 2009. Mua
														G-Shock đến Bello! Vỏ và dây đeo trơn của mẫu đồng hồ này
														có lớp phủ màu xám đen cực ngầu giúp các thiết kế thực sự
														tỏa sáng. Đây là lựa chọn hoàn hảo cho thời trang đường
														phố.
													</p>
													<form action="#">
														<input type="submit" value="Xem chi tiết" class="button" />
													</form>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="text-align: center">
					<table>
						<tr>
							<td>
								<div class="MagicSlideshow"
									data-options="selectors: bottom; selectors-style: thumbnails; selectors-size: 50px;">
									<img src="/ProjectWeb/Root/MainPage/card1.png"
										data-thumb-image="/ProjectWeb/Root/MainPage/card1.png" /> <img
										src="/ProjectWeb/Root/MainPage/popular5.png"
										data-thumb-image="/ProjectWeb/Root/MainPage/popular5.png" /> <img
										src="/ProjectWeb/Root/MainPage/popular3.png"
										data-thumb-image="/ProjectWeb/Root/MainPage/popular3.png" /> <img
										src="/ProjectWeb/Root/MainPage/popular1.png"
										data-thumb-image="/ProjectWeb/Root/MainPage/popular1.png"
										style="width: 200%" /> <img src="/ProjectWeb/Root/MainPage/popular2.png"
										data-thumb-image="/ProjectWeb/Root/MainPage/popular2.png" />
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2" style="background-color: #fcdada">
					<table>
						<tr>
							<td class="diva" style="line-height: 40px">
								<p>
									<a href="#" style="text-decoration: none"><strong>THÔNG
											TIN LIÊN HỆ</strong></a>
								</p>
								<div style="margin-left: -20px">
									<p>
										<strong>BESTIES COSMETICS</strong> <br /> Số 1 Võ Văn
										Ngân,Linh Trung,<br /> Thủ Đức, TP HCM
									</p>
									<p>Hotline: 1900 0274</p>
									<p>Email: cskh@besties.vn</p>
								</div>
							</td>
							<td class="diva" style="line-height: 40px">
								<p>
									<a href="#" style="text-decoration: none"><strong>VỀ
											CHÚNG TÔI</strong></a>
								</p>
								<div>
									<p>
										<a href="#">Giới thiệu <strong>Besties.vn</strong></a>
									</p>
									<p>
										<a href="#">Tuyển dụng</a>
									</p>
									<p>
										<a href="#">Chính sách bảo mật</a>
									</p>
									<p>
										<a href="#">Điều khoản sử dụng</a>
									</p>
								</div>
							</td>
							<td class="diva" style="line-height: 40px">
								<p>
									<a href="#" style="text-decoration: none"><strong>CHĂM
											SÓC KHÁCH HÀNG</strong></a>
								</p>
								<div style="margin-left: -40px">
									<p>
										<a href="#">Các câu hỏi thường gặp</a>
									</p>
									<p>
										<a href="#">Hướng dẫn đặt hàng</a>
									</p>
									<p>
										<a href="#">Vận chuyển</a>
									</p>
								</div>
							</td>
							<td style="text-align: end">
								<div>
									<img src="/ProjectWeb/Root/MainPage/fb.png" style="margin-top: 60px" />
									&nbsp;&nbsp; <img src="/ProjectWeb/Root/MainPage/ins.png"
										style="margin-top: 60px" /> &nbsp;&nbsp; <img
										src="/ProjectWeb/Root/MainPage/yt.png" style="margin-top: 60px" />
									&nbsp;&nbsp;
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="4" style="text-align: left">
								<hr />
							</td>
						</tr>
						<tr>
							<td colspan="3" style="text-align: left"><img
								src="/ProjectWeb/Root/MainPage/logobesties.png" style="width: 40%" /></td>
							<td style="text-align: right">Copy right © 2020 Cosmetics.
								All right reserved<br /> <img src="images/bct.png"
								style="width: 30%" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>
