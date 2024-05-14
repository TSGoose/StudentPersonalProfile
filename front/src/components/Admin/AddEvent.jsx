import React, { Component } from 'react'
import '../../css/AdminCss/Registrate.css'

export default class AddEvent extends Component {
    render() {
        return (
            <div className='new-user-registration'>
                <h1>ДОБАВИТЬ МЕРОПРИЯТИЕ</h1>
                <div className="reg-form">
                    <div className="left-form">
                        <div className="add-event-img">
                            <p>Загрузить фото</p>
                        </div>

                        <input className="add-event-discription" type="text" placeholder='Введите описание' />

                    </div>

                    <form className='registration-form' action="">
                        <p><input className='data' id='login' type="text" placeholder='Введите название' /></p>
                        <p><input className='data' id='password' type="text" placeholder='Введите дату' /></p>
                        <p><input className='data' id='password' type="text" placeholder='Введите время' /></p>
                        <p><input className='data' id='password' type="text" placeholder='Введите место' /></p>
                        <p><input className='data' id='password' type="text" placeholder='Введите организатора' /></p>
                        <p><input className='data' id='password' type="text" placeholder='Роль' /></p>


                    </form>

                </div>
                <button className='next-btn' type='submit'>Далее</button>

            </div>
        )
    }
}
