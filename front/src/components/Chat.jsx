import React, { Component } from 'react'
import ChatPersonal from "./ChatPersonal"
import '../css/Chat.css'
export default class Chat extends Component {
  render() {
    return (
      <>
        <div className='Content-chat'>
            <div className='Content-chat-bg'>
                <div className='chats'>
                    <ChatPersonal />
                    <ChatPersonal />
                    <ChatPersonal />
                    <ChatPersonal />
                </div>
                <div className='chats-text'>
                    <input type="text" placeholder="Чат-чатик" className='message-chat'></input>
                    <button className='chat-button'>GO!</button>
                </div>
            </div>
        </div>
      </>
    )
  }
}
