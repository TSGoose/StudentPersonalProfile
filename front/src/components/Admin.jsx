import React, { Component } from 'react'
import Footer from "./Footer"
import Registrate from './Admin/Registrate'
import Table from "./Table"
import Events from "./Events"
import Error from "./Error"

import { Route, Routes } from "react-router-dom"
import HeaderAdmin from './Admin/HeaderAdmin'
import AddEvent from './Admin/AddEvent'
import RegistrateStudent from './Admin/RegistrateStudent'
import RegistrateTeacher from './Admin/RegistrateTeacher'
import { Outlet } from 'react-router-dom'

export default class Admin extends Component {
  render() {
    return (
        <>
        <HeaderAdmin />      
      <div className="content">
      <Outlet />
      <Footer />
      </div>
      </>
    )
  }
}
