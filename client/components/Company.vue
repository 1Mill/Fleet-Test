<template>
	<div>
		<h2>{{ company.name }}</h2>
		<ul>
			<li
			v-for='customer in company.customers' :key='customer.id'
			>
				{{ customer.name }}
			</li>
		</ul>
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
