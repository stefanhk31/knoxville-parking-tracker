import React, { Component } from 'react';

class TitleBanner extends Component {
    render() {
        return (
            <div className="title-banner">
                <h1 className="title-header">Knoxville Parking Tracker</h1>
                <form className="user-login">
                    <div className="form-group">
                    <input type="text" class="form-control" id="username" placeholder="Enter username"></input>
                    </div>
                    <div className="form-group">
                    <input type="text" class="form-control" id="password" placeholder="Enter password"></input>
                    </div>
                    <button type="submit" class="btn btn-success">Login</button>
                </form>
            </div>
            )
    }
    
}

export default TitleBanner;