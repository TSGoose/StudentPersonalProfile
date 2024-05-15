import React, { Component } from 'react'
import '../css/Profile.css'
import MainInfo from './MainInfo'
import SocialLife from './SocialLife'

import { Link, Outlet, Route, Routes,NavLink } from "react-router-dom"


export default class Profile extends Component {
    constructor(props) {
        super(props)

        this.state = {
            user: {
                name: 'Иван',
                surname: 'Иванов',
                patronymic: 'Иванович'
            }
        }
    }


    render() {
        return (
            <div className="profil">

                <div className="user-data">
                    <h2>Профиль</h2>
                    <div className="profil-links">

                        <p><NavLink to="main-info">Основная ифнормация</NavLink></p>
                        <p><NavLink to="social-life">Социальные сети</NavLink></p>
                        <p><NavLink to="completed-events">Посещённые мероприятия</NavLink></p>
                        <p><NavLink to="achivements">Достижения</NavLink></p>
                    </div>

                    <div className="main-data">
                        <div className="user-icon">
                            <p>ИВ</p>
                        </div>
                        <div className="user-full-name">
                            <h1>{this.state.user.surname} {this.state.user.name} {this.state.user.patronymic}</h1>
                            <p>01.01.2004</p>
                        </div>
                    </div>

                    <div className="other-data">
                        <Outlet />
                    </div>
                </div>
            </div>
        )
    }
}
