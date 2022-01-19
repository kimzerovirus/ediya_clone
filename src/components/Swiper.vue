<template>
	<swiper class="swiper" :options="swiperOption">
		<swiper-slide class="swiper-slide box1" style="background-color: yellow"
			>Slide 1</swiper-slide
		>
		<swiper-slide class="swiper-slide box2">Slide 2</swiper-slide>
		<swiper-slide class="swiper-slide box3">Slide 3</swiper-slide>
		<swiper-slide class="swiper-slide box4">Slide 4</swiper-slide>
		<swiper-slide class="swiper-slide box5">Slide 5</swiper-slide>
		<div class="swiper-pagination" slot="pagination"></div>
		<div class="swiper-button-prev" slot="button-prev"></div>
		<div class="swiper-button-next" slot="button-next"></div>
	</swiper>
</template>
<script>
import { Swiper, SwiperSlide } from 'vue-awesome-swiper';
import 'swiper/css/swiper.css';
export default {
	components: {
		Swiper,
		SwiperSlide,
	},
	data() {
		return {
			swiperOption: {
				loop: true,
				slidesPerView: 1,
				spaceBetween: 30,
				pagination: { el: '.swiper-pagination', clickable: true },
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				},
				autoplay: {
					delay: 2000,
				},
			},
		};
	},
};
</script>

<style lang="scss" scoped>
.swiper {
	width: 600px;
	height: 300px;
	border: 1px solid #000;
	margin: 100px auto;
	position: relative;

	.swiper-slide {
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
