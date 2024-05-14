import React, { Component } from 'react'

export default class AddEvent extends Component {
  render() {
    return (
        <div className='new-user-registration'>
        <h1>РЕГИСТРАЦИЯ ПОЛЬЗОВАТЕЛЯ</h1>
        <div className="reg-form">
            <form className='registration-form' action="">
                <p><input className='data' id='login' type="text" placeholder='Введите логин' /></p>
                <p><input className='data' id='password' type="text" placeholder='Введите пароль' /></p>
                <p className='status-check'><input type="radio" name="person" id="student" />Студент</p>
                <p className='status-check'><input type="radio" name="person" id="tetcher" />Преподователь</p>
                <p className='status-check'><input type="radio" name="person" id="admin" />Администратор</p>



                <button className='next-btn' type='submit'>Далее</button>
            </form>

        
        </div>

    </div>
    )
  }
}
