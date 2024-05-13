import React, { Component } from 'react'

export default class InfoString extends Component {
  render() {
    return (
      <div className="info-string">
        <div className="string-name">
          {this.props.stringName}
        </div>
        <div className="string">
          {this.props.string}
        </div>
      </div>
    )
  }
}
