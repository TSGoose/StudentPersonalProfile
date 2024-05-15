import React, { Component, useState, useEffect } from 'react'
import EventBaner from './EventBaner'
import EventCard from './EventCard'
import '../css/Events.css'

import { json } from 'react-router-dom'

export default class Events extends Component {
  constructor(props) {
    super(props)

    this.state = {
      events: [
        {
          id: 1,
          title: 'Космом - это фантастика!',
          date: '19 апреля 2024',
          time: '15:30',
          place: 'СГТУ 25 корпус'
        }
      ]
    }
    //не получилось использовать стайт для рендера карточек мероприйтий
  }

  /*const [events, setEvents] = useState([]);

  useEffect(() => {
    fetch('http://localhost:8080/events',{
  }
    )
      .then(response => response.json())
      .then(data => {
        setEvents(data);
      })
      .catch(error => console.error('Error fetching data: ', error));
  }, []);*/


  render() {
    return (

      <div className='events'>
        <div className="event-title">
          <h1>МЕРОПРИЯТИЯ</h1>
        </div>

        <div className="event-baner">
          <EventBaner />
        </div>

        <div className="actual-events">

          <div className="filter-list">
            <h1>Фильтр</h1>
            <form className='filter' action="submit">
              <h2>Статус</h2>
              <p><input type="checkbox" name="Запланировано" id="" />Запланировано</p>
              <p><input type="checkbox" name="Прошло" id="" />Прошло</p>

              <h2>Роль</h2>
              <p><input type="checkbox" name="Волонтёр" id="" />Волонтёр</p>
              <p><input type="checkbox" name="Участник" id="" />Участник</p>
              <p><input type="checkbox" name="Зритель" id="" />Зритель</p>

              <h2>Организатор</h2>
              <p><input type="checkbox" name="СГТУ" id="" />СГТУ</p>
              <p><input type="checkbox" name="ИнПИТ" id="" />ИнПИТ</p>
              <p><input type="checkbox" name="ИНЭН" id="" />ИНЭН</p>
              <p><input type="checkbox" name="ИНЭТИП" id="" />ИНЭТИП</p>
              <p><input type="checkbox" name="УрБАС" id="" />УрБАС</p>
              <p><input type="checkbox" name="ФТИ" id="" />ФТИ</p>
              <p><input type="checkbox" name="ИММТ" id="" />ИММТ</p>
              <p><input type="checkbox" name="СЭИ" id="" />СЭИ</p>

              <button className='filter-btn' type='submit'>Подтвердить</button>
            </form>
          </div>

          <div className="event-blok">
            <form className='event-search' action="">
              <input id='event-searcher' type="text" placeholder='Найти мероприятие' />
              <i className='bx bx-search-alt'></i>
            </form>

            <div className="event-list">
              {this.state.events.map((item) => {
                <EventCard key={item.id} title={item.time} date={item.date} time={item.time} place={item.place} />
              })}

              <EventCard title='Космос - это фантастика!' date='15 апреля' time='15:30' place='СГТУ 25 корпус' />
              <EventCard title='Хакатон Цифра' date='10 апреля' time='15:30' place='СГТУ 5 корпус' />
              <EventCard title='Лекция Тинькофф' date='15 мая' time='15:30' place='СГТУ 25 корпус' />
              <EventCard title='Эстафета' date='20 мая' time='15:30' place='СГТУ стадион' />
              <EventCard title='Ораторский интенсив' date='21 мая' time='14:00' place='СГТУ ЦТС' />
              <EventCard title='Концерт Balance Team' date='24 мая' time='15:30' place='СГТУ ЦТС' />
            </div>

          </div>
        </div>
      </div>
    )
  }
}
