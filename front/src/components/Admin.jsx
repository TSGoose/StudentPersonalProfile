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

export default class Admin extends Component {
  render() {
    return (
        <>
        <HeaderAdmin />      
      <div className="content">
      <Routes>
        <Route path="/registration" element={<RegistrateStudent />}/>
        <Route path="/create_event" element={<AddEvent />}/>
        <Route path="/events" element={<Events />}/>
        <Route path="*" element={<Error />}/>

      </Routes>
        <Footer />
      </div>
      </>
    )
  }
}
