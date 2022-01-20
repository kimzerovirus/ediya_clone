<template>
	<div>
		<swiper class="swiper" :options="swiperOption">
			<swiper-slide
				class="swiper-slide"
				v-for="(url, key) in imgUrl"
				:key="key"
			>
				<img :src="require('../assets/img/banner1/' + url)" alt="" />
			</swiper-slide>
			<div class="swiper-pagination" slot="pagination"></div>
			<div class="swiper-button-prev" slot="button-prev"></div>
			<div class="swiper-button-next" slot="button-next"></div>
		</swiper>
	</div>
</template>
<script>
import { Swiper, SwiperSlide } from 'vue-awesome-swiper';
import 'swiper/css/swiper.css';
export default {
	components: {
		Swiper,
		SwiperSlide,
	},
	props: ['imgUrl'],
	data() {
		return {
			swiperOption: {
				loop: true,
				slidesPerView: 1,
				spaceBetween: 0,
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
	margin: 0 auto;
	position: relative;

	.swiper-slide {
		.swiper-slide {
			overflow: hidden;
		}
	}
}
</style>
