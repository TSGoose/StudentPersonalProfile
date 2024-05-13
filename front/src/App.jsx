import Header from "./components/Header"
import Footer from "./components/Footer"
import Profile from "./components/Profile"
import Table from "./components/Table"
import './css/App.css'
import Events from "./components/Events"
import Error from "./components/Error"

import { Route, Routes } from "react-router-dom"

function App() {
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

export default App
