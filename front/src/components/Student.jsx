import React, { Component } from 'react'
import Header from "./Header"
import Profile from "./Profile"
import Table from "./Table"
import Error from "./Error"

import { Route, Routes, Outlet} from "react-router-dom"
import MainInfo from './MainInfo'
import SocialLife from './SocialLife'
import Footer from './Footer'

export default class Student extends Component {
  render() {
    return (
      <>
        <Header />
        <div className="content">
            <Outlet/>
            <Footer />
        </div>

      </>
    )
  }
}
