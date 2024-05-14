import React, { Component } from 'react'
import Header from "./Header"
import Footer from "./Footer"
import Profile from "./Profile"
import Table from "./Table"
import Events from "./Events"
import Error from "./Error"

import { Route, Routes } from "react-router-dom"

export default class Student extends Component {
  render() {
    return (
      <>
        <Header />      
      <div className="content">
      <Routes>
        <Route path="/" element={<Table />}/>
        <Route path="/profile/*" element={<Profile />}/>
        <Route path="/events" element={<Events />}/>
        <Route path="*" element={<Error />}/>

      </Routes>
        <Footer />
      </div>
      </>
    )
  }
}
