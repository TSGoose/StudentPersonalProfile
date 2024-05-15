import React, { Component } from 'react'
import '../css/Achievement.css'

export default class AchievementCard extends Component {
  render() {
    return (
      <>
      <div className='AchievementCard-relativ'>
        <div className='AchievementCard'>
                <img className="card-img" src="/src/images/empty.jpg" alt=""></img>
                <h1>{this.props.title}</h1>
                <div className="card-achievement">
                    <p>{this.props.discription}</p>
                </div>
                <div className='container'>
                    <div className='progress-bar'>
                        <div className='progress-block left active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block active'></div>
                        <div className='progress-block right active'></div>
                    </div>
                </div>
            </div>
        </div>
      </>
    )
  }
}
