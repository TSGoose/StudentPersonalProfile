import React, { Component } from 'react'
import '../css/Profile.css'
import MainInfo from './MainInfo'
import SocialLife from './SocialLife'

import { Route, Routes } from "react-router-dom"


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
                <div className="profil-links">
                    <h1>Профиль</h1>
                    <p><a href="#">Основная ифнормация</a></p>
                    <p><a href="#">Социальные сети</a></p>
                    <p><a href="#">Посещённые мероприятия</a></p>
                    <p><a href="#">Достижения</a></p>
                </div>

                <div className="user-data">
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
                        <Routes>
                            <Route to="/profile" element={<MainInfo />}/>
                            <Route to="/profile/sociallife" element={<MainInfo />}/>

                            
                        </Routes>
            
                        <MainInfo />                        
                    </div>
                </div>
            </div>
        )
    }
}
