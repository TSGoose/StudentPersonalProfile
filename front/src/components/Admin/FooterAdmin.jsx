import React, { Component } from 'react'
import '../../css/Footer.css'

export default class FooterAdmin extends Component {
  render() {
    return (
        <div className='footer'>
        <div className="main-info">

          <div className="info" >
            <p className='title'><a href="#">На сайт СГТУ</a></p>
            <p className='discription'>Мы в других соцсетях:</p>

            <a href='#' rel="noopener noreferrer"><i className='bx bxl-vk'></i></a>
            <a href='#' rel="noopener noreferrer"><i className='bx bxl-telegram' ></i></a>
            <a href='#' rel="noopener noreferrer"><i className='bx bxl-youtube' ></i></a>
            <a href='#' rel="noopener noreferrer"><i className='bx bxl-ok-ru' ></i></a>

          </div>

          <div className="info">
            <p className='title'>Информация</p>
            <p className='discription'>Здесь должна быть какая-то интересная информация по поводу нашего сайти, но мы ничего не придумали, поэтому просто пожелаем всем добра♥</p>
          </div>

          <div className="info">
            <p className='title'>Оценка каечства</p>
            <p className='discription'>Чтобы оценить условия предоставления услуг перейдите по <a href="#">ссылке</a></p>


          </div>
        </div>

        <div className="more-info">
          <p>Правовая информация</p>
          <p>© 2008 - 2024 СГТУ имени Гагарина Ю.А. </p>
          <p>Все права зищищены</p>
        </div>
      </div>
    )
  }
}
