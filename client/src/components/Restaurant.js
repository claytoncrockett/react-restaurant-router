import React from 'react';
import axios from 'axios';

class Restaurant extends React.Component {
  state = { restaurant: {} }

  componentDidMount() {
    axios.get(`/api/restaurants/${this.props.match.params.id}`)
      .then( res => this.setState({ restaurant: res.data }) )
  }

  render() {
    const { restaurant: { name}} = this.state;
    return (
      <div>
        <h1>{name}</h1>
      </div>
    )
  }
}

export default Restaurant;