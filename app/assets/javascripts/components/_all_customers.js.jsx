var Allcustomer = React.createClass({ 
	getInitialState() { 
		return { customers: [] } 
	}, 
	componentDidMount() { 
		$.getJSON('/api/v1/customers.json', (response) => { this.setState({ customer: response }) }); 
	},
	render() { 
		var customers= this.state.customers.map((customer) => { 
		return ( 
			<div key={customer.id}> 
				<h3>{customer.name}</h3> 
				<p>{customer.bio}</p>
				<p>{customer.deposit}</p>
			</div> 
			) }
		);

	return( 
		<div> {customers} </div> 
	) 
	});