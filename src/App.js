import React, { Component } from 'react';
import Map from './Containers/Map/Map';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {

    return (      
      <div className="App">
          <Map />
      </div>
    );
  }
}

export default App;
