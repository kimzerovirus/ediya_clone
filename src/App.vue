<template>
	<div id="app">
		<router-view />
	</div>
</template>
<style lang="scss">
* {
	margin: 0;
	padding: 0;
}
ul,
ol,
li {
	list-style: none;
}
a {
	text-decoration: none;
	color: inherit;
}
table {
	border-collapse: collapse;
}

.inner {
	max-width: 1080px;
	width: 90%;
	margin: 0 auto;
}
</style>
