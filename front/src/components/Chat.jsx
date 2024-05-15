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
              <ChatPersonal icon='Ха' name='Харитонов Лев' />
              <ChatPersonal icon='Гу' name='Гусев Максим' />
              <ChatPersonal icon='Ме' name='Медведев Андрей' />
              <ChatPersonal icon='Юр' name='Юрченко Света' />
              <ChatPersonal icon='Уп' name='Упавший сервер' />
              <ChatPersonal icon='Да' name='Дадашев Заид' />

            </div>
            <div className='chats-text'>
              <div className="chat-head">
                <h1>Иванов Иван</h1>
              </div>
              <div className="chat-input">
                <input type="text" placeholder="Чат-чатик" className='message-chat'></input>
                <button className='chat-button'>GO!</button>
              </div>

            </div>
          </div>
        </div>
      </>
    )
  }
}
