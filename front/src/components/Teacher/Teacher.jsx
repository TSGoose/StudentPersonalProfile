import React, { Component } from 'react'
import Header from "../Header"
import Footer from "../Footer"
import ProfileTeacher from "./ProfileTeacher"
import Table from "../Table"
import Events from "../Events"
import Error from "../Error"

import { Route, Routes, Outlet} from "react-router-dom"

export default class Teacher extends Component {
  render() {
    return (
      <>
        <Header />      
      <div className="content">
        <Outlet />
        <Footer />
      </div>
      </>
    )
  }
}
