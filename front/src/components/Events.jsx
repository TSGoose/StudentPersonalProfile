import React, { Component } from 'react'
import EventBaner from './EventBaner'
import EventCard from './EventCard'
import '../css/Events.css'

export default class Events extends Component {
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
              <p><input type="checkbox" name="Запланировано" id="" />Запланировано</p>
              <p><input type="checkbox" name="Прошло" id="" />Прошло</p>
            </form>
          </div>

          <div className="event-blok">
            <form className='event-search' action="">
              <input type="text" placeholder='Найти мероприятие' />
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
