import React, { Component } from 'react'
import '../../css/Header.css'
import { Link } from 'react-router-dom'

export default class HeaderAdmin extends Component {
    render() {
        return (
            <div className='header'>
                <div className="user-name"><p>Администратор</p></div>

                <form className="search-box" action="">
                    <input type="text" placeholder='Поиск' />
                    <i className='bx bx-search-alt'></i>
                </form>

                <div className="links">
                    <Link to="registration">ЗАРЕГЕСТРИРОВАТЬ</Link>
                    <Link to="create_event">СОЗДАТЬ</Link>
                    <Link to="events">МЕРОПРИЯТИЯ</Link>
                </div>
            </div>
        )
    }
}
