import React, { Component } from 'react'
import InfoString from './InfoString'

export default class SocialLife extends Component {
  render() {
    return (
      <>
        <InfoString stringName={'Вк'} string={'https://m.vk.com/sentinel_of_day'} />
        <InfoString stringName={'Телеграм'} string={'t.me/your_sentinel'} />
        <InfoString stringName={'Одноклассники'} string={'https://ok.ru/profile/534894403074'} />
        <InfoString stringName={'Дискорд'} string={'sentinel0196'} />
        <InfoString stringName={'GitHub'} string={'t.me/your_sentinel'} />
      </>
    )
  }
}
