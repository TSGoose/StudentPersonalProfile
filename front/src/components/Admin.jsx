import React, { Component } from 'react'
import Footer from "./Footer"
import Registrate from './Admin/Registrate'
import Table from "./Table"
import Events from "./Events"
import Error from "./Error"

import { Route, Routes } from "react-router-dom"
import HeaderAdmin from './Admin/HeaderAdmin'

export default class Admin extends Component {
  render() {
    return (
        <>
        <HeaderAdmin />      
      <div className="content">
      <Routes>
        <Route path="/registration" element={<Registrate />}/>
        <Route path="/wad" element={<Registrate />}/>
        <Route path="/events" element={<Events />}/>
        <Route path="*" element={<Error />}/>

      </Routes>
        <Footer />
      </div>
      </>
    )
  }
}
