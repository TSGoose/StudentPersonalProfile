import React, { Component } from 'react'
import '../../css/AdminCss/Registrate.css'

export default class RegistrateStudent extends Component {
    render() {
        return (
            <div className='new-user-registration'>
                <h1>РЕГИСТРАЦИЯ СТУДЕНТА</h1>
                <div className="reg-form">
                    <form className='registration-form' action="">
                        <p><input className='data' id='SurnameStudent' type="text" placeholder='Введите фамилию студента' /></p>
                        <p><input className='data' id='NameStudent' type="text" placeholder='Введите имя студента' /></p>
                        <p><input className='data' id='MiddleNameStudent' type="text" placeholder='Введите отчество студента' /></p>
                        <p><input className='data' id='InstituteStudent' type="text" placeholder='Введите институт студента' /></p>
                        <p><input className='data' id='SpecializationStudent' type="text" placeholder='Введите специальность студента' /></p>
                        <p><input className='data' id='GroupStudent' type="text" placeholder='Введите группу студента' /></p>

                        
                    </form>

                
                </div>
                <button className='next-btn' type='submit'>Зарегистрировать</button>

            </div>
        )
    }
}
