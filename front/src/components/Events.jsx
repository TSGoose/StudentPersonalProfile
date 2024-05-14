import React, { Component } from 'react'
import EventBaner from './EventBaner'
import EventCard from './EventCard'
import EventButton from './EventButton'
import '../css/Events.css'

export default class Events extends Component {
  constructor(props) {
    super(props)
  
    this.state = {
       error: null,
       isLoaded: false,
       events: []
    };
  }
   componentDidMount(){
    fetch("/events")
    .then(res => res.json())
    .then(
      (result) => {
        this.useState({
          isLoaded: true,
          events: result.event
        });
      }
    )
   }

  
  render() {   

    return (

      <div className='events'>
        <div className="event-title">
          <h1>МЕРОПРИЯТИЯ</h1>
        </div>

        <div className="event-baner">
          <EventBaner />
        </div>

        <div className="actual-events">
          
          <div className="filter-list">
            <h1>Фильтр</h1>
            <form className='filter' action="submit">
              <h2>Статус</h2>
              <p><input type="checkbox" name="Запланировано" id="" />Запланировано</p>
              <p><input type="checkbox" name="Прошло" id="" />Прошло</p>

              <h2>Роль</h2>
              <p><input type="checkbox" name="Волонтёр" id="" />Волонтёр</p>
              <p><input type="checkbox" name="Участник" id="" />Участник</p>
              <p><input type="checkbox" name="Зритель" id="" />Зритель</p>

              <h2>Организатор</h2>
              <p><input type="checkbox" name="СГТУ" id="" />СГТУ</p>
              <p><input type="checkbox" name="ИнПИТ" id="" />ИнПИТ</p>
              <p><input type="checkbox" name="ИНЭН" id="" />ИНЭН</p>
              <p><input type="checkbox" name="ИНЭТИП" id="" />ИНЭТИП</p>
              <p><input type="checkbox" name="УрБАС" id="" />УрБАС</p>
              <p><input type="checkbox" name="ФТИ" id="" />ФТИ</p>
              <p><input type="checkbox" name="ИММТ" id="" />ИММТ</p>
              <p><input type="checkbox" name="СЭИ" id="" />СЭИ</p>

              <button className='filter-btn' type='submit'>Подтвердить</button>
            </form>
          </div>

          <div className="event-blok">
            <form className='event-search' action="">
              <input id='event-searcher' type="text" placeholder='Найти мероприятие' />
              <i className='bx bx-search-alt'></i>
            </form>

            <div className="event-list">
            <EventCard />
            <EventCard />
            <EventCard />
            <EventCard />
            <EventCard />
            <EventCard />
            </div>
            
          </div>
        </div>
      </div>
    )
  }
}
