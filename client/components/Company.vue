<template>
	<div>
		<h2>{{ company.name }}</h2>
	</div>
</template>


<script>
export default {
	props: {
		company: {
			type: Object,
			required: true
		}
	}
}
</script>
