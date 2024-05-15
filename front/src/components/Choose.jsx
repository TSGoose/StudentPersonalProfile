import React, { Component } from 'react'
import '../css/Choose.css'

import { Link } from 'react-router-dom'

export default class Choose extends Component {
    render() {
        return (
            <div className='panel'>
                <p><Link to="student/rasp">Студент</Link></p>
                <p><Link to="admin/registration">Админ</Link></p>
                <p><Link to="teacher/rasp">Препод</Link></p>
            </div>
        )
    }
}
