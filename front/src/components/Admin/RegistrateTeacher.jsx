import React, { Component } from 'react'
import '../../css/AdminCss/Registrate.css'

export default class RegistrateTeacher extends Component {
    render() {
        return (
            <div className='new-user-registration'>
                <h1>РЕГИСТРАЦИЯ ПРЕПОДАВАТЕЛЯ</h1>
                <div className="reg-form">
                    <form className='registration-form' action="">
                        <p><input className='data' id='SurnameTeacher' type="text" placeholder='Введите фамилию преподавателя' /></p>
                        <p><input className='data' id='NameTeacher' type="text" placeholder='Введите имя преподавателя' /></p>
                        <p><input className='data' id='MiddleNameTeacher' type="text" placeholder='Введите отчество преподавателя' /></p>
                        <p><input className='data' id='InstituteTeacher' type="text" placeholder='Введите институт преподавателя' /></p>
                        <p><input className='data' id='DepartmentTeacher' type="text" placeholder='Введите кафедру преподавателя' /></p>

                        
                    </form>

                
                </div>
                <button className='next-btn' type='submit'>Зарегистрировать</button>

            </div>
        )
    }
}
