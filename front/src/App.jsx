import './css/App.css'
import Student from "./components/Student"
import Table from './components/Table'
import Profile from './components/Profile'
import MainInfo from './components/MainInfo'
import SocialLife from './components/SocialLife'
import Events from './components/Events'
import Error from './components/Error'

import Admin from './components/Admin'
import Registrate from './components/Admin/Registrate'
import RegistrateStudent from './components/Admin/RegistrateStudent'
import RegistrateTeacher from './components/Admin/RegistrateTeacher'
import AddEvent from './components/Admin/AddEvent'



import { Route, Routes, Outlet } from 'react-router-dom'
import Choose from './components/Choose'


function App() {
  return (
    <>
      <Choose />
      <Routes>
        <Route path='student/*' element={<Student />}>
          <Route path="rasp" element={<Table />} />
          <Route path="profile/" element={<Profile />}>
            <Route path="main-info" element={<MainInfo />} />
            <Route path="social-life" element={<SocialLife />} />
          </Route>
          <Route path="events" element={<Events />} />
          <Route path="*" element={<Error />} />
        </Route>

        <Route path='admin/*' element={<Admin />}>
          <Route path="registration" element={<Registrate />} >
            <Route path="create_event" element={<RegistrateStudent />} />
            <Route path="create_event" element={<RegistrateTeacher />} />

          </Route>
          <Route path="create_event" element={<AddEvent />} />
          <Route path="events" element={<Events />} />
          <Route path="*" element={<Error />} />
        </Route>
      </Routes>


    </>
  )
}

export default App
