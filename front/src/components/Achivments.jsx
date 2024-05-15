import React, { Component } from 'react'
import '../css/Achievement.css'
import AchievementCard from './AchievementCard'

export default class Achivments extends Component {
  render() {
    return (
      <>
        <div className='Achievement-big-card'>
            <h1 className='AchievementCard-big-title'>Достижения</h1>
        </div>
        <div className='Achievement-Card-list'>
            <AchievementCard />
            <AchievementCard />
            <AchievementCard />
        </div>
      </>
    )
  }
}
