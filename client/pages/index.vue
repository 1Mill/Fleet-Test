<template>
	<div>
		<h1>Fleet Test</h1>

		<Company
		v-for='company in companies' :key='company.name'
		:company='company'
		/>
	</div>
</template>

<script>
import Company from '~/components/Company'

export default {
	async asyncData ({ app }) {
		const providers = await app.$axios.$get(`/providers`)
		const shippers = await app.$axios.$get(`/shippers`)

		return { companies: providers.concat(shippers) }
	},
	components: {
		Company
	}
}
</script>
