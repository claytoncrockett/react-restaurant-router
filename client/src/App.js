import React, {Fragment} from 'react';
import { Route, Switch } from 'react-router-dom';
import Home from './components/Home';
import Restaurant from './components/Restaurant';
import Restaurants from './components/Restaurants';
import Menu from './components/Menu';
import Menus from './components/Menus';
import RestaurantForm from './components/RestaurantForm'
import MenuForm from './components/MenuForm'
import ItemForm from './components/ItemForm'
import NoMatch from './components/NoMatch';
import NavBar from './components/NavBar'


const App = () => (
  <Fragment>
    <NavBar />
    <Switch>
      <Route exact path="/" component={Home} />
      <Route exact path="/restaurants/:id/menus" component={Menus} />
      <Route exact path="/restaurants/:id/menus/:id" component={Menu} />
      <Route exact path="/restaurants" component={Restaurants} />
      <Route exact path="/restaurants/:id" component={Restaurant} />
      <Route exact path="/restaurant/form" component={RestaurantForm} />
      <Route exact path="/menu/form" component={MenuForm} />
      <Route exact path="/item/form" component={ItemForm} />
      <Route component={NoMatch} />
    </Switch>
  </Fragment>
);

export default App;
