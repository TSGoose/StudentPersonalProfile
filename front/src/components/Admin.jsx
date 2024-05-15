import React, { Component } from 'react'
import Footer from "./Footer"

import HeaderAdmin from './Admin/HeaderAdmin'
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
