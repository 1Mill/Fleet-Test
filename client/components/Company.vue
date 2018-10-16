<template>
	<div>
		<h2>{{ company.name }}</h2>
		<h4>Customers</h4>
		<ul>
			<li
			v-for='customer in company.customers' :key='customer.id'
			>
				{{ customer.name }}
			</li>
		</ul>
		<h4>Order Tracking</h4>
		<ul>
			<li
			v-for='tracking in company.trackings' :key='tracking.id'
			>
				Tracking #{{ tracking.id }}: {{ tracking.event_date }} :: {{ tracking.event_type }}
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
