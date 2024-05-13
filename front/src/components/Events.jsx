import React, { Component } from 'react'
import EventBaner from './EventBaner'
import EventCard from './EventCard'
import '../css/Events.css'

export default class Events extends Component {
  render() {
    return (
      <div className='events'>
        <div className="event-baner">
          <EventBaner />
        </div>

        <div className="actual-evens">
          <div className="filter">
            Фильтр
          </div>
          <div className="event-list">
            <EventCard />
            <EventCard />
            <EventCard />
            <EventCard />
          </div>
        </div>
      </div>
    )
  }
}
