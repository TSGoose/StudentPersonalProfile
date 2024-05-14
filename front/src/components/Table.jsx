import React, { Component } from 'react'
import '../css/Table.css'

export default class Table extends Component {
  render() {
    return (
      <>
        <h1 className='timetable-big-title'>Расписание</h1>
        <div className='timetable-pos'>
          <div className='timetable-week'>
            <div className='timetable-day'>
                <p>14.05</p>
                <p>Вторник</p>
            </div>
            <div className='timetable-day'>
                <p>14.05</p>
                <p>Вторник</p>
            </div>
            <div className='timetable-day'>
                <p>14.05</p>
                <p>Вторник</p>
            </div>
          </div>
        </div>
        <div className='timetable-tabel'>
          <table className='timetable-border'>
            <tr>
                <td className='timetable-title'>Время</td>
                <td className='timetable-title'>Кабинет</td>
                <td className='timetable-title'>Предмет</td>
                <td className='timetable-title'>Преподаватель</td>
            </tr>
            <tr>
                <td className='timetable'>13.40-15.10</td>
                <td className='timetable'>5/112</td>
                <td className='timetable'>Технология программирование</td>
                <td className='timetable'>Файфель Борис Леонидович</td>
            </tr>
          </table>
        </div>
      </>
      
    )
  }
}
