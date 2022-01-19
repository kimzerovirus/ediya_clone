<template>
	<div class="swiper-container mySwiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide box1">Slide 1</div>
			<div class="swiper-slide box2">Slide 2</div>
			<div class="swiper-slide box3">Slide 3</div>
			<div class="swiper-slide box4">Slide 4</div>
			<div class="swiper-slide box5">Slide 5</div>
		</div>
		<!-- 페이징 버튼  -->
		<div class="swiper-pagination"></div>

		<!-- 좌우 버튼 -->
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
	</div>
</template>
<script>
import Swiper from 'swiper';

export default {
	data() {
		return {
			swiper: null,
		};
	},
	mounted() {
		this.swiper = new Swiper('.mySwiper', {
			direction: 'horizontal', //vertical 슬라이딩 방향
			spaceBetween: 0, //사이간격
			slidesPerView: 1, //하나의 화면당 보일 패널 갯수 //"auto"
			grabCursor: true, //스와이프시 마우스 커서모양 변경
			loop: true, //슬라이딩 순환여부 결정
			autoplay: {
				//자동롤링
				delay: 2500,
				disableOnInteraction: false, //
				//true : 롤링 중에 스와이프되면 롤링 중지
				//false : 롤링 중에 스와이프되더라도 롤링 계속
			},
			//페이징 버튼 옵션
			pagination: {
				el: '.swiper-pagination',
				// type: "fraction",
			},

			//좌우 버튼 옵션
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			mousewheel: true,
			keyboard: {
				enabled: true,
			},
		});
		// this.swiper.autoplay.start();
		console.log(this.swiper);
	},
};
</script>

<style lang="scss" scoped>
.swiper-container {
	width: 600px;
	height: 300px;
	border: 1px solid #000;
	margin: 100px auto;
	position: relative;

	.swiper-wrapper {
		width: 100%;
		height: 100%;

		.swiper-slide {
			width: 100%;
			height: 100%;

			&.box1 {
				background: pink;
			}
			&.box2 {
				background: orange;
			}
			&.box3 {
				background: lightblue;
			}
			&.box4 {
				background: lightgreen;
			}
			&.box5 {
				background: violet;
			}
		}
	}
}
</style>
