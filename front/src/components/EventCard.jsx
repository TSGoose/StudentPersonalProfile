import React, { Component } from 'react'
import '../css/EventCard.css'
import empty from '../images/empty.jpg'
import EventButton from './EventButton'

export default class EventCard extends Component {
    render() {
        return (
            <div className='event-card'>

                <img className="card-img" src={empty} alt="" />
                <h1>Космос - это фантастика</h1>
                <div className="card-discription">
                    <p><i className='bx bx-calendar'></i> 19 апреля 2024</p>
                    <p><i className='bx bxs-time' ></i> 15:30</p>
                    <p><i className='bx bx-navigation'></i> СГТУ 25 корпус</p>
                    <EventButton />
                </div>



            </div>
        )
    }
}
