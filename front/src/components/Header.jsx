import React, { Component } from 'react'
import '../css/Header.css'
import { Link } from 'react-router-dom'

export default class Header extends Component {
    render() {
        return (
            <div className='header'>
                <div className="user-name"><Link to="profile">Иванов И. И.</Link></div>

                <form className="search-box" action="">
                    <input type="text" placeholder='Поиск' />
                    <i className='bx bx-search-alt'></i>
                </form>

                <div className="links">
                    <Link to="/">РАСПИСАНИЕ</Link>
                    <Link to="/events">МЕРОПРИЯТИЯ</Link>
                    <Link to="/messenger">ЧАТ</Link>
                    <Link to="/uspevaemost">УСПЕВАЕМОСТЬ</Link>
                </div>
            </div>
        )
    }
}
