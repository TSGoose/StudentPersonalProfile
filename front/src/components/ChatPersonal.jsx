import React, { Component } from 'react'
import '../css/Chat.css'

export default class ChatPersonal extends Component {
  render() {
    return (
      <>
      	
        
        <div className='Chat-pers'>
            <div className='user-icon-chat'><p>ИВ</p></div>
            <div className='user-name-chat'><h1>Иван Иванов</h1></div>
        </div>
        <hr className='line-chat'></hr>
      </>
    )
  }
}
