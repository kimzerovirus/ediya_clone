<template>
	<div id="wrapper">
		<Swiper :imgUrl="SlideData.banner1" />
	</div>
</template>

<script>
import Swiper from '@/components/Swiper.vue';
import SlideData from '@/data/sliderData';

export default {
	components: { Swiper },
	data() {
		return {
			SlideData,
		};
	},
};
</script>

<style lang="scss" scoped></style>
