import React, { Component } from 'react'
import Footer from './Footer'
import { Route, Routes } from 'react-router-dom'
import Student from './Student'
import Table from './Table'
import Profile from './Profile'
import MainInfo from './MainInfo'
import SocialLife from './SocialLife'
import Events from './Events'
import Error from './Error'
import '../css/Choose.css'

import Admin from './Admin'
import { Link } from 'react-router-dom'

export default class Choose extends Component {
    render() {
        return (
            <div className='panel'>
                <p><Link to="student/rasp">Студент</Link></p>
                <p><Link to="admin/registration">Админ</Link></p>
                <p><Link to="student">Препод</Link></p>
                
                
            </div>
        )
    }
}
