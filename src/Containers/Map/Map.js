import React, { Component } from 'react';
import MapGL, { Marker, NavigationControl, Popup } from 'react-map-gl';
import garages from '../Parking Data/ParkingGarages';
import GarageInfo from '../Parking Data/GarageInfo';

const mapbox_token = process.env.REACT_APP_MAPBOX_API;

//set navigation controls
const navStyle = {
    position: 'absolute',
    top: 0,
    left: 0,
    padding: '10px'
};

//set initial viewport parameters
const initViewport = {
    latitude: 35.9656,
    longitude: -83.9198,
    zoom: 14,
    width: window.innerWidth,
    height: window.innerHeight - 1
}

class Map extends Component {
    _isMounted = false;

    constructor(props) {
        super(props);
        this.state = {
            viewport: initViewport,
            popupinfo: null
        };
    }

    componentDidMount() {
        this._isMounted = true;
    }

    componentWillUnmount() {
        this._isMounted = false;
    }

    _updateViewport = (viewport) => {
        this.setState({ viewport })
    };

    //Build markers for parking garages
    _renderMarkers = (point, index) => {
        return (
            <Marker
                key={`marker-${index}`}
                latitude={point.coordinates.latitude}
                longitude={point.coordinates.longitude}
                offsetLeft={-point.coordinates.latitude * .25}
                offsetTop={-point.coordinates.latitude * .75}
            >

                <i
                    className="fas fa fa-map-pin fa-2x parking-pin"
                    onClick={() => this.handleUpdatePopupInfo(point)}
                ></i>
            </Marker>
        )
    }

    //Show popups when markers clicked
    handleUpdatePopupInfo = (popupInfo) => {
        this.setState({
            popupInfo,
        });
    }

    _renderPopup() {
        const { popupInfo } = this.state;

        return popupInfo && (
            <Popup tipSize={5}
                anchor="top"
                latitude={popupInfo.coordinates.latitude}
                longitude={popupInfo.coordinates.longitude}
                closeOnClick={true}
                onClose={() => this.handleUpdatePopupInfo(null)}
            >
                <GarageInfo {...popupInfo} />
            </Popup>
        )
    }

    render() {
        const { viewport } = this.state;
        return (
            <MapGL
                {...viewport}
                mapStyle='mapbox://styles/mapbox/streets-v9'
                mapboxApiAccessToken={mapbox_token}
                onViewportChange={this._updateViewport}
            >

                {garages.map(this._renderMarkers)}

                {this._renderPopup()}


                <div className="nav" style={navStyle}>
                    <NavigationControl onViewportChange={this._updateViewport} />
                </div>
            </MapGL>
        )

    }

}

export default Map;