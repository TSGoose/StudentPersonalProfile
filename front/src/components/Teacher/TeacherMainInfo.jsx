import React, { Component } from 'react'
import InfoString from '../InfoString'

export default class MainInfo extends Component {
    render() {
        return (
            <>
                <InfoString stringName={'Статус'} string={'Преподаватель'} />
                <InfoString stringName={'Институт'} string={' Институт прикладных информационных технологий и медиакоммуникаций'} />
                <InfoString stringName={'Кафедра'} string={'Прикладные информационные технологии'} />
                <InfoString stringName={'Телефон'} string={'+7-996-201 74 08'} />
                <InfoString stringName={'Почта'} string={'Realnyy_viskas@mail.ru'} />
            </>
        )
    }
}
