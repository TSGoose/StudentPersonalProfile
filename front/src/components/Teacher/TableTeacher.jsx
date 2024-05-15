import React, { Component } from 'react'
import '../../css/Table.css'

export default class Table extends Component {
  render() {
    return (
      <>
        <h1 className='timetable-big-title'>Расписание</h1>
        <div className='timetable-pos'>
          <div className='timetable-week'>
            <div className='timetable-day'>
                <p>13.05</p>
                <p>Понедел.</p>
            </div>
            <div className='timetable-day'>
                <p>14.05</p>
                <p>Вторник</p>
            </div>
            <div className='timetable-day'>
                <p>15.05</p>
                <p>Среда</p>
            </div>
            <div className='timetable-day'>
                <p>16.05</p>
                <p>Четверг</p>
            </div>
            <div className='timetable-day'>
                <p>17.05</p>
                <p>Пятница</p>
            </div>
            <div className='timetable-day'>
                <p>14.05</p>
                <p>Суббота</p>
            </div>
          </div>
        </div>
        <div className='timetable-tabel'>
          <table className='timetable-border'>
            <tr>
                <td className='timetable-title'>Время</td>
                <td className='timetable-title'>Кабинет</td>
                <td className='timetable-title'>Предмет</td>
                <td className='timetable-title'>Формат</td>
                <td className='timetable-title'>Группа</td>
            </tr>
            <tr>
                <td className='timetable'>8.00-9.30</td>
                <td className='timetable'>5/112</td>
                <td className='timetable'>Технология программирование</td>
                <td className='timetable'>(прак)</td>
                <td className='timetable'>Б1-ИФСТ-11</td>
            </tr>
            <tr>
                <td className='timetable'>9.45-11.15</td>
                <td className='timetable'>5/112</td>
                <td className='timetable'>Технология программирование</td>
                <td className='timetable'>(прак)</td>
                <td className='timetable'>Б1-ИФСТ-11</td>
            </tr>
            <tr>
                <td className='timetable'>11.30-13.0</td>
                <td className='timetable'>СЗ-1</td>
                <td className='timetable'>Информационные технологии</td>
                <td className='timetable'>(прак)</td>
                <td className='timetable'>Гордеев Игорь Николаевич</td>
            </tr>
            <tr>
                <td className='timetable'>13.40-15.10</td>
                <td className='timetable'>1/201</td>
                <td className='timetable'>Технология программирование</td>
                <td className='timetable'>(лекц)</td>
                <td className='timetable'>Б1-ИФСТ-11, Б1-ИФСТ-12, Б1-ИФСТ-13, Б1-ИФСТ-14, Б1-ИФСТ-15</td>
            </tr>

          </table>
        </div>
      </>
      
    )
  }
}
