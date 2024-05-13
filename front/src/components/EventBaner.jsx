import React, { Component } from 'react'
import '../css/EventBaner.css'
import bannerImage from '../images/Banner-image.png'
import EventButton from './EventButton'


export default class EventBaner extends Component {
    render() {
        return (
            <>
                <div className="baner-event-info">
                    <h1>Космос - это фантастика</h1>
                    <div className="baner-discription">
                        <p><i className='bx bx-calendar'></i> 19 апреля 2024</p>
                        <p><i className='bx bxs-time' ></i> 15:30</p>
                        <p><i className='bx bx-navigation'></i> СГТУ 25 корпус</p>
                        <EventButton />
                    </div>
                </div>
                <div className="baner-image">
                    <img id="pupa" src={bannerImage} alt="" />
                </div>

                

            </>
        )
    }
}
