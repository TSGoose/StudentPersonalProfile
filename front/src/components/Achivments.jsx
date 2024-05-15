import React, { Component } from 'react'
import '../css/Achievement.css'
import AchievementCard from './AchievementCard'

export default class Achivments extends Component {
  constructor(props) {
    super(props)
  
    this.state = {
       achived: [{
        id: 1,
        title: 'Сломать всЁ!',
        discription: 'Положить сервер 10 раз как Лев'
       },
       {
        id: 2,
        title: 'Всё интересно!',
        discription: 'Посетить 10 разных мероприятий'
       },
       {
        id: 3,
        title: 'Молодой боец',
        discription: 'Перейти на второй курс'
       },
       {
        id: 4,
        title: 'ad',
        discription: 'd'
       }]
    }
    //не получилось использовать стайт для рендера карточек достижений
  }
  
  render() {
    return (
      <>
        <div className='Achievement-big-card'>
            <h1 className='AchievementCard-big-title'>Достижения</h1>
        </div>
        <div className='Achievement-Card-list'>
          {this.state.achived.map((item) => {
            <AchievementCard key={item.id} title={item.title} discription={item.discription}/>
          })}
          <AchievementCard title='Сломать всЁ!' discription='Положить сервер 10 раз как Лев'/>
          <AchievementCard title='Всё интересно!' discription='Посетить 10 разных мероприятий'/>
          <AchievementCard title='Молодой боец' discription='Перейти на второй курс'/>
          <AchievementCard title='Красавчик!' discription='Поучаствовать в хакатоне'/>
        </div>
      </>
    )
  }
}
