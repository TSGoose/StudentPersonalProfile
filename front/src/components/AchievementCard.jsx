import React, { Component } from 'react'
import '../css/Achievement.css'

export default class AchievementCard extends Component {
  render() {
    return (
      <>
      <div className='AchievementCard-relativ'>
        <div className='AchievementCard-2'></div>
        <div className='AchievementCard'>
                <img class="card-img" src="/src/images/empty.jpg" alt=""></img>
                <h1>Сломать всЁ</h1>
                <div class="card-achievement">
                    <p> Положить сервер 10 раз как Лев</p>
                </div>
                <div class='container'>
                    <div class='progress-bar'>
                        <div class='progress-block left'></div>
                        <div class='progress-block '></div>
                        <div class='progress-block '></div>
                        <div class='progress-block '></div>
                        <div class='progress-block '></div>
                        <div class='progress-block '></div>
                        <div class='progress-block'></div>
                        <div class='progress-block'></div>
                        <div class='progress-block'></div>
                        <div class='progress-block right'></div>
                    </div>
                </div>
            </div>
        </div>
      </>
    )
  }
}
