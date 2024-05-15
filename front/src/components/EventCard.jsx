import React, { Component } from 'react'
import '../css/EventCard.css'
import empty from '../images/empty.jpg'
import EventButton from './EventButton'

export default class EventCard extends Component {
    render() {
        return (
            <div className='event-card'>

                <img className="card-img" src={empty} alt="" />
                <h1>{this.props.title}</h1>
                <div className="card-discription">
                    <p><i className='bx bx-calendar'></i> {this.props.date}</p>
                    <p><i className='bx bxs-time' ></i> {this.props.time}</p>
                    <p><i className='bx bx-navigation'></i> {this.props.place}</p>
                    <EventButton />
                </div>



            </div>
        )
    }
}
