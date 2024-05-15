import React, { Component } from 'react'
import '../css/Chat.css'

export default class ChatPersonal extends Component {
  render() {
    return (
      <>
        <div className='chat-pers'>
          <div className="user-icon-chat">
            <p>{this.props.icon}</p>
          </div>
          <h1 className='user-name-chat'>{this.props.name}</h1>
        </div>
        <hr className='line-chat'></hr>
      </>
    )
  }
}
