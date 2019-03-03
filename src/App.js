import React, { Component } from 'react';
import Map from './Containers/Map/Map';
import './App.css';
import TitleBanner from './Containers/UI/TitleBanner';


class App extends Component {
  render() {

    return (      
      <div className="parent-app">
          <TitleBanner />
          <Map />
      </div>
    );
  }
}

export default App;
